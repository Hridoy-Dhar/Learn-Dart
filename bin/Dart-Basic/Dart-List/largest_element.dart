/*Implement a function that returns the second largest element in a list */

large? secondLargest<large extends Comparable>(List<large> list) {
  if (list.length < 2) {
    return null;
  }
  List<large> sortedList = List.from(list)..sort((a, b) => b.compareTo(a));
  large largest = sortedList[0];
  for (large element in sortedList) {
    if (element.compareTo(largest) < 0) {
      return element;
    }
  }
  return null;
}

void main() {
  List<int> numbers = [10, 20, 08, 474];
  print(secondLargest(numbers));
}
