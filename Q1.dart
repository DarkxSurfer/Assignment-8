import 'dart:io';

void main() {
  print('Enter a number:');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('No input provided');
    return;
  }

  int number;
  try {
    number = int.parse(input);
  } catch (e) {
    print('Invalid number');
    return;
  }

  int countDigits(int num) {
    int count = 0;
    int n = num.abs(); 

    do {
      count++;
      n ~/= 10; 
    } while (n != 0);

    return count;
  }

  int digits = countDigits(number);
  print('The number $number has $digits digits.');
}
