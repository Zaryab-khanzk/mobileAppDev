import 'dart:io';
void main(){
  calculator();
} 
void calculator() {
  print('Welcome to the simple calculator!');
  print('This calculator can perform addition, subtraction, multiplication, and division.');
  while (true) {
  print('Enter first number :');
  int? firstNumber = int.parse(stdin.readLineSync()!);
  print('Enter second number :'); 
  int? secondNumber = int.parse(stdin.readLineSync()!);
  print(firstNumber + secondNumber);
  print('select required operation :');
  print('addition = A');
  print('subtraction = S'); 
  print('multiplication = M');
  print('division = D');
  String? operation = stdin.readLineSync();
  if (operation == 'A' || operation == 'a') {
    print('Result: ${firstNumber + secondNumber}');
  } else if (operation == 'S'  || operation == 's') {
    print('Result: ${firstNumber - secondNumber}');
  } else if (operation == 'M' || operation == 'm') {
    print('Result: ${firstNumber * secondNumber}');
  } else if (operation == 'D' || operation == 'd') {
    if (secondNumber != 0) {
      print('Result: ${firstNumber / secondNumber}');
    } else {
      print('Error: Division by zero is not allowed.');
    }
  } else {
    print('Invalid operation selected.');
  }
   print('Do you want to continue? Enter any key to continue or 0 to terminate:');
    String? continueChoice = stdin.readLineSync();
    if (continueChoice == '0') {
      print('Program terminated.');
      break;
    }
}
}
