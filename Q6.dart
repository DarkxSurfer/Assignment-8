import 'dart:io';

void main() {
  print('Enter a non-negative integer to find its factorial:');
  
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('No input provided.');
    return;
  }

  int number;
  try {
    number = int.parse(input);
  } on FormatException {
    print('Invalid input. Please enter a valid integer.');
    return;
  }

  if (number < 0) {
    print('Negative numbers do not have factorials.');
    return;
  }

  int factorial = 1;
  int currentNumber = number;

  while (currentNumber > 1) {
    factorial *= currentNumber;
    currentNumber--;
  }

  print('The factorial of $number is $factorial.');
}
