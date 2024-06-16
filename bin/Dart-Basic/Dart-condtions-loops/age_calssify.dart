/*Classify a person's age group (child, teenager, adult, senior). */
import 'dart:io';

void main() {
  String ageGroup(int age) {
    if (age < 0) {
      return 'Invalid age';
    } else if (age <= 12) {
      return 'Child';
    } else if (age <= 19) {
      return 'Teenager';
    } else if (age <= 64) {
      return 'Adult';
    } else {
      return 'Senior';
    }
  }

  print('Enter the age:');
  int? age = int.tryParse(stdin.readLineSync() ?? '');

  if (age == null) {
    print('Error: Invalid input.');
  } else {
    String ageg = ageGroup(age);
    print('The age group is: $ageg');
  }
}
