function sumOfNPrimes(n) {
  let sum = 0;
  let count = 0;
  let i = 2; 

  while (count < n) {
    if (isPrime(i)) {
      sum += i;
      count++;
    }
    i++;
  }
  return sum;
}