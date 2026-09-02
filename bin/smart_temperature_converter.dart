import 'dart:io';

void main() {

  print('====================================');
  print('       SMART TEMPERATURE CONVERTER');
  print('====================================');


  double celsius = double.parse(stdin.readLineSync()!);
  double fahrenheit = (celsius * 9 / 5) + 32;

  double fahrenheit = double.parse(stdin.readLineSync()!);
  double celsius = (fahrenheit - 32) * 5 / 9;

  double celsius = double.parse(stdin.readLineSync()!);
  double kelvin = celsius + 273.15;

  double kelvin = double.parse(stdin.readLineSync()!);
  double celsius = kelvin - 273.15;

  double fahrenheit = double.parse(stdin.readLineSync()!);
  double kelvin = (fahrenheit - 32) * 5 / 9 + 273.15;

  double kelvin = double.parse(stdin.readLineSync()!);
  double fahrenheit = (kelvin - 273.15) * 9 / 5 + 32;


}