#include<iostream>
using namespace std;
void fun(const int &a, const int &b);

int main() {
	int x = 3;
	int y = 5;
	int const *p = &x; // const int *p = &x;
	// *p = 5; error;
	x = 5;
	cout << "x == " << x << endl;

	// int *const p = &x;
	// *p = 10;
	// cout << "x == " << x << endl;

	int const *q = &x;
	cout << *q << endl;

	q = &y;
	cout << *q << endl;

	int const &z = x;

	fun(x, y);

	return 0;
}

void fun(const int &a, const int &b) {
	int c;
	c = a + b;
	cout << "c == " << c << endl;
}

