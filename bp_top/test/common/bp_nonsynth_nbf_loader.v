/**
 *  bp_nonsynth_nbf_loader.v
 *
 */

module bp_nonsynth_nbf_loader

  import bp_common_pkg::*;
  import bp_common_aviary_pkg::*;
  import bp_cce_pkg::*;
  import bp_common_cfg_link_pkg::*;
  import bp_be_pkg::*;
  import bp_be_dcache_pkg::*;
  import bp_me_pkg::*;

 #(parameter bp_params_e bp_params_p = e_bp_inv_cfg
  `declare_bp_proc_params(bp_params_p)
  `declare_bp_io_if_widths(paddr_width_p, dword_width_p, lce_id_width_p)

  ,parameter nbf_filename_p = "prog.nbf"
  ,parameter nbf_opcode_width_p = 8
  ,parameter nbf_addr_width_p = paddr_width_p
  ,parameter nbf_data_width_p = dword_width_p
  
  ,localparam nbf_width_lp = nbf_opcode_width_p + nbf_addr_width_p + nbf_data_width_p
  ,localparam max_nbf_index_lp = 2**20
  ,localparam nbf_index_width_lp = `BSG_SAFE_CLOG2(max_nbf_index_lp)
  )

  (input  clk_i
  ,input  reset_i
  ,output done_o
  
  ,output [cce_io_msg_width_lp-1:0]        io_cmd_o
  ,output                                  io_cmd_v_o
  ,input                                   io_cmd_yumi_i
  
  ,input  [cce_io_msg_width_lp-1:0]        io_resp_i
  ,input                                   io_resp_v_i
  ,output                                  io_resp_ready_o
  );
  
  enum logic [5:0] {
    RESET
    ,BP_RESET_SET
    ,SEND_NBF
    ,FREEZE_CLR
    ,DONE
  } state_n, state_r;
  
  // response network not used
  wire unused_resp = &{io_resp_i, io_resp_v_i};
  assign io_resp_ready_o = 1'b1;

  // bp_nbf packet
  typedef struct packed {
    logic [nbf_opcode_width_p-1:0] opcode;
    logic [nbf_addr_width_p-1:0] addr;
    logic [nbf_data_width_p-1:0] data;
  } bp_nbf_s;

  // bp_cce packet
  `declare_bp_io_if(paddr_width_p, dword_width_p, lce_id_width_p);
  bp_cce_io_msg_s io_cmd;
  logic io_cmd_v_lo;
  logic done_r, done_n;
  
  assign io_cmd_o = io_cmd;
  assign io_cmd_v_o = ((state_r == SEND_NBF) | (state_r == FREEZE_CLR));

  // read nbf file.
  logic [nbf_width_lp-1:0] nbf [max_nbf_index_lp-1:0];
  logic [nbf_index_width_lp-1:0] nbf_index_r, nbf_index_n;
  bp_nbf_s curr_nbf;
  assign curr_nbf = nbf[nbf_index_r];
  
  // assemble cce cmd packet
  always_comb
  begin
    io_cmd.data = (state_r == FREEZE_CLR) ? dword_width_p'(0) : curr_nbf.data;
    io_cmd.payload = '0;
    io_cmd.addr = (state_r == FREEZE_CLR) ? {cfg_dev_gp, cfg_addr_width_p'(bp_cfg_reg_freeze_gp)} : curr_nbf.addr;
    io_cmd.msg_type = e_cce_io_wr;
    
    case (curr_nbf.opcode)
      2: io_cmd.size = e_io_size_4;
      3: io_cmd.size = e_io_size_8;
      default: io_cmd.size = e_io_size_4;
    endcase
  end

  // read nbf file
  initial $readmemh(nbf_filename_p, nbf);

  assign done_o = (state_r == DONE);
  
  
  assign nbf_index_n = nbf_index_r + io_cmd_yumi_i;
   // combinational
  always_comb 
  begin
    unique casez (state_r)
      RESET       : state_n = reset_i ? RESET : SEND_NBF;
      SEND_NBF    : state_n = (curr_nbf.opcode == 8'hFF) ? FREEZE_CLR : SEND_NBF;
      FREEZE_CLR  : state_n = io_cmd_yumi_i ? DONE : FREEZE_CLR;
      DONE        : state_n = DONE;
      default : state_n = RESET;
    endcase
  end
  
  always_ff @(posedge clk_i)
  begin
    if (reset_i)
      begin
        nbf_index_r <= '0;
        state_r <= RESET;
      end
    else 
      begin
        nbf_index_r <= nbf_index_n;
        state_r <= state_n;
      end
  end

endmodule
