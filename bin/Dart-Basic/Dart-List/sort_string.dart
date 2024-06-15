/*Implement a function that sorts a list of strings by their lengths */
List<String> sortByLength(List<String> strings) {
  strings.sort((a, b) => a.length.compareTo(b.length));
  return strings;
}

void main() {
  List<String> strings = ['apple', 'banana', 'fig', 'cherry', 'date'];
  List<String> sortString = sortByLength(strings);
  print('Sorts a list of strings is: $sortString');
}
