import 'dart:io';

// Define an interface
abstract class MyInterface {
  void myMethod();
}

// Define a base class with a method to override
class MyBaseClass {
  void myMethod() {
    print('Base class method');
  }
}

// Create a subclass that inherits from the base class and implements an interface
class MySubClass extends MyBaseClass implements MyInterface {
  @override
  void myMethod() {
    print('Subclass method');
  }

  void readFileAndInitialize(String filePath) {
    // Read data from a file and initialize the instance
    try {
      final file = File(filePath);
      final data = file.readAsStringSync();
      print('Initialized with data: $data');
    } catch (e) {
      print('Error reading file: $e');
    }
  }

  void demonstrateLoop() {
    // Demonstrate the use of a loop
    for (int i = 0; i < 3; i++) {
      print('Loop iteration $i');
    }
  }
}

void main() {
  // Initialize an instance of the subclass with data from a file
  final mySubClass = MySubClass();
  mySubClass.readFileAndInitialize('data.txt');

  // Call overridden method
  mySubClass.myMethod();

  // Demonstrate the use of a loop
  mySubClass.demonstrateLoop();
}
