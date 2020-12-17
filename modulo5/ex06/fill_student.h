#ifndef FILL_STUDENT_H
#define FILL_STUDENT_H

typedef struct 
{
	char age;
	short number;
	int grades[10];
	char name[80];
	char address[120];
} Student;

void fill_student (Student *s, char age, short number, char *name, char *address);
void update_grades (Student *s, int *new_grades);
int locate_greater(Student *s, int minimun, int *greater_grades);

#endif
