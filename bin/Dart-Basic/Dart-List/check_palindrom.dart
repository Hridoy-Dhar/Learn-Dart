/*Write a function to check if a list is a palindrome */
bool isPalindrome<T>(List<T> list) {
// <T> syntax denotes a generic type parameter. Generics allow you to write flexible and reusable code that can operate on different data types while maintaining type safety. When you define a function or class with a generic type parameter, you can use this parameter as a placeholder for any data type.

  int l = list.length;
  for (int i = 0; i < l ~/ 2; i++) {
    if (list[i] != list[l - i - 1]) {
      return false;
    }
  }
  return true;
}

void main() {
  List<int> listOne = [1, 2, 3, 2, 1];
  List<int> listTwo = [5, 2, 3, 2, 5];
  print(isPalindrome(listOne));
  print(isPalindrome(listTwo));
}
