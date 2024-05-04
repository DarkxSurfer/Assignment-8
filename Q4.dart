void main() {
  int sum = 0;
  int currentNumber = 1;

  do {
    if (currentNumber % 2 != 0) {
      sum += currentNumber;
    }
    currentNumber++; 
  } while (currentNumber <= 50); 

  print("The sum of odd numbers from 1 to 50 is: $sum");
}
