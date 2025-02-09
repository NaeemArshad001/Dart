// Define a class named `Car`
class Car {
  // Declare properties (fields) of the class
  String brand;
  String model;
  int year;

  // Constructor to initialize the fields
  Car(this.brand, this.model, this.year);

  // Method to display information about the car
  void displayInfo() {
    print("Car Brand: $brand");
    print("Car Model: $model");
    print("Car Year: $year");
  }

  // Method to check if the car is vintage (more than 25 years old)
  bool isVintage() {
    int currentYear = DateTime.now().year;
    return (currentYear - year) > 25;
  }
}

void main() {
  // Create an object of the class `Car`
  Car car1 = Car("Toyota", "Corolla", 1995);

  // Call the `displayInfo` method on the object
  car1.displayInfo();

  // Check if the car is vintage and print the result
  if (car1.isVintage()) {
    print("This car is a vintage model!");
  } else {
    print("This car is not vintage.");
  }
}
