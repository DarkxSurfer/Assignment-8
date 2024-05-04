import 'dart:io';

void main() {
  print("Please enter a number:");

  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("No input provided.");
    return;
  }

  double number;
  try {
    number = double.parse(input);
  } on FormatException {
    print("Invalid number entered.");
    return;
  }

  if (number > 0) {
    print("$number is positive.");
  } else if (number < 0) {
    print("$number is negative.");
  } else {
    print("The number is zero.");
  }
}
