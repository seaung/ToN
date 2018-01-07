#include<iostream>
using namespace std;

int main() {
	int *p = new int(20); // *p = 20;

	if (NULL == p) {
		return 0;
	}

	cout << *p << endl;
	delete p;
	p = NULL;

	int *q = new int[100];
	
	if (NULL == q) {
		return 0;
	}

	q[0] = 12;
	q[1] = 321;

	cout << q[0] << "," << q[1] << endl;

	delete []q;
	q = NULL;

	return 0;
}
