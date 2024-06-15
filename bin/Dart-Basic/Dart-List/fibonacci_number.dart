/*Create a function that returns a list of the first n Fibonacci numbers */
import 'dart:io';

List<int> generateFibonacci(int n) {
  if (n < 0) {
    return [];
  }
  List<int> fibonacciList = [0];
  if (n == 1) {
    return fibonacciList;
  }
  fibonacciList.add(1);
  for (int i = 2; i < n; i++) {
    int nextFibonacci = fibonacciList[i - 1] + fibonacciList[i - 2];
    fibonacciList.add(nextFibonacci);
  }
  return fibonacciList;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> fibonacci = generateFibonacci(n);
  print('First $n Fibonacci numbers:$fibonacci');
}
