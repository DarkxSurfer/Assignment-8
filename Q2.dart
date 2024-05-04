import 'dart:io';
import 'dart:math';

void main() {
  print('Enter the desired password length:');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('No input provided');
    return;
  }

  int length;
  try {
    length = int.parse(input);
  } catch (e) {
    print('Invalid length');
    return;
  }

  String generatePassword(int length) {
    String letters = 'abcdefghijklmnopqrstuvwxyz';
    String capitals = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    String numbers = '0123456789';
  

    String allChars = letters + capitals + numbers;
    Random random = Random();
    String password = '';

    while (password.length < length) {
      int index = random.nextInt(allChars.length); // Random index
      password += allChars[index]; // Append character at index to the password
    }

    return password;
  }

  String password = generatePassword(length);
  print('Generated Password: $password');
}
