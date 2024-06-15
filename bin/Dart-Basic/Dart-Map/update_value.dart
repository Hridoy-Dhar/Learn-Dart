/*Write a function that updates the value of a given key in a map */
void updateValue<K, V>(Map<K, V> map, K key, V value) {
  map[key] = value;
}

void main() {
  var m = {'ALice': 87, 'BOl': 97};
  updateValue(m, 'BOL', 667);
  print(m);
}
