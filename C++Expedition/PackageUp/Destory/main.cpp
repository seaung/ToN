#include<iostream>
#include<string>
#include "Teacher.h"
using namespace std;


int main(void)
{
	Teacher t1;
	Teacher *p = new Teacher();

	Teacher t3(t1); // copy struct function;

	del p;
}
