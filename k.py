from pynq import Overlay
import time
overlay=Overlay('/hpme/xlinix/pynq/overlays/adder/design_1.bit')

overlay?

add_ip=overlay.scalar_add
add_ip?

add_ip.register_map

RegisterMap {
a=Register(a=write-only),

b=Register(c=write-only),
c=Register(c=15),
c_ctr;=Register(c_ap_vld=1,RESERVED=0)

add_ip.write(0x10,10)
add_ip.write(0x18,5)
add_ip.read(0x20)

start=time.time()
4+5
end=time.time()
print(end-start)

from pynq import DefaultIP
class AddDriver(DefaultIP):
  def __init__(self,description):
    super()__init__(description=description)

bindto=['xilinx.com:hls:add:1.0']

def add(self,a,b):
  self.write(0x10,a)
  self.write(0x18,b)
  return self.read(0x20)
overlay=Overlay('/home/xilinx//pynq/overlay/adder/design_1.bit')
overlay?

overlay.scalar_add.add(5,20)
