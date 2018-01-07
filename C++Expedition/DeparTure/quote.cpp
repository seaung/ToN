#include<iostream>
using namespace std;

void fun(int &e, int &f);

typedef struct {
	int x;
	int y;
} Coor;

int main() {
	int a = 10;
	int &b = a;

	b = 20;

	cout << a << endl;

	a = 30;

	cout << b << endl;

	Coor c;
	Coor &c1 = c;
	c1.x = 20;
	c1.y = 30;
	cout << c.x << "," << c.y << endl;

	int d = 3;
	int *p = &d;
	int *&q = p;

	*q = 5;

	cout << d << endl;

	int e = 212;
	int f = 3232;

	cout << e << "," << f << endl;
	fun(e, f);

	cout << e << "," << f << endl;
	return 0;
}


void fun(int &e, int &f) {
	int c = 0;
	c = e;
	e = f;
	f = c;
}

