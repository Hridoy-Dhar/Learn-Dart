/*Write a function that takes a string and returns a map with each character as the key and the number of its occurrences as the value.*/
Map<String, int> countCharacters(String? text) {
  Map<String, int> charCountMap = {};

  if (text != null) {
    for (int i = 0; i < text.length; i++) {
      String char = text[i];

      if (charCountMap.containsKey(char)) {
        charCountMap[char]!;
      } else {
        charCountMap[char] = 1;
      }
    }
  }

  return charCountMap;
}

void main() {
  String text = "HAREKRISHNA";
  Map<String, int> charCounts = countCharacters(text);

  charCounts.forEach((char, count) {
    print('$char: $count');
  });
}
