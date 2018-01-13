#include "Teacher.h"


Teacher::Teacher(string name, int age, int m):m_strName(name), m_iAge(age), m_iMax(100)
{
	/*m_strName = name;
	m_iAge = age;*/
	cout << "Teacher(string name, int age, int m)" << endl;
}

void Teacher::setName(string name)
{
	m_strName = name;
}

string Teacher::getName()
{
	return m_strName;
}

void Teacher::setAge(int age)
{
	m_iAge = age;
}

int Teacher::getAge()
{
	return m_iAge;
}

int Teacher::getMax()
{
	return m_iMax;
}
