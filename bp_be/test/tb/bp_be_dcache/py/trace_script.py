#!/bin/usr/python

import sys, getopt
from trace_gen import TraceGen

def main(argv):
  filename = ""
  try:
    opts, args = getopt.getopt(argv, "hi:", ["trace_file="])
  except getopt.GetoptError:
    print("trace_script.py -i <input_trace_file_name>")
    sys.exit(2)

  for opt, arg in opts:
    if opt == "-h":
      print("trace_script.pt -i <input_trace_file_name>")
      sys.exit()
    elif opt in ("-i", "--trace_file"):
      filename = arg
  
  tracer = TraceGen(28, 12, 4, 64)
  file = open(filename, "w")

  file.write(tracer.print_header())
  
  file.write(tracer.print_comment("Store to address - 0, 8, 16, 24, 32, 40, 48, 56"))
  for i in range(8, 72, 8):
    file.write(tracer.send_store(8, i-8, 0, i))
    file.write(tracer.nop())
    file.write(tracer.recv_data(0))
  
  file.write(tracer.print_comment("Load from address - 0, 8, 16, 24, 32, 40, 48, 56"))
  for i in range(8, 72, 8):
    file.write(tracer.send_load(True, 8, i-8, 0))
    file.write(tracer.nop())
    file.write(tracer.recv_data(i))

  file.write(tracer.print_comment("Store/Load double word test done\n"))

  file.write(tracer.print_comment("Store byte to address 64"))
  file.write(tracer.send_store(1, 64, 0, 170))
  file.write(tracer.nop())
  file.write(tracer.recv_data(0))
  file.write(tracer.print_comment("Load signed byte from address 64"))
  file.write(tracer.send_load(True, 1, 64, 0))
  file.write(tracer.nop())
  file.write(tracer.recv_data(-86))

  file.write(tracer.print_comment("Load unsigned byte from address 64"))
  file.write(tracer.send_load(False, 1, 64, 0))
  file.write(tracer.nop())
  file.write(tracer.recv_data(170))

  file.write(tracer.print_comment("Store/Load unsigned/signed byte test done\n"))

  file.write(tracer.print_comment("Store halfword to address 128"))
  file.write(tracer.send_store(2, 128, 0, 43690))
  file.write(tracer.nop())
  file.write(tracer.recv_data(0))
  file.write(tracer.print_comment("Load signed halfword from address 128"))
  file.write(tracer.send_load(True, 2, 128, 0))
  file.write(tracer.nop())
  file.write(tracer.recv_data(-21846))

  file.write(tracer.print_comment("Load unsigned halfword from address 128"))
  file.write(tracer.send_load(False, 2, 128, 0))
  file.write(tracer.nop())
  file.write(tracer.recv_data(43690))

  file.write(tracer.print_comment("Store/Load unsigned/signed halfword test done\n"))

  file.write(tracer.print_comment("Store word to address 192"))
  file.write(tracer.send_store(4, 192, 0, 2863311530))
  file.write(tracer.nop())
  file.write(tracer.recv_data(0))
  file.write(tracer.print_comment("Load signed word from address 192"))
  file.write(tracer.send_load(True, 4, 192, 0))
  file.write(tracer.nop())
  file.write(tracer.recv_data(-1431655766))

  file.write(tracer.print_comment("Load unsigned word from address 192"))
  file.write(tracer.send_load(False, 4, 192, 0))
  file.write(tracer.nop())
  file.write(tracer.recv_data(2863311530))

  file.write(tracer.print_comment("Store/Load unsigned/signed word test done\n"))

  file.write(tracer.print_comment("Store to address - 0, 8, 16, 24, 32, 40, 48, 56"))
  for i in range(8, 72, 8):
    temp_ptag = (i-1) >> 3
    file.write(tracer.send_store(8, i-8, temp_ptag, i))
    file.write(tracer.nop())
    file.write(tracer.recv_data(0))

  file.write(tracer.print_comment("Store to same cache index but different physical address"))
  file.write(tracer.send_store(8, 0, 8, 72))
  file.write(tracer.print_comment("Receive zero (to dequeue fifo)"))
  file.write(tracer.recv_data(0))
  file.write(tracer.print_comment("Load from same cache index but new address"))
  file.write(tracer.send_load(True, 8, 0, 8))
  file.write(tracer.nop())
  file.write(tracer.recv_data(72))
  file.write(tracer.print_comment("load from address - 0, 8, 16, 24, 32, 40, 48, 56"))
  file.write(tracer.send_load(True, 8, 0, 0))
  file.write(tracer.nop())
  file.write(tracer.recv_data(8))
  file.write(tracer.nop())
  file.write(tracer.send_load(True, 8, 0, 8))
  file.write(tracer.nop())
  file.write(tracer.recv_data(72))
  file.write(tracer.test_finish())
  file.close()

if __name__ == "__main__":
  main(sys.argv[1:])
