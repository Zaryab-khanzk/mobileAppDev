import 'dart:io';

void main() {
  print("Tell me a number for squaring (int):");
  int number = int.parse(stdin.readLineSync()!);
  showOutput(square(number));

  print("Enter a number to square (double):");
  double number2 = double.parse(stdin.readLineSync()!);
  showOutput(square(number2));
}

dynamic square(var number) {
  return number * number;
}

void showOutput(var msg) {
  print(msg);
}