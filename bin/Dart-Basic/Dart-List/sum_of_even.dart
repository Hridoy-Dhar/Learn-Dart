/*Create a function that returns the sum of all even numbers in a list */
int evenNumbers(List<int> num) {
  int sum = 0;
  for (int n in num) {
    if (n % 2 == 0) {
      sum += n;
    }
  }
  return sum;
}

void main() {
  List<int> num = [2, 3, 5, 6, 7, 8, 95, 23, 456];
  print("Even number is: ${evenNumbers(num)}");
}
