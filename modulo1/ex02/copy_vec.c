#include <stdio.h>

void copy_vec(int *vec1, int *vec2, int n){
  
  int i;
  
  //Copies the integer of vec1 to vec2
  
  for(i=0; i<n ; i++){
  
    *(vec2 + i) = *(vec1 + i);
  
  }

}
