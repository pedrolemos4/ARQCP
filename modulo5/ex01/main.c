
union union_u1 {
	char vec[32];
	float a;
	int b;
} u;

struct struct_s1{
	char vec[32];
	float a;
	int b;
} s;


int main()
{
	printf("Size of union: %d\n", sizeof(u));
	printf("Size of struct: %d\n", sizeof(s));
	
	return 0;
}
