/*Write a function to convert a map to a list of its values */
List<V> convertMapValue<K, V>(Map<K, V> map) {
  return map.values.toList();
}

void main() {
  var m = {"Alice": 87, "BOb": 89};
  print(convertMapValue(m));
}
