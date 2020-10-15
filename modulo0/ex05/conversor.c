

int string_to_int(char *str){
	int num;
	int i;
	for (i=0; str[i] != '\0'; i++){
		num = num * 10 + str[i] - '0';
	}
	return num;
}
