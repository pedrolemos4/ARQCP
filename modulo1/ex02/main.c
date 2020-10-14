#include <stdio.h>
#include "copy_vec.h"

int main(){

  int a1[5]={1,2,3,4,5};
  
  int a2[5]={5,4,3,2,1};
  
  copy_vec(a1,a2,3);
  
  return 0;
}
