/*Implement a function to partition a list into two lists based on a predicate */
void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  bool isEven(int number) => number % 2 == 0;

  var partitionedLists = partition(numbers, isEven);
  print('Even numbers: ${partitionedLists[0]}');
  print('Odd numbers: ${partitionedLists[1]}');
}

List<List<T>> partition<T>(List<T> list, bool Function(T) predicate) {
  List<T> list1 = [];
  List<T> list2 = [];

  for (T element in list) {
    if (predicate(element)) {
      list1.add(element);
    } else {
      list2.add(element);
    }
  }

  return [list1, list2];
}
