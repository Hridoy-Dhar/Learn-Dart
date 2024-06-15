/*There is a class named Employee with a method named salary(). The salary() method is overridden in two child classes named Manager and Developer.*/
class Employee {
  void salary() {
    print('Employee salary is: \$1000');
  }
}

class Manager extends Employee {
  @override
  void salary() {
    print("Manager salary is: \$004884");
  }
}

class Developer extends Employee {
  @override
  void salary() {
    print("Developer salary is: \$48857");
  }
}

void main() {
  Manager m = Manager();
  Developer d = Developer();
  m.salary();
  d.salary();
}
