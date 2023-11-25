void main() {
  functionPlayground();
}

void functionPlayground() {
  classicalFunctions();
  optionalParameters();
}

void printMyName(String name) {
  print('Hello $name');
}

int add(int a, int b) {
  return a + b;
}

int factorial(int number) {
  if (number <= 1) {
    return 1;
  }
  return number * factorial(number - 1);
}

void classicalFunctions() {
  printMyName("Tynchtyk");
  printMyName("Kaukhar");

  final sum = add(10, 25);
  print(sum);

  print('5 Factorial is ${factorial(5)}');
}

// You can also use optional positional parameters. If you wrap your function’s parameter list in square brackets, then those parameters can be omitted without the compiler throwing errors.
void unnamed([String? name, int? age]) {
  // The question mark after a parameter, such as in String? name, tells the Dart compiler that the parameter itself can be null.
  final actualName = name ??
      'Unknown'; // The double question mark (??) is the null-aware coalescing operator. It is a quick way to check if a value is null and provide a default value if it is. If name contains null, actualName takes the string 'Unknown', otherwise it will take the value of name.
  final actualAge = age ?? 0;
  print('$actualName is $actualAge years old.');
}

// Dart also supports named optional parameters, with curly brackets.
void named({String? greeting, String? name}) {
  final actualGreeting = greeting ?? 'Hello';
  final actualName = name ?? 'Mystery Person';
  print('$actualGreeting, $actualName!');
}

String duplicate(String name, {int times = 1}) {
  final merged = StringBuffer(name);
  for (var i = 1; i < times; i++) {
    merged.write(' $name');
  }
  return merged.toString();
}

void optionalParameters() {
  unnamed('Tynchtyk', 3);
  unnamed();

  named(greeting: 'Greetings and Salutations');
  named(name: 'Sonia');
  named(name: 'Tynchtyk', greeting: 'Salam');

  final multiply = duplicate('Tynchtyk', times: 3);
  print(multiply);
}
