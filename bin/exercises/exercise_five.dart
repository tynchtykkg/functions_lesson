void main() {
  print(degree(10));
}

int degree(int a) {
  int sum = 1;
  for (int i = 0; i < 4; i++) {
    sum *= a;
  }
  return sum;
}
