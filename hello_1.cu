/*
 ============================================================================
 Author        : G. Barlas
 Version       : 1.0
 Last modified : December 2014
 License       : Released under the GNU GPL 3.0
 Description   :
 To build use  : nvcc hello.cu -o hello -arch=sm_20
 ============================================================================
 */
#include <stdio.h>
#include <cuda.h>

__global__ void hello()
{
  int tid = blockIdx.x * blockDim.x + threadIdx.x;
  printf("Hello World by Christopher García (20541)\n");

  if (tid == 1023) {
    printf("Thread 1023, Christopher García (20541)\n");
  }
}

int main()
{
  hello<<<2,1023>>>();
  cudaDeviceReset();
  return 0;
}
