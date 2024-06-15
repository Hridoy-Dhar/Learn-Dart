/*Create a function to remove duplicates from a list */
List<T> removeDuplicate<T>(List<T> list) {
  return list.toSet().toList();
}

void main() {
  List<int> numbers = [3, 555, 666, 4444, 555, 7];
  print('Remove all duplicate: ${removeDuplicate(numbers)}');
}
