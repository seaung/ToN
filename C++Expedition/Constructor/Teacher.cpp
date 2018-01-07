#include "Teacher.h"


int main()
{
	Teacher t1;
	Teacher t2("teacher", 22);

	cout << t1.getName() << " " << t1.getAge() << endl;
	cout << t2.getName() << " " << t2.getAge() << endl;
	return 0;
}


void Teacher::setName(string name)
{
	m_strName = name;
}

int Teacher::getName()
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

Teacher::Teacher()
{
	m_strName = "jlin";
	m_iAge = 5;
	cout << "Teacher()" << endl;
}

Teacher::Teacher(string name, int age)
{
	m_strName = name;
	m_iAge = age;
	cout << "Teacher(string name, int age)" << endl;
}

