#include <iostream>
#include "Line.h"
using namespace std;


Line::Line()
{
	cout << "Line()" << endl;
}

Line::~Line()
{
	cout << "~Line()" << endl;
}

void Line::setA(int x, int y)
{
	m_coorA.setX(x);
	m_coorA.setY(y);
}

void Line::setB(int x, int y)
{
	m_coorB.setX(x);
	m_coorB.setY(y);
}

void Line::printInfo()
{
	cout << "(" << m_coorA.getX() << "," << m_coorA.getY() << ")" << endl;
	cout << "(" << m_coorB.getX() << "," << m_coorB.getY() << ")" << endl;
}
