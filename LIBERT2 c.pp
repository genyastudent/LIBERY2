#include <iostream>

// Integer1. Дано відстань L в сантиметрах.
	//Визначити відповідний
	//йому номер століття, враховуючи, що, наприклад, що початком 20
		//століття був 1901 рік.
using namespace std;
int main() {
	int year;
	//введеня року
	setlocale(LC_ALL, "RU");
	cout << "Введіть рік: ";
	cin >> year;
	//Обчислення століття
	int century = (year % 100 == 0) ? (year / 100) : (year / 100 + 1);
	// Виведення результату
	cout << "Століття: " << century << endl;
	return 0;
}
#include <iostream>
using namespace std;
int main() {
	int number;
	setlocale(LC_ALL, "RU");
	// Ввод трёхзначного числа
	cout<< "Введіть тризначне число: ";
	cin>> number;
	// Перевірка, що введене число дійсно тризначне
	if(number <100 || number > 999) {
		cout << "Помилка: введіть тризначне число!" << endl;
		return 1;
	}
	// Розділення числа на цифри
	int digit1 = number / 100;          // Перша цифра (сотні)
	int digit2 = (number / 10) % 10;    // Друга цифра (десятки)
	int digit3 = number % 10;           // Третя цифра (одиниці)

	// Перевірка, чи всі цифри різні
	if (digit1 != digit2 && digit1 != digit3 && digit2 != digit3) {
		cout << "Всі цифри різні." << endl;
	}
	else {
		cout << "Не всі цифри різні." << endl;
	}

	return 0;
}
// Третья программа: Решение математического выражения
int main() {
    double x;

    // Ввод значения x
    cout << "Введите значение x: ";
    cin >> x;

    // Вычисляем части выражения
    double part1 = cbrt(pow(x, 2)) + sqrt(abs(x));  // cbrt() - кубический корень
    double part2 = log2(pow(sin((abs(x) + 29) * M_PI / 180), 2)); // Перевод в радианы
    double part3 = (M_PI * abs(tan(x))) / 2;

    // Полное выражение
    double y = part1 / part2 + part3;

    // Вывод результата
    cout << "Результат y: " << y << endl;
}

