/*Write a function that takes a list of integers and returns a map where each key is a frequency and the value is a list of integers that appear with that frequency in the input list.*/
Map<int, List<int>> groupByFrequency(List<int> numbers) {
  Map<int, int> frequencyMap = {};

  for (int number in numbers) {
    if (frequencyMap.containsKey(number)) {
      frequencyMap[number] = frequencyMap[number]! + 1;
    } else {
      frequencyMap[number] = 1;
    }
  }

  Map<int, List<int>> groupedByFrequency = {};

  frequencyMap.forEach((number, frequency) {
    if (groupedByFrequency.containsKey(frequency)) {
      groupedByFrequency[frequency]!.add(number);
    } else {
      groupedByFrequency[frequency] = [number];
    }
  });

  return groupedByFrequency;
}

void main() {
  List<int> numbers = [4, 4, 6, 2, 2, 2, 6, 4, 3, 3, 6, 1];
  Map<int, List<int>> result = groupByFrequency(numbers);

  result.forEach((frequency, numbers) {
    print('$frequency: $numbers');
  });
}
