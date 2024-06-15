/*Declaring Class */
//ClassName objectName = ClassName();//

/*There is class Student with three properties: name, age, and grade. The class also has a method called displayInfo, which prints out the values of the three properties. */
class Student {
  String? name;
  int? age;
  int? grade;

  void displayInfo() {
    print("Student name: $name.");
    print("Student age: $age.");
    print("Student grade: $grade.");
  }
}
