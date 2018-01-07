#include<iostream>
#include<stdlib.h>
using namespace std;


int main() {
	cout << "enter a number :" << endl;
	int x = 0;
	cin >> x;
	cout << oct << x << endl;
	cout << dec << x << endl;
	cout << hex << x << endl;

	cout << "enter bool value : " << endl;
	bool y = false;
	cin >> y;
	cout << boolalpha << y << endl;
	return 0;
}
