/*Create a function that swaps the keys and values in a given map */
void main() {
  Map<String, int> originalMap = {'one': 1, 'two': 2, 'three': 3};
  Map<int, String> swappedMap = swapKeysAndValues(originalMap);
  print('Swapped map: $swappedMap');
}

Map<V, K> swapKeysAndValues<K, V>(Map<K, V> originalMap) {
  Map<V, K> swappedMap = {};

  originalMap.forEach((key, value) {
    swappedMap[value] = key;
  });

  return swappedMap;
}
