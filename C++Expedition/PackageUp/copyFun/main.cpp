#include<iostream>
#include<string>
#include "Teacher.h"
using namespace std;


int main()
{
	Teacher t1;
	Teacher t2 = t1;
	Teacher t3(t1);

	return 0;
}
