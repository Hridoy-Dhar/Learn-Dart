/*Create a function to find the difference between two maps */
Map<K, V> differenceBetween<K, V>(Map<K, V> mapOne, Map<K, V> mapTwo) {
  Map<K, V> difference = {};
  mapOne.forEach((key, value) {
    if (!mapTwo.containsKey(key) || mapTwo[key] != value) {
      difference[key] = value;
    }
  });
  return difference;
}

void main() {
  var mapOne = {
    'Alice': 85,
    'Bob': 92,
    'Charlie': 88,
    'Dave': 90,
    'Eve': 76,
  };
  var mapTwo = {
    'Bob': 92,
    'Charlie': 89,
    'Eve': 76,
    'Frank': 95,
  };
  var result = differenceBetween(mapOne, mapTwo);
  print(result);
}
