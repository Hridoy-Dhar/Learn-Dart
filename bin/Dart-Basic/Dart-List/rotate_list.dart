/*Write a function to rotate a list by k elements */
List<T> rotateList<T>(List<T> list, int k) {
  int length = list.length;
  if (length == 0 || k % length == 0) {
    return list;
  }
  k = k % length;
  List<T> partOne = list.sublist(length - k);
  List<T> partTwo = list.sublist(0, length - k);
  return partOne + partTwo;
}

void main() {
  List<int> numbers = [1, 2, 4, 5, 6];
  print(rotateList(numbers, 2));
}
// 679003Ki 
// 829703289