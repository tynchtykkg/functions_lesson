import 'dart:io';

void main() {
  print("Enter minutes");
  int min = int.parse(stdin.readLineSync()!);
  print("$min minutes equal to ${minToSec(min)} seconds");
}

int minToSec(int min) {
  return min * 60;
}
