/*16.	Implement a function to check if a map contains a given value */
bool containsValue<K, V>(Map<K, V> map, K value) {
  return map.containsValue(value);
}

void main() {
  var m = {'Alice': 956, 'Line': 456};
  print(containsValue(m, 35));
}
