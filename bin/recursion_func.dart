void main() {
  rec(9);
}

void rec(int i) {
  print(i);
  i++;
  if (i < 15) {
    rec(i);
  }
}
