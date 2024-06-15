/*Write a function to find the intersection of two lists */
List<T> intersection<T>(List<T> list1, List<T> list2) {
  Set<T> set1 = list1.toSet();

  Set<T> intersectionSet = Set<T>();

  for (T element in list2) {
    if (set1.contains(element)) {
      intersectionSet.add(element);
    }
  }

  return intersectionSet.toList();
}

void main() {
  List<int> list1 = [1, 2, 3, 4, 5];
  List<int> list2 = [3, 4, 5, 6, 7];
  List<int> result = intersection(list1, list2);
  print(result);

  List<String> list3 = ['apple', 'banana', 'cherry', 'date'];
  List<String> list4 = ['banana', 'date', 'fig', 'grape'];
  List<String> result2 = intersection(list3, list4);
  print(result2);
}
