#include<iostream>
using namespace std;
inline void fun(int i=1, int j=5, int k=10);
inline void fun(double x, double y);


int main() {
	fun();
	fun(11);
	fun(11, 66);
	fun(11, 55, 22);
	fun(1.1,3.3);
	return 0;
}


void fun(int i, int j, int k) {
	cout << i << j << k << endl;
}

void fun(double x, double y) {
	cout << x << y << endl;
}

