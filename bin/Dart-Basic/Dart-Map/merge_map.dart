/*Write a function that takes two maps and returns a new map that contains all key-value pairs from both maps. If a key exists in both maps, the value from the second map should be used.*/
Map<K, V> mergeMaps<K, V>(Map<K, V> map1, Map<K, V> map2) {
  Map<K, V> mergedMap = Map.from(map1);

  // Iterate through the second map and add/update entries in the merged map
  map2.forEach((key, value) {
    mergedMap[key] = value;
  });

  return mergedMap;
}

void main() {
  Map<String, int> map1 = {'a': 1, 'b': 2, 'c': 3};

  Map<String, int> map2 = {'b': 20, 'c': 30, 'd': 40};

  Map<String, int> mergedMap = mergeMaps(map1, map2);

  mergedMap.forEach((key, value) {
    print('$key: $value');
  });
}
