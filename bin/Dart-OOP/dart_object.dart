/*Decalraing an Object */
// ClassName objectName = ClassName();//

/*There is class Bycycle with three properties: color, size, and currentSpeed. The class has two methods. One is changeGear, which changes the gear of the bicycle, and display method prints out the values of the three properties. We also have an object of the class Bycycle called bicycle */
class Bycycle {
  String? color;
  double? size;
  int? currentSpeed;
  // Methos for change gear
  void changeGear(int gear) {
    currentSpeed = gear;
  }

  // Method for display
  void displayInfo() {
    print('Color: $color');
    print('Size: $size');
    print('Currentspeed: $currentSpeed');
  }
}

// Main funcation
void main() {
  //Create object of class
  Bycycle object = Bycycle();
  // Access the property of bycycle
  object.color = "Blue";
  object.size = 459.34;
  object.currentSpeed = 37;
  object.changeGear(35);
  // Display the all value
  object.displayInfo();
}
