import 'dart:io';

void main(List<String> arguments) {
  Triangles Triangles1, Triangles2;
  Triangles1 = Triangles();
  Triangles1.base = 3;
  Triangles1.height = 4;
  // ignore: omit_local_variable_types
  double area1 = Triangles1.area();
  Triangles2 = Triangles();
  Triangles2.base = double.tryParse(stdin.readLineSync());
  Triangles2.height = double.tryParse(stdin.readLineSync());

  print(area1 + Triangles2.area());
}

class Triangles {
  double base, height;


  double area() {
    return base * height / 2;
  }
}
