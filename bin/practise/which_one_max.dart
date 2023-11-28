void main() {
  print(whichNumberIsMax(5, 4));
}

whichNumberIsMax(int a, int b) {
  if (a > b) {
    return "$a is maximum";
  } else if (a < b) {
    return "$b is maximum";
  } else {
    return "They are equal";
  }
}
