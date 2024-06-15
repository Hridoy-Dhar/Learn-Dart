/*Create a function to convert a map to a list of its keys */
List<K> mapKeyToList<K, V>(Map<K, V> map) {
  return map.keys.toList();
}

void main() {
  var m = {"alice": 56, "Bob": 8};
  print(mapKeyToList(m));
}
