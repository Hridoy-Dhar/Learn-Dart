/*Create a function that reverses the elements in a list */
List<reverse> reversedList<reverse>(List<reverse> list) {
  int start = 0;
  int end = list.length - 1;
  while (start < end) {
    reverse temp = list[start];
    list[start] = list[end];
    list[end] = temp;
    start++;
    end--;
  }
  return list;
}

void main() {
  List<int> numbers = [1, 2, 4, 5, 6];
  print('Reversed number: ${reversedList(numbers)}');
  List<String> word = ['apple', 'banna', 'cherry'];
  print(reversedList(word));
}
