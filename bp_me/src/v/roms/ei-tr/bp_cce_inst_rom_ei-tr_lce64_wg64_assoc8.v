// auto-generated by bsg_ascii_to_rom.py from /home/wysem/blackparrot/pre-alpha-release/bp_me/src/asm/microcode/cce/ei-tr.mem; do not modify
module bp_cce_inst_rom #(parameter width_p=-1, addr_width_p=-1)
(input  [addr_width_p-1:0] addr_i
,output logic [width_p-1:0]      data_o
);
always_comb case(addr_i)
         0: data_o = width_p ' (95'b01000110010000000000000000000000000000000000000000000000000000000000000000000000000000000000000); // 0x232000000000000000000000
         1: data_o = width_p ' (95'b01000110010000000000100000000010000000000000000000000000000000000000000000000000000000000000000); // 0x232004010000000000000000
         2: data_o = width_p ' (95'b00110100001000000000000000000000001100000000000000000000000000000000000000000000000000000000000); // 0x1A1000001800000000000000
         3: data_o = width_p ' (95'b10100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000); // 0x500000000000000000000000
         4: data_o = width_p ' (95'b00000000000100010000000000000000000000000000000000000000000000000000000000000000000000000000000); // 0x000880000000000000000000
         5: data_o = width_p ' (95'b00111100000000000000000000000000000100000000000000000000000000000000000000000000000000000000000); // 0x1E0000000800000000000000
         6: data_o = width_p ' (95'b01000110010000000000000000000010000000000000000000000000000000000000000000000000000000000000000); // 0x232000010000000000000000
         7: data_o = width_p ' (95'b00101000000100000000000000000000100010000000000000000000000000000000000000000000000000000000000); // 0x140800004400000000000000
         8: data_o = width_p ' (95'b00000100000100010000000000000000000000000000000000000000000000000000000000000000000000000000000); // 0x020880000000000000000000
         9: data_o = width_p ' (95'b01000110010000000000100000000010000000000000000000000000000000000000000000000000000000000000000); // 0x232004010000000000000000
        10: data_o = width_p ' (95'b00101000001100000000000000000000001110000000000000000000000000000000000000000000000000000000000); // 0x141800001C00000000000000
        11: data_o = width_p ' (95'b00000100001100010000100000000000000000000000000000000000000000000000000000000000000000000000000); // 0x021884000000000000000000
        12: data_o = width_p ' (95'b01000110010000000001000000000000010000000000000000000000000000000000000000000000000000000000000); // 0x232008002000000000000000
        13: data_o = width_p ' (95'b00101000010100000000000000000000010100000000000000000000000000000000000000000000000000000000000); // 0x142800002800000000000000
        14: data_o = width_p ' (95'b00000100010100010001000000000000000000000000000000000000000000000000000000000000000000000000000); // 0x022888000000000000000000
        15: data_o = width_p ' (95'b10100100000000000000000000000000000000000000000000000000000010101100000000000000000000000000000); // 0x520000000000000560000000
        16: data_o = width_p ' (95'b00111100000000000000000000000000011010000000000000000000000000000000000000000000000000000000000); // 0x1E0000003400000000000000
        17: data_o = width_p ' (95'b01000110010000000000000000000000000000000000000000000000000000000000000000000000000000000000000); // 0x232000000000000000000000
        18: data_o = width_p ' (95'b01000110010000000000100000000010000000000000000000000000000000000000000000000000000000000000000); // 0x232004010000000000000000
        19: data_o = width_p ' (95'b00110100001000000000000000000000111000000000000000000000000000000000000000000000000000000000000); // 0x1A1000007000000000000000
        20: data_o = width_p ' (95'b01000110010000000001000000000000000000000000000000000000000000000000000000000000000000000000000); // 0x232008000000000000000000
        21: data_o = width_p ' (95'b01000110010000000001100000000010000000000000000000000000000000000000000000000000000000000000000); // 0x23200C010000000000000000
        22: data_o = width_p ' (95'b00110100011000100000000000000000110100000000000000000000000000000000000000000000000000000000000); // 0x1A3100006800000000000000
        23: data_o = width_p ' (95'b11100100000000000000000000000000000010000000000000000000000000000000000101000000000000000000000); // 0x720000000400000000A00000
        24: data_o = width_p ' (95'b00000000010100010001000000000000000000000000000000000000000000000000000000000000000000000000000); // 0x002888000000000000000000
        25: data_o = width_p ' (95'b00111100000000000000000000000000101100000000000000000000000000000000000000000000000000000000000); // 0x1E0000005800000000000000
        26: data_o = width_p ' (95'b00000000000100010000000000000000000000000000000000000000000000000000000000000000000000000000000); // 0x000880000000000000000000
        27: data_o = width_p ' (95'b00111100000000000000000000000000100110000000000000000000000000000000000000000000000000000000000); // 0x1E0000004C00000000000000
        28: data_o = width_p ' (95'b01000110010000000000000000000000000000000000000000000000000000000000000000000000000000000000000); // 0x232000000000000000000000
        29: data_o = width_p ' (95'b01000110010000000000100000000010000000000000000000000000000000000000000000000000000000000000000); // 0x232004010000000000000000
        30: data_o = width_p ' (95'b00110100001000000000000000000001000100000000000000000000000000000000000000000000000000000000000); // 0x1A1000008800000000000000
        31: data_o = width_p ' (95'b11100100000000000000000000000000000000000000000000000000000000000000001101000000000000000000000); // 0x720000000000000001A00000
        32: data_o = width_p ' (95'b00000000000100010000000000000000000000000000000000000000000000000000000000000000000000000000000); // 0x000880000000000000000000
        33: data_o = width_p ' (95'b00111100000000000000000000000000111100000000000000000000000000000000000000000000000000000000000); // 0x1E0000007800000000000000
        34: data_o = width_p ' (95'b00101000000100000000000000000001001110000000000000000000000000000000000000000000000000000000000); // 0x140800009C00000000000000
        35: data_o = width_p ' (95'b11100000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000); // 0x700000004000000000000000
        36: data_o = width_p ' (95'b11101000000000000000000000000000001000000000000000000000000000000000000000000000001000000000000); // 0x740000001000000000001000
        37: data_o = width_p ' (95'b00000100000100010000000000000000000000000000000000000000000000000000000000000000000000000000000); // 0x020880000000000000000000
        38: data_o = width_p ' (95'b00111100000000000000000000000001000100000000000000000000000000000000000000000000000000000000000); // 0x1E0000008800000000000000
        39: data_o = width_p ' (95'b00111100000000000000000000000001010000000000000000000000000000000000000000000000000000000000000); // 0x1E000000A000000000000000
        40: data_o = width_p ' (95'b11100000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000); // 0x700000008000000000000000
        41: data_o = width_p ' (95'b00101011000100010000000000000001010110000000000000000000000000000000000000000000000000000000000); // 0x15888000AC00000000000000
        42: data_o = width_p ' (95'b00111100000000000000000000000011101110000000000000000000000000000000000000000000000000000000000); // 0x1E000001DC00000000000000
        43: data_o = width_p ' (95'b11101000000000000000000000000000000000000000000000000000000000000000000000000101000000000000111); // 0x740000000000000000028007
        44: data_o = width_p ' (95'b10000000000000000000000000000000000000000000000000000001000000000000000000000000000000010000000); // 0x400000000000008000000080
        45: data_o = width_p ' (95'b00101001011100010000000000000011101110000000000000000000000000000000000000000000000000000000000); // 0x14B88001DC00000000000000
        46: data_o = width_p ' (95'b10000100000000000000000000000000000000000000000000000001000000000000000000000000000000010000000); // 0x420000000000008000000080
        47: data_o = width_p ' (95'b11000000000000000000000000000000000000000000000000000000000000000000000000000010100011100110000); // 0x600000000000000000014730
        48: data_o = width_p ' (95'b00111100000000000000000000000001100010000000000000000000000000000000000000000000000000000000000); // 0x1E000000C400000000000000
        49: data_o = width_p ' (95'b01000110010000001000000000000000000100000000000000000000000000000000000000000000000000000000000); // 0x232040000800000000000000
        50: data_o = width_p ' (95'b00111100000000000000000000000001100110000000000000000000000000000000000000000000000000000000000); // 0x1E000000CC00000000000000
        51: data_o = width_p ' (95'b00101001101100010000000000000001101010000000000000000000000000000000000000000000000000000000000); // 0x14D88000D400000000000000
        52: data_o = width_p ' (95'b00111100000000000000000000000010001100000000000000000000000000000000000000000000000000000000000); // 0x1E0000011800000000000000
        53: data_o = width_p ' (95'b01000110010000000000000000000000000000000000000000000000000000000000000000000000000000000000000); // 0x232000000000000000000000
        54: data_o = width_p ' (95'b01000110010000000000100000000010000000000000000000000000000000000000000000000000000000000000000); // 0x232004010000000000000000
        55: data_o = width_p ' (95'b01000110010000000001000000000000000000000000000000000000000000000000000000000000000000000000000); // 0x232008000000000000000000
        56: data_o = width_p ' (95'b00110100001000000000000000000010000000000000000000000000000000000000000000000000000000000000000); // 0x1A1000010000000000000000
        57: data_o = width_p ' (95'b00101010101100000000000000000001111100000000000000000000000000000000000000000000000000000000000); // 0x15580000F800000000000000
        58: data_o = width_p ' (95'b00101010011000000000000000000001111100000000000000000000000000000000000000000000000000000000000); // 0x15300000F800000000000000
        59: data_o = width_p ' (95'b00000000010100010001000000000000000000000000000000000000000000000000000000000000000000000000000); // 0x002888000000000000000000
        60: data_o = width_p ' (95'b11100100000000000000000000000000001100000000000000000000000000000000001000100000000000000000000); // 0x720000001800000001100000
        61: data_o = width_p ' (95'b10101000000000000000000000000000000000000000000000000001000001101000000000000000000000000000000); // 0x540000000000008340000000
        62: data_o = width_p ' (95'b00000000000100010000000000000000000000000000000000000000000000000000000000000000000000000000000); // 0x000880000000000000000000
        63: data_o = width_p ' (95'b00111100000000000000000000000001110000000000000000000000000000000000000000000000000000000000000); // 0x1E000000E000000000000000
        64: data_o = width_p ' (95'b00101000010100000000000000000010001010000000000000000000000000000000000000000000000000000000000); // 0x142800011400000000000000
        65: data_o = width_p ' (95'b11100000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000); // 0x700000004000000000000000
        66: data_o = width_p ' (95'b11101000000000000000000000000000001000000000000000000000000000000000000000000000001000000000000); // 0x740000001000000000001000
        67: data_o = width_p ' (95'b00000100010100010001000000000000000000000000000000000000000000000000000000000000000000000000000); // 0x022888000000000000000000
        68: data_o = width_p ' (95'b00111100000000000000000000000010000000000000000000000000000000000000000000000000000000000000000); // 0x1E0000010000000000000000
        69: data_o = width_p ' (95'b00111100000000000000000000000010001100000000000000000000000000000000000000000000000000000000000); // 0x1E0000011800000000000000
        70: data_o = width_p ' (95'b00101001100100010000000000000011101110000000000000000000000000000000000000000000000000000000000); // 0x14C88001DC00000000000000
        71: data_o = width_p ' (95'b00111100000000000000000000000010010000000000000000000000000000000000000000000000000000000000000); // 0x1E0000012000000000000000
        72: data_o = width_p ' (95'b00101001001100010000000000000010010100000000000000000000000000000000000000000000000000000000000); // 0x149880012800000000000000
        73: data_o = width_p ' (95'b00111100000000000000000000000010100110000000000000000000000000000000000000000000000000000000000); // 0x1E0000014C00000000000000
        74: data_o = width_p ' (95'b11100100000000000000000000000000000110000000000000000000000000000001001010110000000000000000000); // 0x720000000C00000009580000
        75: data_o = width_p ' (95'b11100000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000); // 0x700000002000000000000000
        76: data_o = width_p ' (95'b11101000000000000000000000000000001010000000000000000000000000000000000000000000010000000001000); // 0x740000001400000000002008
        77: data_o = width_p ' (95'b10100000000000000000000000000000000010000000000000000001000000000000000000000000000000000000000); // 0x500000000400008000000000
        78: data_o = width_p ' (95'b01000100000000000000000000000000000010000000010010110110000000000000000000000000000000001000000); // 0x2200000004025B0000000040
        79: data_o = width_p ' (95'b11100100000000000000000000000000110000000000000000000000000000000001101101000000000000000000000); // 0x72000000600000000DA00000
        80: data_o = width_p ' (95'b01000100000000000000000000000000000000000000010010110110000000000000000000000000000000001000000); // 0x2200000000025B0000000040
        81: data_o = width_p ' (95'b11100000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000); // 0x700000001000000000000000
        82: data_o = width_p ' (95'b00111100000000000000000000000011010110000000000000000000000000000000000000000000000000000000000); // 0x1E000001AC00000000000000
        83: data_o = width_p ' (95'b00101001000100010000000000000010101010000000000000000000000000000000000000000000000000000000000); // 0x148880015400000000000000
        84: data_o = width_p ' (95'b00111100000000000000000000000011001100000000000000000000000000000000000000000000000000000000000); // 0x1E0000019800000000000000
        85: data_o = width_p ' (95'b10100100000000000000000000000000000000000000000000000001001001010000000000000000000000000000000); // 0x520000000000009280000000
        86: data_o = width_p ' (95'b11100100000000000000000000000000001000000000000000000000000000000001001000110000000000000000000); // 0x720000001000000009180000
        87: data_o = width_p ' (95'b11100100000000000000000000000000000100000000000000000000000000000001011000010000000000000000000); // 0x72000000080000000B080000
        88: data_o = width_p ' (95'b11100100000000000000000000000000000110000000000000000000000000000001011000010000000000000000000); // 0x720000000C0000000B080000
        89: data_o = width_p ' (95'b11100000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000); // 0x700000002000000000000000
        90: data_o = width_p ' (95'b11101000000000000000000000000000001010000000000000000000000000000000000000000000010000000001000); // 0x740000001400000000002008
        91: data_o = width_p ' (95'b00101000111100010000000000000011000110000000000000000000000000000000000000000000000000000000000); // 0x147880018C00000000000000
        92: data_o = width_p ' (95'b10100000000000000000000000000000000010000000000000000001000000000000000000000000000000000000000); // 0x500000000400008000000000
        93: data_o = width_p ' (95'b01000100000000000000000000000000000000000000010010110110000000000000000000000000000000001000000); // 0x2200000000025B0000000040
        94: data_o = width_p ' (95'b11100100000000000000000000000000110000000000000000000000000000000001101101001000000000000000000); // 0x72000000600000000DA40000
        95: data_o = width_p ' (95'b11100000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000); // 0x700000001000000000000000
        96: data_o = width_p ' (95'b11101000000000000000000000000000000010101011000100001000000000000000000000000111100000001010001); // 0x74000000055884000003C051
        97: data_o = width_p ' (95'b10100000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000); // 0x500000000000008000000000
        98: data_o = width_p ' (95'b01000100000000000000000000000000000010000000010010110110000000000000000000000000000100000000000); // 0x2200000004025B0000000800
        99: data_o = width_p ' (95'b11100000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000); // 0x700000004000000000000000
       100: data_o = width_p ' (95'b11101000000000000000000000000000001000000000000000000000000000000000000000000000001000000000000); // 0x740000001000000000001000
       101: data_o = width_p ' (95'b00111100000000000000000000000001010000000000000000000000000000000000000000000000000000000000000); // 0x1E000000A000000000000000
       102: data_o = width_p ' (95'b10100000000000000000000000000000000010000000000000000001000000000000000000000000000000000000000); // 0x500000000400008000000000
       103: data_o = width_p ' (95'b10100100000000000000000000000000000000000000000000000001001001010000000000000000000000000000000); // 0x520000000000009280000000
       104: data_o = width_p ' (95'b11100100000000000000000000000000100000000000000000000000000000000001101101000000000000000000000); // 0x72000000400000000DA00000
       105: data_o = width_p ' (95'b11100000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000); // 0x700000000800000000000000
       106: data_o = width_p ' (95'b00111100000000000000000000000011100000000000000000000000000000000000000000000000000000000000000); // 0x1E000001C000000000000000
       107: data_o = width_p ' (95'b11101000000000000000000000000000000010101011000100001000000000000000000000000111100000001010001); // 0x74000000055884000003C051
       108: data_o = width_p ' (95'b10100000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000); // 0x500000000000008000000000
       109: data_o = width_p ' (95'b00101001010100010000000000000010100110000000000000000000000000000000000000000000000000000000000); // 0x14A880014C00000000000000
       110: data_o = width_p ' (95'b01000100000000000000000000000000000010000000010010110110000000000000000000000000000100000000000); // 0x2200000004025B0000000800
       111: data_o = width_p ' (95'b00111100000000000000000000000001010000000000000000000000000000000000000000000000000000000000000); // 0x1E000000A000000000000000
       112: data_o = width_p ' (95'b11101000000000000000000000000000000101010100101000000000000000000000000000000111010000000000001); // 0x740000000AA500000003A001
       113: data_o = width_p ' (95'b10100000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000); // 0x500000000000008000000000
       114: data_o = width_p ' (95'b11100100000000000000000000000000010000000000000000000000000000000001101101000000000000000000000); // 0x72000000200000000DA00000
       115: data_o = width_p ' (95'b11100100000000000000000000000000001000000000000000000000000000000001001000110000000000000000000); // 0x720000001000000009180000
       116: data_o = width_p ' (95'b11100000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000); // 0x700000004000000000000000
       117: data_o = width_p ' (95'b11101000000000000000000000000000001000000000000000000000000000000000000000000000001000000000000); // 0x740000001000000000001000
       118: data_o = width_p ' (95'b00111100000000000000000000000001010000000000000000000000000000000000000000000000000000000000000); // 0x1E000000A000000000000000
       119: data_o = width_p ' (95'b11011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000); // 0x6E0000000000000000000000
   default: data_o = 'X;
endcase
endmodule
