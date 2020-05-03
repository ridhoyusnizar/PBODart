import 'dart:io';

class PersegiPanjang {
  double _panjang;
  double _lebar;

  void setPanjang(double value) {
    if (value < 0) {
      value *= -1;
    }
    _panjang = value;
  }

  double getPanjang() {
    return _panjang;
  }

  set lebar(double value) {
    if (value < 0) {
      value *= -1;
    }
    _lebar = value;
  }

  double get lebar {
    return _lebar;
  }

  double get luas {
    return _panjang * _lebar;
  }

  double get keliling => 2 * (_panjang + _lebar);

  double hitungLuas() {
    return _panjang * _lebar;
  }
}