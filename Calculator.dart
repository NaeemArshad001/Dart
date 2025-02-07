import 'dart:io';

void main() {
  print('Welcome to the Dart Calculator!');

  while (true) {
    print('Please select an operation:');
    print('1. Add');
    print('2. Subtract');
    print('3. Multiply');
    print('4. Divide');
    print('5. Exit');

    // Get user choice
    String? choice = stdin.readLineSync();

    if (choice == '5') {
      print('Exiting calculator. Goodbye!');
      break;
    }

    // Get the numbers
    print('Enter the first number:');
    double num1 = double.parse(stdin.readLineSync()!);

    print('Enter the second number:');
    double num2 = double.parse(stdin.readLineSync()!);

    double result;

    // Perform the operation based on the user's choice
    switch (choice) {
      case '1':
        result = num1 + num2;
        print('Result: $num1 + $num2 = $result');
        break;
      case '2':
        result = num1 - num2;
        print('Result: $num1 - $num2 = $result');
        break;
      case '3':
        result = num1 * num2;
        print('Result: $num1 * $num2 = $result');
        break;
      case '4':
        if (num2 == 0) {
          print('Error: Division by zero is not allowed!');
        } else {
          result = num1 / num2;
          print('Result: $num1 / $num2 = $result');
        }
        break;
      default:
        print('Invalid choice! Please select a valid operation.');
    }
  }
}
