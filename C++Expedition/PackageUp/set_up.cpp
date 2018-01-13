#include<iostream>
#include<string>
using namespace std;


class Student
{
	public:
		Student()
		{
			m_strName = "";
		}

		Student(string _name)
		{
			m_strName = _name;
		}

		Student(const Student &stu){};

		~Student(){};

		void setName();

		string getName();
	private:
		string m_strName;
};

void Student::setName(string _name)
{
	m_strName = _name;
}

string Student::getName()
{
	return m_strName;
}


int main(void)
{
	Student *stu = new Student;

	stu->setName("Seaung");

	cout << stu->getName() << endl;

	delete stu;
	stu = NULL;
	return 0;
}
