int main() 
{

  int a=7;
  int b=7;
  while(sum(a,b)>10){
  printf("Soma igual a %u\n",sum(a,b));
  a--;
  b--;
  }
   
  return 0;
  
}

int sum(int a, int b){
  return a+b;
}
