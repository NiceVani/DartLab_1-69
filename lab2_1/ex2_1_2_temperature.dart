class Temperature {
  double _celsius = 0;

  set celsius(double degree) {
    if (degree < -273.15) {
      print("ผิดพลาด: ต่ำกว่าศูนย์สัมบูรณ์");
    } else {
      _celsius = degree;
    }
  }

  double get fahrenheit => (_celsius * 9 / 5) + 32;
}

void main() {
  var d = Temperature();
  d.celsius = 77;
  print(d.fahrenheit);
}
