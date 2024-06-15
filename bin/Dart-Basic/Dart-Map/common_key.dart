/*Implement a function to find the common keys between two maps */
Set<K> findCommonKeys<K, V>(Map<K, V> map1, Map<K, V> map2) {
  Set<K> commonKeys = {};

  for (K key in map1.keys) {
    if (map2.containsKey(key)) {
      commonKeys.add(key);
    }
  }

  return commonKeys;
}

void main() {
  var map1 = {
    'Alice': 85,
    'Bob': 92,
    'Charlie': 88,
  };

  var map2 = {
    'Bob': 90,
    'Charlie': 85,
    'Dave': 95,
  };

  var commonKeys = findCommonKeys(map1, map2);
  print('Common keys: $commonKeys');
}
