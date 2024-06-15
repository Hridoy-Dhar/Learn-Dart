/*Write a Dart function to find the maximum and minimum values in a list of integers */
Map<String, int?> findMaxAndMin(List<int> numbers) {
  if (numbers.isEmpty) return {'max': null, 'min': null};

  int max = numbers[0];
  int min = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
    if (numbers[i] < min) {
      min = numbers[i];
    }
  }

  return {'max': max, 'min': min};
}

void main() {
  List<int> numbers = [5, 3, 9, 1, 6, 7, 28, 823];
  Map<String, int?> result = findMaxAndMin(numbers);
  print('Max: ${result['max']}, Min: ${result['min']}'); // Max: 9, Min: 1

  List<int> emptyList = [];
  Map<String, int?> emptyResult = findMaxAndMin(emptyList);
  print(
      'Max: ${emptyResult['max']}, Min: ${emptyResult['min']}'); // Max: null, Min: null
}
