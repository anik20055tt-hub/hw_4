// Глобальная переменная для подсчета всех вызовов функций
int totalCalls = 0;

void main() {
  // ===== ЗАДАНИЕ 1 =====
  grid();
  grid();
  grid();

  // ===== ЗАДАНИЕ 2 =====
  print(introduceStringNameIntAge("Alex", 25));
  print(introduceStringNameIntAge("John", 19));
  print(introduceStringNameIntAge("Ansar", 20));

  // ===== ЗАДАНИЕ 3 =====
  int sumResult = addNumbersIntAIntB(5, 6);
  print("Sum of 5 and 6 is $sumResult");

  // ===== ЗАДАНИЕ 4 =====
  double result1 = calculateFinalPrice(price: 100);
  print("Final price: \$${result1}");

  double result2 = calculateFinalPrice(price: 100, discount: 10);
  print("Final price: \$${result2}");

  double result3 = calculateFinalPrice(price: 100, discount: 10, tax: 7.5);
  print("Final price: \$${result3}");

  // ===== ФИНАЛ =====
  print("Total function calls: $totalCalls");
}

// ==================================================
// 1. Функция grid()
// ==================================================
void grid() {
  totalCalls++;
  print("Hello, welcome to DART Programming");
}

// ==================================================
// 2. Функция introduceStringNameIntAge()
// ==================================================
String introduceStringNameIntAge(String name, int age) {
  totalCalls++;
  return "My name is $name and I am $age years old.";
}

// ==================================================
// 3. Функция addNumbersIntAIntB()
// ==================================================
int addNumbersIntAIntB(int a, int b) {
  totalCalls++;
  return a + b;
}

// ==================================================
// 4. Функция с именованными параметрами
// price — обязательный
// discount и tax — необязательные
// ==================================================
double calculateFinalPrice({
  required double price,
  double discount = 0,
  double tax = 0,
}) {
  totalCalls++;

  double discounted = price - (price * (discount / 100));
  double finalPrice = discounted + (discounted * (tax / 100));

  return finalPrice;
}
