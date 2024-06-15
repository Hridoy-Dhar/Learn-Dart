/*Write a function to convert a list of pairs into a map */
Map<K, V> listToMap<K, V>(List<List<dynamic>> paris) {
  Map<K, V> map = {};
  for (var pair in paris) {
    if (pair.length != 2) {
      print('Each paris must contain exactly 2 elements');
    }
    K key = pair[0];
    V value = pair[1];
    map[key] = value;
  }
  return map;
}

void main() {
  var paris = [
    ['Alice', 45],
    ['Bob', 774],
    ['Lice', 76]
  ];
  var map = listToMap<String, int>(paris);
  print(map);
}
