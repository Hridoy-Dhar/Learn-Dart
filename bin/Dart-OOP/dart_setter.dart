/*There is a class named Student. The class has two private properties _name and _classnumber. We will also create two setters name and classnumber to update the value of the properties. The classnumber setter will only accept a value between 1 and 12. The class also has a method display() to display the values of the properties. */
class Student {
  // Private properties
  String? _name;
  int? _classnumber;

  // Setter to update the value of name property
  set name(String name) => this._name = name;

  // Setter to update the value of classnumber property
  set classnumber(int classnumber) {
    if (classnumber <= 0 || classnumber > 12) {
      throw ('Classnumber must be between 1 and 12');
    }
    this._classnumber = classnumber;
  }

  // Method to display the values of the properties
  void display() {
    print("Name: $_name");
    print("Class Number: $_classnumber");
  }
}

void main() {
  // Create an object of Student class
  Student s = new Student();
  // setting values to the object using setter
  s.name = "John Doe";
  s.classnumber = 12;

  // Display the values of the object
  s.display();

  // This will generate error
  //s.setClassNumber(13);
}