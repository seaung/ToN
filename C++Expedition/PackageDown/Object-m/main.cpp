#include<iostream>
#include "Line.h"
using namespace std;


int main()
{
	Line *p = new Line();
	delete p;
	p = NULL;
	return 0;
}
