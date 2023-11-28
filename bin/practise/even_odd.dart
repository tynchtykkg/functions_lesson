import 'dart:io';

void main() {
  evenOddNumber();
}

void evenOddNumber() {
  print('Enter any  number');
  int number = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  if (number % 2 == 0) {
    print("$number is an even number");
  } else {
    print("$number is an odd number");
  }
  evenOddNumber();
}
