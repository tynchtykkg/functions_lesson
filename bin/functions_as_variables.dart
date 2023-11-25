// The basic idea is that a function is also a value that can be passed around to other functions as a parameter. These types of functions are called closures, but there is really no difference between a function and a closure.
// Closures can be saved to variables and used as parameters for other functions.
void main() {
  consumeClosure();
}

typedef NumberGetter = int Function();

int powerOfTwo(NumberGetter getter) {
  return getter() * getter();
}

void consumeClosure() {
  int getFour() => 4;
  final squared = powerOfTwo(getFour);
  print(squared);

  callbackExample(printSomething);
}

void callbackExample(void Function(String value) callback) {
  callback('Hello Callback');
}

void printSomething(String value) {
  print(value);
}
