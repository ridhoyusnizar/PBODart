import 'dart:io';

void main(List<String> arguments) {
// ignore: omit_local_variable_types
  int number = int.tryParse(stdin.readLineSync());
  String output;

//  if (number > 0) {
//    print('positif');
//  } else if (number < 0) {
//    print('negatif');
//  } else {
//    print('0');
//  }

//  if(number > 0){
//    output = 'positif';
//  }else {
//    output = 'negatif';
//  }

  output = (number > 0) ? "positif" : 'negatif atau nol';
  print(output);

  switch (number) {
    case 0:
      print("0");
      break;
    case 1:
      print("satu");
      break;
    case 2:
      print("dua");
      break;
    default:
      print("bilangan lain");
  }
}
