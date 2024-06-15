/*Write a function that takes a map with lists of integers as values and returns a new map with the same keys but where each list is replaced by the sum of its elements.*/
Map<k, int> mapOfList<k>(Map<k, List<int>> mapOfLists) {
  Map<k, int> resultMap = {};
  mapOfLists.forEach((key, valueList) {
    int sum =
        valueList.fold(0, (previousValue, element) => previousValue + element);
    resultMap[key] = sum;
  });
  return resultMap;
}

void main() {
  Map<String, List<int>> mapOfLists = {
    'a': [1, 2, 34],
    'b': [23, 4, 5],
    'c': [34, 5, 6]
  };
  Map<String, int> resultMap = mapOfList(mapOfLists);
  resultMap.forEach((key, value) {
    print('$key : $value');
  });
}
