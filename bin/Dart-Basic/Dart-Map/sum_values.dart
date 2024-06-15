/*	Write a function that returns the sum of all values in a map */
num sumOfvalue<K>(Map<K, num> map) {
  num sum = 0;
  map.forEach((key, value) {
    sum += value;
  });
  return sum;
}

void main() {
  var map = {'Alice': 54, 'Bob': 55};
  print("Sum of all the value: ${sumOfvalue(map)}");
}
