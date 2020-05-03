import 'dart:io';

double square(double number1, double number2) {
  return number1 * number2;
}

void eq() {
  print('print print print');
}

//Optional Parameter (Named Parameter)
// use ()
// variable in {} wajib diberi keterangan.
String message(String from, String content, {String to, String appName}) {
  return from +
      ' send message about ' +
      content +
      ((to != null) ? ' to ' + to : '') +
      ((appName != null) ? ' via ' + appName + '.' : '');
}

//Optional Parameter (Positional Parameter)
// use []
//pemanggilan fungsi sesuai dengan urutan parameter
String message2(String from, String content, [String to, String appName]) {
  return from +
      ' send message about ' +
      content +
      ((to != null) ? ' to ' + to : '') +
      ((appName != null) ? ' via ' + appName + '.' : '');
}

//default parameter values
//digunakan untuk memberikan nilai default pada optional parameter.
// ex : String say(String from, [String to = "somebody]){}
String message3(String from, String content,
    [String to, String appName = 'Line']) {
  return from +
      ' send message about ' +
      content +
      ((to != null) ? ' to ' + to : '') +
      ((appName != null) ? ' via ' + appName + '.' : '');
}
//Lambda Expression or Fat Arrow Expression
double division(number1,number2) => number1/number2;

//  Annonymous Function
// fungsi  yang tidak memiliki nama
// fungsi dijadikan parameter
//Function(int,int) operator untuk memastikan fungsi menggunakan 2 buah parameter.
int doMathOperator(int number1,int number2, Function(int,int) operator){
  return operator(number1,number2);
}

void main(List<String> arguments) {
  double p, l, result;

  p = double.tryParse(stdin.readLineSync());
  l = double.tryParse(stdin.readLineSync());

  result = square(p, l);
  print(result);
  print(square(3, 4));
  eq();
  print(message('Budi', 'Budi bermain bola', to: 'Ani', appName: 'Line'));
  print(message2('Budi', 'Budi bermain bola', 'Ani'));
  print(message3('Budi', 'Budi Bermain Bola'));
  print(division(10, 2));
  print(doMathOperator(1, 2, (a,b) => a*b));

  //function adalah first class object
  //fungsi dapat disimpan dalam sebuah variabel / identifier
  //fungsi dapat dimasukkan sebagai paramter.
  //fungsi dapat dijadikan sebagai nilai kembalian
  Function f;
  f = division;
  print(f(4/2));


}
