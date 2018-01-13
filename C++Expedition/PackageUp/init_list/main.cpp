int main(void)
{
	Teacher t1;

	cout << t1.getName() << " " << t1.getAge() << endl;
	Teacher t2("marry", 21, 150);

	cout << t2.getName() << " " << t2.getAge() << " " << t2.getMax() << endl;
	return 0;
}
