// return_type get property_name {
//   // Getter body
// }
/*There is a class named NoteBook. The class has two private properties _name and _prize. There are two getters name and price to access the value of the properties. If you provide a blank name, then it will return No Name. */
class NoteBook {
  // Private properties
  String? _name;
  double? _prize;

  // Constructor
  NoteBook(this._name, this._prize);

  // Getter method to access private property _name
  String get name => this._name!;

  // Getter method to access private property _prize
  double get price => this._prize!;
}

void main() {
  // Create an object of NoteBook class
  NoteBook nb = new NoteBook("Dell", 500);
  // Display the values of the object
  print(nb.name);
  print(nb.price);
}
