/*Write a function that finds the most frequent element in a list */
T? mostFrequency<T>(List<T> list) {
  if (list.isEmpty) {
    return null;
  }
  Map<T, int> frequencMap = {};
  for (T element in list) {
    if (frequencMap.containsKey(element)) {
      frequencMap[element] = frequencMap[element]! + 1;
    } else {
      frequencMap[element] = 1;
    }
  }
  T? mostFr;
  int maxFr = 0;
  frequencMap.forEach((key, value) {
    if (value > maxFr) {
      maxFr = value;
      mostFr = key;
    }
  });
  return mostFr;
}

void main() {
  List<int> numbers = [1, 3, 5, 3, 4, 56, 6];
  print(mostFrequency(numbers));
}
