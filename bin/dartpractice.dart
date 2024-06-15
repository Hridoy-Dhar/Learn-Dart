// void main() {
//   List<int> list = [23, 45, 1, 21, 23, 599];
//   insertionSort(list);
//   print(list);
// }

// void insertionSort(List<int> list) {
//   // Start from the second element (index 1) because the first element is assumed to be sorted
//   for (int i = 1; i < list.length; i++) {
//     // Store the value of the current element
//     int key = list[i];
//     // Initialize j to the index of the element just before the current element
//     int j = i - 1;

//     // Move elements of list[0..i-1] that are greater than 'key' to one position ahead of their current position
//     while (j >= 0 && list[j] > key) {
//       // Shift the element at index j to the right (to index j + 1)
//       list[j + 1] = list[j];
//       // Move to the previous element
//       j = j - 1;
//     }
//     // Place the 'key' in its correct position within the sorted portion of the list
//     list[j + 1] = key;
//   }
// }

// void main() {
//   List<int> list = [12, 22, 345, 56, 23, 5, 4345, 53];

//   int key = 345;

//   int n = list.length;

//   int result = linearSearch(list, key);

//   if (result != -1) {
//     print("Element found at index: $result");
//   } else {
//     print("Element not found in the list.");
//   }
// }

// int linearSearch(List<int> list, int key) {
//   for (int i = 0; i < list.length; i++) {
//     if (list[i] == key) {
//       return i;
//     }
//   }
//   return -1;
// }
void main() {
  // Predefined sorted list of integers
  List<int> list = [
    1,
    3,
    4,
    5,
    7,
    11,
    12,
    23,
    33,
    34,
    44,
    45,
    56,
    67,
    78,
    89,
    90
  ];

  // Predefined key to search for
  int key = 23;

  // Perform the binary search
  int result = binarySearch(list, key);

  // Print the result
  if (result != -1) {
    print("Element found at index: $result");
  } else {
    print("Element not found in the list.");
  }
}

// Binary search function
int binarySearch(List<int> list, int key) {
  int left = 0;
  int right = list.length - 1;

  while (left <= right) {
    int mid = left + (right - left) ~/ 2; // Find the middle index

    // Check if key is present at mid
    if (list[mid] == key) {
      return mid;
    }

    // If key is greater, ignore the left half
    if (list[mid] < key) {
      left = mid + 1;
    }
    // If key is smaller, ignore the right half
    else {
      right = mid - 1;
    }
  }

  // Key was not found
  return -1;
}
