from gpu import thread_idx
from gpu.host import DeviceContext

fn print_kernel():
    print("Threads" , thread_idx.x , thread_idx.y , thread_idx.z)
   




def main(): 
  print("Hello, world!")
  a = 11
  b = 6
  print(a+b)
  cool_list = List(2 ,2 , a , b)
  for x in cool_list:
    var y : String = String(x[])
    print(y)
   
    var ctx = DeviceContext()
    ctx.enqueue_function[print_kernel](grid_dim = 1 , block_dim=4) 

  



