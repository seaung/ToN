#include <iostream>
#include "Coord.h"
using namespace std;


Coordinate::Coordinate()
{
	cout << "Coordinate()" << endl;
}

Coordinate::~Coordinate()
{
	cout << "~Coordinate()" << endl;
}

void Coordinate::setX(int x)
{
	m_iX = x;
}

int Coordinate::getX()
{
	return m_iX;
}

void Coordinate::setY(int y)
{
	m_iY = y;
}

int Coordinate::getY()
{
	return m_iY;
}

