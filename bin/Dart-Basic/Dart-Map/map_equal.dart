/*Write a function to check if two maps are equal */
bool mapAreEqual<K, V>(Map<K, V> mapOne, Map<K, V> mapTwo) {
  if (mapOne.length != mapTwo.length) {
    return false;
  }
  for (K key in mapOne.keys) {
    if (!mapTwo.containsKey(key) || mapOne[key] != mapTwo[key]) {
      return false;
    }
  }
  return true;
}

void main() {
  var mapOne = {"ALive": 354, "Bob": 354};
  var mapTwo = {'Bob': 354};
  var result = mapAreEqual(mapOne, mapTwo);
  print('Two map are equal: $result');
}
