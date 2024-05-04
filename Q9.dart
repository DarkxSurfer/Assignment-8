void main() {
  int number = 1; 

  do {
    int square = number * number; 
    print('The square of $number is $square');
    number++;  // Increment the number
  } while (number <= 5);  
}