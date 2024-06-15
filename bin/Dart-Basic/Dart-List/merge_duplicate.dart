/*Write a function to merge two lists into one without duplicates3.	Write a function to merge two lists into one without duplicates */
List<T> mergeWithoutDuplicates<T>(List<T> list1, List<T> list2) {
  Set<T> uniqueElements = Set<T>();

  uniqueElements.addAll(list1);

  uniqueElements.addAll(list2);

  return uniqueElements.toList();
}

void main() {
  List<int> list1 = [1, 2, 3, 4, 5];
  List<int> list2 = [4, 5, 6, 7, 8];
  List<int> mergedList = mergeWithoutDuplicates(list1, list2);
  print(mergedList);

  List<String> list3 = ['apple', 'banana', 'cherry'];
  List<String> list4 = ['banana', 'date', 'fig'];
  List<String> mergedList2 = mergeWithoutDuplicates(list3, list4);
  print(mergedList2);
}
