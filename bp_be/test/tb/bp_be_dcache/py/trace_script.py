#!/bin/usr/python

import sys
from trace_gen import TraceGen

def main():

  tracer = TraceGen(28, 12, 4, 64)
  filepath = sys.argv[1] + "/" + sys.argv[2] + "/py/"

  # Store/Load double word test
  filename = filepath + "test_sd_ld.tr"
  file = open(filename, "w")

  file.write(tracer.print_header())
  file.write(tracer.print_comment("Store to address - 0, 8, 16, 24, 32, 40, 48, 56"))
  for i in range(8, 72, 8):
    file.write(tracer.send_store(8, i-8, 0, False, i))
  
  for i in range(0, 8, 1):
    file.write(tracer.recv_data(0))
  
  file.write(tracer.print_comment("Load from address - 0, 8, 16, 24, 32, 40, 48, 56"))
  for i in range(8, 72, 8):
    file.write(tracer.send_load(True, 8, i-8, 0, False))
    file.write(tracer.recv_data(i))

  file.write(tracer.print_comment("Store/Load double word test done\n"))
  file.write(tracer.test_finish())

  file.close()

  # Store/Load byte test (signed and unsigned)
  filename = filepath + "test_sb_lb.tr"
  file = open(filename, "w")

  file.write(tracer.print_header())
  file.write(tracer.print_comment("Store byte to address 64"))
  file.write(tracer.send_store(1, 64, 0, False, 170))
  file.write(tracer.recv_data(0))
  file.write(tracer.print_comment("Load signed byte from address 64"))
  file.write(tracer.send_load(True, 1, 64, 0, False))
  file.write(tracer.recv_data(-86))
 
  file.write(tracer.print_comment("Load unsigned byte from address 64"))
  file.write(tracer.send_load(False, 1, 64, 0, False))
  file.write(tracer.recv_data(170))

  file.write(tracer.print_comment("Store/Load unsigned/signed byte test done\n"))
  file.write(tracer.test_finish())

  file.close()

  # Store/Load halfword test (signed and unsigned)
  filename = filepath + "test_sh_lh.tr"
  file = open(filename, "w")

  file.write(tracer.print_header())
  file.write(tracer.print_comment("Store halfword to address 128"))
  file.write(tracer.send_store(2, 128, 0, False, 43690))
  file.write(tracer.recv_data(0))
  file.write(tracer.print_comment("Load signed halfword from address 128"))
  file.write(tracer.send_load(True, 2, 128, 0, False))
  file.write(tracer.recv_data(-21846))

  file.write(tracer.print_comment("Load unsigned halfword from address 128"))
  file.write(tracer.send_load(False, 2, 128, 0, False))
  file.write(tracer.recv_data(43690))

  file.write(tracer.print_comment("Store/Load unsigned/signed halfword test done\n"))
  file.write(tracer.test_finish())

  file.close()

  # Store/Load word test (signed and unsigned)
  filename = filepath + "test_sw_lw.tr"
  file = open(filename, "w")

  file.write(tracer.print_header())
  file.write(tracer.print_comment("Store word to address 192"))
  file.write(tracer.send_store(4, 192, 0, False, 2863311530))
  file.write(tracer.recv_data(0))
  file.write(tracer.print_comment("Load signed word from address 192"))
  file.write(tracer.send_load(True, 4, 192, 0, False))
  file.write(tracer.recv_data(-1431655766))

  file.write(tracer.print_comment("Load unsigned word from address 192"))
  file.write(tracer.send_load(False, 4, 192, 0, False))
  file.write(tracer.recv_data(2863311530))

  file.write(tracer.print_comment("Store/Load unsigned/signed word test done\n"))
  file.write(tracer.test_finish())

  file.close()

  # Store to same index with 9 different ptags (to verify writeback)
  filename = filepath + "test_wb.tr"
  file = open(filename, "w")

  file.write(tracer.print_header())
  file.write(tracer.print_comment("Store to address - 256, 4352, 8448, 12544, 16640, 20736, 24832, 28928"))
  for i in range(8, 72, 8):
    temp_ptag = ((i-1) >> 3)
    file.write(tracer.send_store(8, 256, temp_ptag, False, i))
    file.write(tracer.recv_data(0))

  file.write(tracer.print_comment("Load from the above addresses to verify store."))
  for i in range(8, 72, 8):
    temp_ptag = (i-1) >> 3
    file.write(tracer.send_load(True, 8, 256, temp_ptag, False))
    file.write(tracer.recv_data(i))

  file.write(tracer.print_comment("Store to same cache index but different physical address - address 33024"))
  file.write(tracer.send_store(8, 256, 8, False, 72))
  file.write(tracer.print_comment("Receive zero (to dequeue fifo)"))
  file.write(tracer.recv_data(0))
  file.write(tracer.print_comment("Load from address 33024"))
  file.write(tracer.send_load(True, 8, 256, 8, False))
  file.write(tracer.recv_data(72))
  file.write(tracer.print_comment("Load from address - 256"))
  file.write(tracer.send_load(True, 8, 256, 0, False))
  file.write(tracer.recv_data(8))
  file.write(tracer.print_comment("Load from address 33024"))
  file.write(tracer.send_load(True, 8, 256, 8, False))
  file.write(tracer.recv_data(72))

  file.write(tracer.print_comment("Writeback, Eviction and Replacement successfully tested"))
  file.write(tracer.test_finish())

  file.close()

  # Uncached Store/Load
  filename = filepath + "test_uncached.tr"
  file = open(filename, "w")
  
  file.write(tracer.print_header())
  file.write(tracer.print_comment("Store to address 320 in uncached mode"))
  file.write(tracer.send_store(8, 320, 0, True, 320))
  file.write(tracer.recv_data(0))
  file.write(tracer.print_comment("Load from address 320 in uncached mode"))
  file.write(tracer.send_load(True, 8, 320, 0, True))
  file.write(tracer.recv_data(320))
  file.write(tracer.test_finish())
  file.close()

  # Unaligned accesses
  filename = filepath + "test_unaligned.tr"
  file = open(filename, "w")

  file.write(tracer.print_header())
  file.write(tracer.print_comment("Store byte to address - 7"))
  file.write(tracer.send_store(1, 7, 0, False, 255))
  file.write(tracer.recv_data(0))
  file.write(tracer.print_comment("Store halfword to address - 2"))
  file.write(tracer.send_store(2, 2, 0, False, 1010))
  file.write(tracer.recv_data(0))
  file.write(tracer.print_comment("Load byte from address - 7"))
  file.write(tracer.send_load(False, 1, 7, 0, False))
  file.write(tracer.recv_data(255))
  file.write(tracer.print_comment("Load halfword from address - 2"))
  file.write(tracer.send_load(False, 2, 2, 0, False))
  file.write(tracer.recv_data(1010))
  file.write(tracer.print_comment("Store word to address - 4"))
  file.write(tracer.send_store(4, 4, 0, False, 70000))
  file.write(tracer.recv_data(0))
  file.write(tracer.print_comment("Load word from address - 4"))
  file.write(tracer.send_load(False, 4, 4, 0, False))
  file.write(tracer.recv_data(70000))
  file.write(tracer.print_comment("Store \"byte\" to address - 1"))
  file.write(tracer.send_store(1, 1, 0, False, 256))
  file.write(tracer.recv_data(0))
  file.write(tracer.print_comment("Load byte from address - 1"))
  file.write(tracer.send_load(False, 1, 1, 0, False))
  file.write(tracer.recv_data(0))

  file.write(tracer.test_finish())
  
  file.close()

  # Directed test 1
  filename = filepath + "test_writethrough1.tr"
  file = open(filename, "w")
  
  file.write(tracer.print_header())
  file.write(tracer.print_comment("Store double word to address - 0"))
  file.write(tracer.send_store(8, 0, 0, False, 64))
  file.write(tracer.recv_data(0))
  file.write(tracer.send_store(8, 0, 1, False, 128))
  file.write(tracer.recv_data(0))
  file.write(tracer.send_store(8, 0, 2, False, 256))
  file.write(tracer.recv_data(0))
  file.write(tracer.send_store(8, 64, 3, False, 512))
  file.write(tracer.recv_data(0))
  file.write(tracer.send_store(8, 64, 3, False, 1024))
  file.write(tracer.send_store(8, 0, 1, False, 2048))
  file.write(tracer.send_load(False, 8, 0, 0, False))
  file.write(tracer.recv_data(0))
  file.write(tracer.recv_data(0))
  file.write(tracer.recv_data(64))
  file.write(tracer.send_load(False, 8, 0, 1, False))
  file.write(tracer.recv_data(2048))

  file.write(tracer.test_finish())

  file.close()

  # Directed test 2
  filename = filepath + "test_writethrough2.tr"
  file = open(filename, "w")
  
  file.write(tracer.print_header())
  file.write(tracer.print_comment("Store double word to address - 0"))
  file.write(tracer.send_store(8, 0, 0, False, 64))
  file.write(tracer.recv_data(0))
  file.write(tracer.send_store(8, 0, 1, False, 128))
  file.write(tracer.recv_data(0))
  file.write(tracer.send_store(8, 0, 2, False, 256))
  file.write(tracer.recv_data(0))
  file.write(tracer.send_store(8, 64, 3, False, 512))
  file.write(tracer.recv_data(0))
  file.write(tracer.send_store(8, 64, 3, False, 1024))
  file.write(tracer.send_store(8, 0, 1, False, 2048))
  file.write(tracer.send_load(False, 8, 0, 0, False))
  file.write(tracer.send_load(False, 8, 0, 1, False))
  file.write(tracer.recv_data(0))
  file.write(tracer.recv_data(0))
  file.write(tracer.recv_data(64))
  file.write(tracer.recv_data(2048))

  file.write(tracer.test_finish())

  file.close()

  # Directed test 3
  filename = filepath + "test_writethrough3.tr"
  file = open(filename, "w")
  
  file.write(tracer.print_header())
  file.write(tracer.print_comment("Store double word to address - 0"))
  file.write(tracer.send_store(8, 0, 0, False, 64))
  file.write(tracer.recv_data(0))
  file.write(tracer.send_store(8, 0, 0, False, 128))
  file.write(tracer.send_load(False, 8, 64, 0, False))
  file.write(tracer.send_store(8, 0, 0, False, 256))
  file.write(tracer.send_load(False, 8, 128, 0, False))
  file.write(tracer.send_store(8, 0, 0, False, 512))
  file.write(tracer.send_load(False, 8, 192, 0, False))
  file.write(tracer.send_store(8, 0, 0, False, 1024))
  file.write(tracer.send_load(False, 8, 256, 0, False))

  for i in range(0,8):
    file.write(tracer.recv_data(0))

  file.write(tracer.test_finish())

  file.close() 

if __name__ == "__main__":
  main()
