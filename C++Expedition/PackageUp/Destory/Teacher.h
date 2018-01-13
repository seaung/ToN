#include<iostream>
#include<string>
using namespace std;


class Teacher
{
	public:
		Teacher(string name="sum", int age=12);
		Teacher(const Teacher &tea);
		~Teacher()
		void setName(string name);
		string getName();
		void setAge(int age);
		int getAget();
	private:
		string m_strName;
		int m_iAge;
};

