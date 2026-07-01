//4เหลี่ยม สามเหลี่ยม ทรงกระบอก

void area(double a, double b, double Function(double, double) operation) {
  var result = operation(a, b);
  print('Result: $result');
}

double triangle(double x, double y) {
  return 0.5 * x * y;
}

double sqare(double x, double y) {
  return x * y;
}

double cylinder(double height, double radius) {
  return radius * radius * height * 3.14;
}

void main() {
  area(20, 15, triangle);
  area(20, 15, sqare);
  area(20, 15, cylinder);
}
