void main() {
  print(numberToDegree(number: 5, degree: 5));
}

int numberToDegree({required int number, required int degree}) {
  int sum = 1;
  for (int i = 0; i < degree; i++) {
    sum *= number;
  }
  return sum;
}
