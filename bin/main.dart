import 'dart:io';
import 'package:PBODart/persegi_panjang.dart';

// ignore: always_declare_return_types
main(List<String> arguments) {
  // ignore: omit_local_variable_types
  String input = stdin.readLineSync();
  // ignore: omit_local_variable_types
  String input1 = stdin.readLineSync();
  // ignore: omit_local_variable_types
  double number = double.tryParse(input);
  // ignore: omit_local_variable_types
  double number1 = double.tryParse(input1);
  print(number + number1);

  PersegiPanjang kotak1,kotak2;
  kotak1 = PersegiPanjang();
  kotak1.setPanjang(-3);
  kotak1.lebar = 4;
  print(kotak1.luas);

  kotak2 = PersegiPanjang();
  kotak2.setPanjang(double.tryParse(stdin.readLineSync()));
  kotak2.lebar = double.tryParse(stdin.readLineSync());
  print(kotak2.luas);
  print(kotak2.keliling);
  print(kotak1.luas + kotak2.luas);
  print('Masukkan nilai panjang : ');

}
