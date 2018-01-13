#include<iostream>
#include "coord.h"
using namespace std;


int main()
{
	Coord coor[3];
	coor[0].m_iX = 3;
	coor[0].m_iY = 15;

	Coord *p = new Coord[3];

	p->m_iX = 7;
	p[0].m_iY = 9;

	p++; // p = p + 1 p += 1

	p->m_iX = 11;
	p[0].m_iY = 14;

	p[1].m_iX = 12;
	p++;
	p->m_iY = 15;

	for(int i = 0; i < 3; i++)
	{
		cout << "coord x" << coor[i].m_iX << endl;
		cout << "coord y" << coor[i].m_iY << endl;
	}

	for(int j = 0; j < 3; j++)
	{
		cout << "p - x" << p->m_iX << endl;
		cout << "p - y" << p->m_iY << endl;
		p--;
	}

	p++;
	delete []p;
	p = NULL;
}
