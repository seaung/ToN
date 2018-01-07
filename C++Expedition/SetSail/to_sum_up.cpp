#include<iostream>
using namespace std;

namespace CompA {

int getMaxOrMin(int *arr, int count, bool isMax) {
	int temp = arr[0];

	for (int i = 1; i < count; i++) {
		if (isMax) {
			if (temp < arr[i]) {
				temp = arr[i];
			}
		} else {
			if (temp > arr[i]) {
				temp = arr[i];
			}
		}
	}

	return temp;
}

}


int main() {

	int arr1[5] = {1, 4, 6, 8, 9};
	bool isMax = false;

	cin >> isMax;

	cout << CompA::getMaxOrMin(arr1, 5, isMax) << endl;

	return 0;
}
