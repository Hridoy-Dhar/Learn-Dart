/*Print "Fizz", "Buzz", or "FizzBuzz" based on multiples. */
// void main() {
//   for (int i = 1; i < 100; i++) {
//     if (i % 3 == 0 && i % 5 == 0) {
//       print("FizzBuzz");
//     } else if (i % 3 == 0) {
//       print("Fizz");
//     } else if (i % 5 == 0) {
//       print('Buzz');
//     }
//     print(i);
//   }
// }
/*Determine if a given year is a leap year */
// bool isLeafYear(int year) {
//   if (year % 4 == 0) {
//     if (year % 100 == 0) {
//       if (year % 400 == 0) {
//         return true;
//       } else {
//         return false;
//       }
//     } else {
//       return true;
//     }
//   } else {
//     return false;
//   }
// }

// void main() {
//   int year = 2024;
//   if (isLeafYear(year)) {
//     print("object");
//   } else {
//     print("Not leaf");
//   }
// }
/*Convert numeric scores to letter grades */
// import 'dart:io';

// String letterGrades(int score) {
//   if (score >= 90) {
//     return 'A';
//   } else if (score >= 80) {
//     return 'B';
//   } else if (score >= 70) {
//     return 'C';
//   } else if (score >= 60) {
//     return 'D';
//   } else if (score >= 50) {
//     return 'E';
//   } else {
//     return 'F';
//   }
// }

// void main() {
//   String? input = stdin.readLineSync()!;
//   int score = int.parse(input);
//   String result = letterGrades(score);
//   print(result);
// }

/*Determine if a number is positive, negative, or zero*/
// import 'dart:io';

// String checkNumber(int number) {
//   if (number > 0) {
//     return "The number is positive.";
//   } else if (number < 0) {
//     return "The number is negative.";
//   } else {
//     return "The number is zero.";
//   }
// }

// void main() {
//   print("Enter a number:");
//   String? input = stdin.readLineSync();

//   if (input != null) {
//     int? number = int.tryParse(input);

//     if (number != null) {
//       print(checkNumber(number));
//     } else {
//       print("Invalid input. Please enter a valid number.");
//     }
//   } else {
//     print("No input received.");
//   }
// }

/*Determine if a triangle is equilateral, isosceles, or scalene based on side lengths */
// import 'dart:io';

// String dertermineTriangle(int a, b, c) {
//   if (a == b && b == c) {
//     return 'Equilateral';
//   } else if (a == b || a == c || a == c) {
//     return 'Isosceles';
//   } else {
//     return 'Scalene';
//   }
// }

// void main() {
//   int a = int.parse(stdin.readLineSync()!);
//   int b = int.parse(stdin.readLineSync()!);
//   int c = int.parse(stdin.readLineSync()!);
//   String result = dertermineTriangle(a, b, c);
//   print('Traingle type: $result');
// }
/*Evaluate the strength of a password based on length and character types */
// import 'dart:io';

// void main() {
//   String password = stdin.readLineSync()!;

//   int strength = evaluatePasswordStrength(password);
//   print('Password strength: $strength');
// }

// int evaluatePasswordStrength(String password) {
//   int lengthScore = password.length >= 8 ? 2 : 1;
//   int uppercaseScore = password.contains(RegExp(r'[A-Z]')) ? 1 : 0;
//   int lowercaseScore = password.contains(RegExp(r'[a-z]')) ? 1 : 0;
//   int digitScore = password.contains(RegExp(r'[0-9]')) ? 1 : 0;

//   int totalScore = lengthScore + uppercaseScore + lowercaseScore + digitScore;

//   if (totalScore <= 2) {
//     return 0; // Weak
//   } else if (totalScore <= 3) {
//     return 1; // Medium
//   } else {
//     return 2; // Strong
//   }
// }
/*Apply discounts based on total purchase amount */

// double applyDiscount(double totalAmount) {
//   double discount = 0.0;
//   if (totalAmount >= 1000) {
//     discount = 0.2;
//   } else if (totalAmount >= 5000) {
//     discount = 0.15;
//   }
//   return totalAmount * (1 - discount);
// }

// void main() {
//   double totalAmount = double.parse(stdin.readLineSync()!);
//   double finalAmount = applyDiscount(totalAmount);
//   print(finalAmount);
// }
/*: Determine if a character is a vowel, consonant, digit, or special character. */

// void main() {
//   stdout.write('Enter a character: ');
//   String input = stdin.readLineSync()!;

//   if (input.length != 1) {
//     print('Please enter exactly one character.');
//   } else {
//     charType(input);
//   }
// }

// void charType(String char) {
//   if (isVowel(char)) {
//     print('$char is a vowel');
//   } else if (isConsonant(char)) {
//     print('$char is a consonant');
//   } else if (isDigit(char)) {
//     print('$char is a digit');
//   } else {
//     print('$char is a special character');
//   }
// }

// bool isVowel(String char) {
//   String lowerChar = char.toLowerCase();
//   return 'aeiou'.contains(lowerChar);
// }

// bool isConsonant(String char) {
//   String lowerChar = char.toLowerCase();
//   return RegExp(r'[a-z]').hasMatch(lowerChar) && !isVowel(char);
// }

// bool isDigit(String char) {
//   return RegExp(r'\d').hasMatch(char);
// }

/*Check if a person is eligible to vote based on age. */
// import 'dart:io';

// bool iseligible(int age) {
//   if (age >= 18) {
//     return true;
//   } else {
//     return false;
//   }
// }

// void main() {
//   int age = int.parse(stdin.readLineSync()!);
//   if (iseligible(age)) {
//     print('Eligable for vote');
//   } else {
//     print('Not eligable for vote');
//   }
// }
/*Print the day of the week based on user input (1-7). */
// import 'dart:io';

// void main() {
//   int day = int.parse(stdin.readLineSync()!);
//   switch (day) {
//     case 1:
//       print('Sat');
//       break;
//     case 2:
//       print('Sun');
//       break;
//     case 3:
//       print('Mon');
//       break;
//   }
// }
/*Check if a number is even or odd */
// import 'dart:io';

// bool isCheck(int number) {
//   return number % 2 == 0;
// }

// void main() {
//   int number = int.parse(stdin.readLineSync()!);
//   if (isCheck(number)) {
//     print('It is a even number');
//   } else {
//     print("It is a odd number");
//   }
// }
/*Find the largest of three numbers.*/
// import 'dart:io';

// int findLargest(int a, b, c) {
//   if (a >= b && a >= c) {
//     return a;
//   } else if (b >= a && b >= c) {
//     return b;
//   } else {
//     return c;
//   }
// }

// void main() {
//   int a = int.parse(stdin.readLineSync()!);
//   int b = int.parse(stdin.readLineSync()!);
//   int c = int.parse(stdin.readLineSync()!);
//   int result = findLargest(a, b, c);
//   print("The largest number of three number is $result");
// }
/*Check if a string reads the same forward and backward */
// bool isPalindrome(String str) {
//   // Convert the string to lowercase and remove non-alphanumeric characters
//   String cleanedStr = str.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');

//   // Reverse the cleaned string
//   String reversedStr = cleanedStr.split('').reversed.join('');

//   // Check if the cleaned string is equal to the reversed string
//   return cleanedStr == reversedStr;
// }

// void main() {
//   // Test the function with some examples
//   print(isPalindrome("A man, a plan, a canal, Panama")); // true
//   print(isPalindrome("racecar")); // true
//   print(isPalindrome("hello")); // false
//   print(isPalindrome("Was it a car or a cat I saw")); // true
//   print(isPalindrome("No 'x' in Nixon")); // true
// }
/*Convert temperatures between Celsius, Fahrenheit, and Kelvin */
// double celsiusToFe(double celsius) {
//   return celsius * 9 / 5 + 32;
// }

// double celsiusToKelvin(double celsius) {
//   return celsius + 273.15;
// }

// double fahrenheitTocelsius(double fahrenheit) {
//   return (fahrenheit - 32) * 5 / 32;
// }

// void main() {
//   double celsius = 34.6;
//   double fahrenheit = 45.0;
//   print(celsiusToFe(celsius));
//   print(celsiusToKelvin(celsius));
//   print(fahrenheitTocelsius(fahrenheit));
// }
/*Perform arithmetic operations based on user input */

// void main() {
//   double performOpertain(double num, double num1, String opertion) {
//     switch (opertion) {
//       case '+':
//         return num + num1;
//       case '-':
//         return num - num1;
//       case '*':
//         return num * num1;
//       case '/':
//         if (num != 0) {
//           return num / num1;
//         } else {
//           print("Error: Divison by zero");
//           return double.nan;
//         }
//       default:
//         print('Error');
//         return double.nan;
//     }
//   }

//   print('Enter the second number:');
//   double? num = double.parse(stdin.readLineSync() ?? '');

//   print("Enter the number:");
//   double? num1 = double.parse(stdin.readLineSync() ?? '');
//   print('Enter the operation: +-*');
//   String? operation = stdin.readLineSync();
//   if (num == null || num1 == null || operation == null) {
//     print('Error: Invalid input');
//   } else {
//     double result = performOpertain(num, num1, operation);
//     print('The result is: $result');
//   }
// }

/*Classify a person's age group (child, teenager, adult, senior). */
// import 'dart:io';

// void main() {
//   String ageGroup(int age) {
//     if (age < 0) {
//       return 'Invalid age';
//     } else if (age <= 12) {
//       return 'Child';
//     } else if (age <= 19) {
//       return 'Teenager';
//     } else if (age <= 64) {
//       return 'Adult';
//     } else {
//       return 'Senior';
//     }
//   }

//   print('Enter the age:');
//   int? age = int.tryParse(stdin.readLineSync() ?? '');

//   if (age == null) {
//     print('Error: Invalid input.');
//   } else {
//     String ageg = ageGroup(age);
//     print('The age group is: $ageg');
//   }
// }
/*Determine if a given time is AM or PM */
// String dateTime(DateTime datetime) {
//   return datetime.hour >= 12 ? 'PM' : 'AM';
// }

// void main() {
//   DateTime a = DateTime(2024, 12, 2);
//   print('The time is : ${dateTime(a)}');
// }
/*Classify blood pressure readings into categories */
// String readingCategories(int a, int b) {
//   if (a > 180 || b > 120) {
//     return 'Hy';
//   } else if (a >= 140 || b >= 90) {
//     return 'Hyper stage 2';
//   } else if (a >= 130 || b >= 80) {
//     return 'Hypeer stage 1';
//   } else if (a >= 120 && b < 80) {
//     return 'Elevated';
//   } else {
//     return 'Normal';
//   }
// }

// void main() {
//   int a = int.parse(stdin.readLineSync()!);
//   int b = int.parse(stdin.readLineSync()!);
//   print('Reading : ${readingCategories(a, b)}');
// }
/*Determine if a student passes or fails based on scores. */
// String studentResutl(int a) {
//   if (a >= 90) {
//     return 'A+';
//   } else if (a >= 80) {
//     return 'A-';
//   } else if (a >= 70) {
//     return 'B';
//   } else if (a >= 60) {
//     return 'c';
//   } else {
//     return 'Fail';
//   }
// }

// void main() {
//   int a = int.parse(stdin.readLineSync()!);
//   print('The result of the student is: ${studentResutl(a)}');
// }
/*Check if a number is an Armstrong number*/
// bool isArmstrong(int number) {
//   int originalNumber = number;
//   int sum = 0;
//   int numberOfDigits = number.toString().length;

//   while (number > 0) {
//     int digit = number % 10;
//     sum += pow(digit, numberOfDigits).toInt();
//     number ~/= 10;
//   }

//   return sum == originalNumber;
// }

// void main() {
//   print('Enter the number:');
//   int number = int.parse(stdin.readLineSync()!);
//   if (isArmstrong(number)) {
//     print('$number is an Armstrong number.');
//   } else {
//     print('$number is not an Armstrong number.');
//   }
// }
/*Write a Dart function to reverse a given string */
// String reverseString(String a) {
//   String reversed = '';
//   for (int i = a.length - 1; i >= 0; i--) {
//     reversed += a[i];
//   }
//   return reversed;
// }

// void main() {
//   String orginalString = stdin.readLineSync()!;
//   String reversedString = reverseString(orginalString);
//   print('Reversed String is: ${reversedString}');
// }
/*Reversed digit */
// int rever(int a) {
//   int revers = 0;
//   for (; a != 0; a ~/= 10) {
//     revers = revers * 10 + a % 10;
//   }
//   return revers;
// }

// void main() {
//   int number = 77403;
//   int rev = rever(number);
//   print('${rev}');
// }
/*Create a function that counts the number of vowels  or consonant in a string */
// int countVowelsOrConsonants(String s, {String type = 'vowels'}) {
//   s = s.toLowerCase(); // Convert the string to lowercase to handle both cases

//   int count = 0;

//   if (type == 'vowels') {
//     for (int i = 0; i < s.length; i++) {
//       if ('aeiou'.contains(s[i])) {
//         count++;
//       }
//     }
//   } else if (type == 'consonants') {
//     for (int i = 0; i < s.length; i++) {
//       if ('bcdfghjklmnpqrstvwxyz'.contains(s[i])) {
//         count++;
//       }
//     }
//   }

//   return count;
// }

// void main() {
//   String text = 'Hello World';
//   print('Number of vowels: ${countVowelsOrConsonants(text)}');
//   print(
//       'Number of consonants: ${countVowelsOrConsonants(text, type: 'consonants')}');
// }

/*	Write a function that checks if a given string is a palindrome */
// bool isPalindrome(String input) {
//   String clean = input.replaceAll(RegExp(r'[^A-Za-z0-9]'), '').toLowerCase();
//   int length = clean.length;
//   for (int i = 0; i < length ~/ 2; i++) {
//     if (clean[i] != clean[length - 1 - i]) {
//       return false;
//     }
//   }
//   return true;
// }

// void main() {
//   print(isPalindrome("A man ,A plan"));
// }
/*.	Implement a function to find the longest word in a string. */
// import 'dart:io';

// String longestWord(String word) {
//   List<String> words = word.split(RegExp(r'\s+'));
//   String longest = '';
//   for (String w in words) {
//     if (w.length > longest.length) {
//       longest = w;
//     }
//   }
//   return longest;
// }

// void main() {
//   String word = stdin.readLineSync()!;
//   String longestw = longestWord(word);
//   print('The longest word is: $longestw');
// }
/*Write a function to remove all whitespace from a given string */
// String removeWhilteSpace(String input) {
//   return input.replaceAll(RegExp(r'\s+'), '');
// }

// void main() {
//   String input = "Remove all whilespce from this string";
//   String result = removeWhilteSpace(input);
//   print('String without whitespce: $result');
// }
/*Write a function that capitalizes the first letter of each word in a string */
// String capitalizeFirstLetterOfEachWord(String sentence) {
//   // Split the sentence into words
//   List<String> words = sentence.split(RegExp(r'\s+'));

//   // List to hold capitalized words
//   List<String> capitalizedWords = [];

//   // Iterate through the list of words
//   for (String word in words) {
//     if (word.isNotEmpty) {
//       // Capitalize the first letter and add to the list
//       capitalizedWords.add(word[0].toUpperCase() + word.substring(1));
//     } else {
//       // Add empty word as is (to handle multiple spaces)
//       capitalizedWords.add(word);
//     }
//   }

//   // Join the capitalized words back into a sentence
//   return capitalizedWords.join(' ');
// }

// void main() {
//   String sentence =
//       "write a function that capitalizes the first letter of each word in a string";
//   String result = capitalizeFirstLetterOfEachWord(sentence);
//   print("Original sentence: $sentence");
//   print("Capitalized sentence: $result");
// }

/*Create a function that finds the frequency of a given character in a string */
// import 'dart:io';

// int frequencyOfnumber(String a, String char) {
//   if (char.length != 1) {
//     print('The char parameter should be a single character');
//   }
//   int count = 0;
//   for (int i = 0; i < a.length; i++) {
//     if (a[i] == char) {
//       count++;
//     }
//   }
//   return count;
// }

// void main() {
//   String a = stdin.readLineSync()!;
//   String char = 'a';
//   int frequ = frequencyOfnumber(a, char);
//   print('The frequency of $char in the string is: $frequ');
// }
/*Write a function that replaces all occurrences of a substring within a string with another substring */
// String replaceAllOc(String input, String replace, String re) {
//   return input.replaceAll(replace, re);
// }

// void main() {
//   String input = "Dart is a programing language.Dar is used for flutter ";
//   String replace = 'Dart';
//   String re = "Flutter";
//   String result = replaceAllOc(input, replace, re);
//   print('Modified string : $result');
// }
/*Implement a function to find the first non-repeating character in a string */
// String findFirstNonRepeatingCharacter(String input) {
//   Map<String, int> charCount = {};

//   for (int i = 0; i < input.length; i++) {
//     String char = input[i];
//     if (charCount.containsKey(char)) {
//       charCount[char] = charCount[char]! + 1;
//     } else {
//       charCount[char] = 1;
//     }
//   }

//   for (int i = 0; i < input.length; i++) {
//     if (charCount[input[i]] == 1) {
//       return input[i];
//     }
//   }

//   return '';
// }

// void main() {
//   String input = "krishna";
//   String result = findFirstNonRepeatingCharacter(input);
//   print("The first non-repeating character is: '$result'");
// }
/*Write a function to check if two strings are anagrams */
// bool areAnagram(String a, String b) {
//   a = a.toLowerCase();
//   b = b.toLowerCase();
//   List<String> sortOne = a.split('')..sort();
//   List<String> sortTwo = b.split('')..sort();
//   return sortOne.join() == sortTwo.join();
// }

// void main() {
//   print(areAnagram('Voilant', 'Silent'));
// }
/*Create a function that converts a string to title case */
// String toTitleCase(String str) {
//   List<String> words = str.split(' ');

//   List<String> titleCaseWords = words.map((word) {
//     if (word.isEmpty) return word;
//     return word[0].toUpperCase() + word.substring(1).toLowerCase();
//   }).toList();

//   return titleCaseWords.join(' ');
// }

// void main() {
//   print(toTitleCase('hello world'));
//   print(toTitleCase('dart programming language'));
//   print(toTitleCase('a quick brown fox jumps over the lazy dog'));
//   print(toTitleCase('MULTIPLE    SPACES'));
// }
/*Write a function that checks if a string contains only uppercase letters */
// bool upperCaseString(String s) {
//   if (s.isEmpty) return false;
//   for (int i = 0; i < s.length; i++) {
//     if (!s[i].contains(RegExp(r'[A-Z]'))) {
//       return false;
//     }
//   }
//   return true;
// }

// void main() {
//   print("Upper Case: ${upperCaseString('')}");
// }
/*Implement a function to find the longest common prefix of an array of strings */
// String longestCommon(List<String> s) {
//   if (s.isEmpty) return '';
//   String prefix = s[0];
//   for (int i = 1; i < s.length; i++) {
//     while (s[i].indexOf(prefix) != 0) {
//       prefix = prefix.substring(0, prefix.length - 1);
//       if (prefix.isEmpty) return '';
//     }
//   }
//   return prefix;
// }

// void main() {
//   print(longestCommon(['flower', 'flow', 'flight']));
// }
/*Write a function to count the number of words in a string */
// int numberOfWord(String word) {
//   word = word.trim();
//   List<String> words = word.split(RegExp(r'\s+'));
//   return words.length;
// }

// void main() {
//   print(numberOfWord('H a r e k r i s h n a 1 2 3 4 5 '));
// }
/*Create a function that checks if a string is a valid email address */
// bool isValidEmal(String email) {
//   final RegExp emailRegex =
//       RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
//   return emailRegex.hasMatch(email);
// }

// void main() {
//   print(isValidEmal('example@gmail.com'));
//   print(isValidEmal('user!@.com'));
// }
