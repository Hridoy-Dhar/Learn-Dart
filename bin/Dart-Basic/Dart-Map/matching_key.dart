/*Write a function to merge two maps, summing values of matching keys */
Map<String, int> mergeMaps(Map<String, int> mapOne, Map<String, int> mapTwo) {
  Map<String, int> mergeMap = {};
  mapOne.forEach((key, value) {
    mergeMap[key] = value;
  });
  mapTwo.forEach((key, value) {
    if (mergeMap.containsKey(key)) {
      mergeMap[key] = mergeMap[key]! + value;
    } else {
      mergeMap[key] = value;
    }
  });
  return mergeMap;
}

void main() {
  Map<String, int> mapOne = {'a': 1, 'b': 45};
  Map<String, int> mapTwo = {'a': 345, 'b': 46};
  print(mergeMaps(mapOne, mapTwo));
}
