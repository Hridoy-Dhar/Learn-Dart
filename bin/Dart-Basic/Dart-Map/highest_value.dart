/*Write a function to find the key with the highest value in a map */
MapEntry<K, V> findKeyWithValue<K, V extends Comparable>(Map<K, V> map) {
  if (map.isEmpty) {
    print("The map is empty");
  }
  return map.entries.reduce((current, next) =>
      current.value.compareTo(next.value) > 0 ? current : next);
}

void main() {
  var scores = {'Alince': 34, 'Bob': 54, 'Charile': 889};
  var result = findKeyWithValue(scores);
  print("Key with the highest value: ${result.key},value: ${result.value}");
}
