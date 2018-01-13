#include<iostream>
#include<string>
using namespace std;


class Teacher
{
	public:
		Teacher(string name="Java", int age=15);
		void setName(string name);
		string getName();
		void setAge(int age);
		int getAge();
	private:
		string m_strName;
		int m_iAge;
};

