/*Create a function to invert a map (swap keys and values, handle duplicates). */
Map<V, List<K>> invertMap<K, V>(Map<K, V> original) {
  Map<V, List<K>> inverted = {};

  original.forEach((key, value) {
    if (!inverted.containsKey(value)) {
      inverted[value] = [];
    }
    inverted[value]!.add(key);
  });

  return inverted;
}

void main() {
  var map = {
    'Alice': 85,
    'Bob': 92,
    'Charlie': 85,
    'Dave': 92,
    'Eve': 88,
    'Alve': 80
  };

  var invertedMap = invertMap(map);
  print(invertedMap);
}
