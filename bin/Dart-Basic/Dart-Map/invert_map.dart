/*Write a function that inverts a map, swapping keys and values. Assume all values in the original map are unique.*/
Map<V, K> inverMap<K, V>(Map<K, V> orginal) {
  Map<V, K> invertedMap = {};
  orginal.forEach((key, value) {
    invertedMap[value] = key;
  });
  return invertedMap;
}

void main() {
  Map<String, int> orginal = {'one': 1, 'two': 2, 'three': 3};
  Map<int, String> invertedMap = inverMap(orginal);
  invertedMap.forEach((key, value) {
    print("$key: $value");
  });
}
