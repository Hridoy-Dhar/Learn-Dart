/*Write a function to find the index of a given element in a list. */
int findIndex<index>(List<index> numbers, index element) {
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == element) {
      return i;
    }
  }
  return -1;
}

void main() {
  List<int> numbers = [203, 5006, 3477];
  print('Index of the number is: ${findIndex(numbers, 5006)}');
}
