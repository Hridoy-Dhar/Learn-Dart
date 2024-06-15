/*Write a function that takes a list of strings and returns a map where the keys are sorted characters and the values are lists of anagrams.*/
Map<String, List<String>> groupAnagrams(List<String> words) {
  Map<String, List<String>> anagramMap = {};

  // Iterate through each word in the list
  for (String word in words) {
    // Sort the characters of the word
    String sortedWord = String.fromCharCodes(word.runes.toList()..sort());

    // Add the word to the corresponding list in the anagram map
    if (anagramMap.containsKey(sortedWord)) {
      anagramMap[sortedWord]!.add(word);
    } else {
      anagramMap[sortedWord] = [word];
    }
  }

  return anagramMap;
}

void main() {
  List<String> words = ['listen', 'enlist', 'silent', 'rat', 'tar', 'art'];
  Map<String, List<String>> result = groupAnagrams(words);

  result.forEach((sortedChars, anagrams) {
    print('$sortedChars: $anagrams');
  });
}
