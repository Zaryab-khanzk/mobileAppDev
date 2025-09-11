import 'dart:io';
int add(int a, int b)=> a+b;
int subtract(int a, int b)=> a-b;
int multiply(int a, int b)=> a*b; 

void main(){
  print("Enter first number:");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter second number:");  
  int b = int.parse(stdin.readLineSync()!);
  print("The sum is ${add(a, b)}");
  print("The difference is ${subtract(a, b)}");
  print("The product is ${multiply(a, b)}");
}
