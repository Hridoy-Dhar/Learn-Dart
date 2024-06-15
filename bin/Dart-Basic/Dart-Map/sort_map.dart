/*Write a function that sorts a map by its keys */
Map<K, V> sortKey<K extends Comparable, V>(Map<K, V> orginal) {
  var sorted = orginal.entries.toList()..sort((a, b) => a.key.compareTo(b.key));
  var sortedMap = Map<K, V>.fromEntries(sorted);
  return sortedMap;
}

void main() {
  var map = {
    'Charlie': 85,
    'Alice': 92,
    'Eve': 88,
    'Bob': 95,
    'Dave': 90,
  };

  var sortedMap = sortKey(map);
  print(sortedMap);
}
