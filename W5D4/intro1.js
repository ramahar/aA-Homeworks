function madLib(verb, adjective, noun) {
  return 'We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.'
}

function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}

function fizzBuzz(array) {
  let result = [];
  let i = 0;
  if (array[i] % 3 === 0) || (array[i] % 5 === 0) {
    result.push(array[i]);
  }
  i++;
  return result;
}

function isPrime(number) {
  for (let i = 2; i < number; i++) {
    if (number % i === 0) {
      return false; 
    }
  }
  return true;
}

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

