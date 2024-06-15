/*Implement a function to group a list of strings by their first character using a map */
Map<String, List<String>> groupByFirstCharacter(List<String> strings) {
  Map<String, List<String>> groupMap = {};
  for (var str in strings) {
    if (str.isEmpty) continue;
    String firstChar = str[0];
    if (!groupMap.containsKey(firstChar)) {
      groupMap[firstChar] = [];
    }
    groupMap[firstChar]!.add(str);
  }
  return groupMap;
}

void main() {
  var strings = [
    'apple',
    'banana',
    'apricot',
    'blueberry',
    'avocado',
    'blackberry',
    'cherry'
  ];

  var grouped = groupByFirstCharacter(strings);
  print(grouped);
}
