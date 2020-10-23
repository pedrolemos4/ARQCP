#include <stdio.h>
#include "where_exists.h"

int main(){

	char* str1 = "xrt";
	char* str2 = "aarrxrt xrt xrt xrt";
	where_exists(str1,str2);

	return 0;

}
