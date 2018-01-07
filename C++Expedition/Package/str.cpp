#include<iostream>
#include<string>
using namespace std;


int main(void) {
	string name;
	cout << "please input your name: " << endl;
	getline(cin, name);

	if (name.empty()) {
		cout << "input is null." << endl;
		return 0;
	}

	if (name == "imooc") {
		cout << "your are a administrator " << endl;
	}

	cout << "hell " + name << endl;
	cout << "Your name lenght : " << name.size() << endl;
	cout << "your name first letter is : " << name[0] << endl;
	return 0;
}
