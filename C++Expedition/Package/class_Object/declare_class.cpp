#include<iostream>
using namespace std;


class Coord {
	public:
		int x;
		int y;

		void printx() {
			cout << x << endl;
		}

		void printy() {
			cout << y << endl;
		}
};


int main() {
	Coord coor;
	coor.x = 20;
	coor.y = 30;
	coor.printx();
	coor.printy(); // instance class from stack

	Coord *p = new Coord();
	if (NULL == p) {
		return 0;
	}

	p->x = 23;
	p->y = 33;
	p->printx();
	p->printy();
	delete p;
	p = NULL;
	return 0;
}
