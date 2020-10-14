#include <stdio.h>

int main() {
printf ("O char type %u chars\n", sizeof(char));	
printf ("O int type ocupa o mesmo espaço que %u chars\n", sizeof(int));
printf ("O unsigned int ocupa mesmo espaço que %u chars\n", sizeof(unsigned int));
printf ("O long type ocupa o mesmo espaço que %u chars\n", sizeof(long));
printf ("O short type ocupa o mesmo espaço que %u chars\n", sizeof(short));
printf ("O long long type ocupa o mesmo espaço que %u chars\n", sizeof(long long));
printf ("O float type ocupa o mesmo espaço que %u chars\n", sizeof(float));
printf ("O double type ocupa o mesmo espaço que %u chars\n", sizeof(double));
return 0;
}
