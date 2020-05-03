import 'dart:io';

void main(List<String> arguments) {
  List<int> myList = []; // list kosong.
  // ignore: omit_local_variable_types
  List<int> list = [1, 2, 3, 4];
  int e;
  e = list[1];
  print(e);

  list[0] = 10;
  e = list[0];
  print(e);

  // looping list
  int i;
  for (i = 0; i < list.length; i++) {
    print(list[i]);
  }

  for (i in list) {
    print(i);
  }

  list.forEach((i) {
    print(i);
  });

  //function dasar pada list
  //add untuk menambahkan
  //insert untuk menyisipkan
  myList.add(10);
  myList.addAll(list);
  myList.insert(0, 1);
  myList.insertAll(1, [3, 5]);
  myList.remove(10);
  myList.removeLast();
  myList.removeAt(0);
  myList.removeRange(0, 2);
  myList.removeWhere((number) => number % 2 != 0);
  if (myList.contains(5)) {
    print('ada');
  }
  //list = myList.sublist(3);
  list.clear();
  myList.sort();
  // a= 4, b = 5 jadi a taroh di kanan jadi menurun
  myList.sort((a, b) => b - a);
  if(myList.every((number) => number % 2 != 0)){
    print('ganjil');
  }else{
    print('tidak semua ganjil');
  }
  if(myList.isNotEmpty){
    print('list memilik iisi');
  }
  myList.forEach((i) {
    print(i);
  });
  //list menjadi uniqure tidak ada yg doble
  Set<int> s;
  s =myList.toSet();
 s.forEach((bilangan){
   print('bilangan');
 });
 List<String> listed = [];
  myList.forEach((bilangan){
    listed.add('angka' + bilangan.toString());
  });
  // sama seperti diatas tapi menggunakan mapping
  listed = myList.map((number) => 'angka ' + number.toString()).toList();
}
