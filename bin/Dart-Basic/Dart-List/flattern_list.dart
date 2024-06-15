/*Write a function to flatten a nested list */
List flatten(List nested) {
  List result = [];
  void flatternHelper(List nest) {
    for (var element in nest) {
      if (element is List) {
        flatternHelper(element);
      } else {
        result.add(element);
      }
    }
  }

  flatternHelper(nested);
  return result;
}

void main() {
  var nested = [
    1,
    [
      2,
      3,
      [4, 5]
    ],
    6,
    [7, 8],
    9
  ];
  var flattens = flatten(nested);
  print(flattens);
}
