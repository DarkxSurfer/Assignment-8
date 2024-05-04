void main() {
  const int countPrimes = 10;
  List<int> primes = []; 
  int number = 2; 
  while (primes.length < countPrimes) {
    if (isPrime(number)) {
      primes.add(number);
    }
    number++;
  }

  print('The first 10 prime numbers are: ${primes.join(", ")}');
}


bool isPrime(int num) {
  if (num <= 1) return false;
  if (num <= 3) return true; 

  if (num % 2 == 0 || num % 3 == 0) return false; 

 
  for (int i = 5; i * i <= num; i += 6) {
    if (num % i == 0 || num % (i + 2) == 0) return false;
  }

  return true; 
}
