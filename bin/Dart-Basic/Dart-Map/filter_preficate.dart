/*Create a function to filter a map based on a predicate */
Map<K, V> filterMap<K, V>(
    Map<K, V> original, bool Function(K key, V value) predicate) {
  Map<K, V> filteredMap = {};

  original.forEach((key, value) {
    if (predicate(key, value)) {
      filteredMap[key] = value;
    }
  });

  return filteredMap;
}

void main() {
  var map = {
    'Alice': 85,
    'Bob': 92,
    'Charlie': 88,
    'Dave': 90,
    'Eve': 76,
  };

  var filteredMap = filterMap(map, (key, value) => value > 85);
  print(filteredMap);
}
