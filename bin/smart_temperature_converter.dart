import 'dart:io';

void main() {
  bool running = true;

  print('====================================');
  print('       SMART TEMPERATURE CONVERTER');
  print('====================================');
  print('1. Celsius to Fahrenheit');
  print('2. Fahrenheit to Celsius');
  print('3. Celsius to Kelvin');
  print('4. Kelvin to Celsius');
  print('5. Fahrenheit to Kelvin');
  print('6. Kelvin to Fahrenheit');
  print('7. Exit');

  stdout.write('Enter your choice: ');
  String? choice = stdin.readLineSync();

  switch (choice){
    case '1':
      stdout.write('Enter temperature in Celsius: ');
      double celsius = double.parse(stdin.readLineSync()!);

      double fahrenheit = (celsius * 9 / 5) + 32;

      print('$celsius°C = $fahrenheit°F');
      break;

    case '2':
      stdout.write('Enter temperature in Fahrenheit: ');
      double fahrenheit = double.parse(stdin.readLineSync()!);

      double celsius = (fahrenheit - 32) * 5 / 9;

      print('$fahrenheit°F = $celsius°C');
      break;

    case '3':
      stdout.write('Enter temperature in Celsius: ');
      double celsius = double.parse(stdin.readLineSync()!);

      double kelvin = celsius + 273.15;

      print('$celsius°C = $kelvin K');
      break;

    case '4':
      stdout.write('Enter temperature in Kelvin: ');
      double kelvin = double.parse(stdin.readLineSync()!);

      double celsius = kelvin - 273.15;

      print('$kelvin K = $celsius°C');
      break;

    case '5':
      stdout.write('Enter temperature in Fahrenheit: ');
      double fahrenheit = double.parse(stdin.readLineSync()!);

      double kelvin = (fahrenheit - 32) * 5 / 9 + 273.15;

      print('$fahrenheit°F = $kelvin K');
      break;

    case '6':
      stdout.write('Enter temperature in Kelvin: ');
      double kelvin = double.parse(stdin.readLineSync()!);

      double fahrenheit = (kelvin - 273.15) * 9 / 5 + 32;

      print('$kelvin K = $fahrenheit°F');
      break;

    case '7':
      running = false;
      break;

    default:
      print('Invalid choice. Please enter a number from 1 to 7.');
      continue;

  }

  if (running) {
    stdout.write('Do you want to perform another conversion? (y/n): ');
    String? answer = stdin.readLineSync();

    if (answer == 'y') {
      continue;
    } else if (answer == 'n') {
      running = false;
    } else {
      print('Invalid input. Please enter y or n.');
      running = false;
    }
  }

}