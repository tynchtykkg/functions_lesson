void main() {
  print(returnZero());
  print(returnZero() + 10);
  int a = returnZero();
  print(a);
  print(returnString());
  printSomething("Tynchtyk");
  printSomething("Estebes uulu");
  printSomething("Bishkek");
  printSomething("Kyrgyzstan");
  print(returnSum(10, 20));
  print(returnResult(10, 15, 20)); // мы должны соблюдать порядок
  print(
      returnCalculation(a: 15, c: 20, b: 25)); // мы можем не соблюдать порядок
}

int returnZero() {
  return 0;
}

String returnString() {
  return "Hello";
}

void printSomething(String something) {
  print(something);
}

int returnSum(int a, int b) {
  return a + b;
}

int returnResult(int a, int b, int c) {
  return a + b + c;
}

int returnCalculation({required int a, required int b, required int c}) {
  return a + b - c;
}
