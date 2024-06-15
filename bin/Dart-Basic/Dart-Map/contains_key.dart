/*Write a function to check if a map contains a given key */
bool containKey<K, V>(Map<K, V> map, K key) {
  return map.containsKey(key);
}

void main() {
  var M = {"Alice": 45, "BoB": 64};
  print(containKey(M, "Alice"));
}
