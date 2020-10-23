#include <stdio.h>

void frequencies(float *grades, int n, int *freq){

    int grade,i,j;
    float *temp;
    
    for (i = 0; i < 21; i++){
        *(freq + i)=0;
    }
    
    for (i = 0; i < 21; i++){    
        temp = grades;
        
        for (j= 0; j < n; j++){    
            grade = (int) *temp;
           
            if ( i==grade )  {
                *freq = *freq +1;
            }
            temp++;    
        }
        freq++;
    }

}
