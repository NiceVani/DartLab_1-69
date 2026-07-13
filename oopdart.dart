class Student {
  // <--- Fields
  String? name;
  int? age;
  int? grade;
  int? rollnumber;

  Student(String name, int age, int rollnumber) {
    //<-- Constructor
    this.name = name;
    this.age = age;
    this.rollnumber = rollnumber;
  }

  void displayInfo() {
    // <-- Medthod
    print("ชื่อนักศึกษา: $name");
    print("อายุ: $age");
    print("ชั้นปี: $grade");
  }

  void display() {
    print("ชื่อ: $name , อายุ: $age, เลขที่: $rollnumber");
  }
}

class Person {
  String? name;
  int? age;
  String? subject;
  double? salary;

  // รูปแบบย่อ -- ไม่ต้องเขียน this.name = name;
  Person(this.name, this.age, this.subject, this.salary);

  void display() {
    print("ชื่อ: $name, อายุ: $age, วิชา: $subject, เงินเดือน: $salary");
  }
}

class Point {
  // Named Constructor
  double x = 0;
  double y = 0;

  // คอนสตรัคเตอร์หลัก
  Point(this.x, this.y);

  // คอนสตรัคเตอร์แบบตั้งชื่อ: สร้างจุดที่จุดกำเนิด (0,0)
  Point.origin() {
    x = 0;
    y = 0;
  }

  void display() => print("จุด (x: $x, y: $y)");
}

class Chair {
  //Named Parameters
  String? name;
  String? color;

  Chair({this.name, this.color});

  void display() {
    print("ชื่อ: $name, สี: $color");
  }
}

class ImmutablePoint {
  //Constant Constructor
  final double x;
  final double y;

  const ImmutablePoint(this.x, this.y);
}

void main() {
  // Student s1 = Student();

  // s1.name = "สมชาย";
  // s1.age = 20;
  // s1.grade = 2;

  // Student s2 = Student();
  // s2.name = "สมหญิง";
  // s2.age = 21;

  // s1.displayInfo();

  Student s = Student("จอห์น", 20, 1);
  s.display();

  Person p = Person("John", 30, "Mathematic", 50000);
  p.display();

  Point p1 = Point(3, 4);
  Point p2 = Point.origin();
  p1.display(); // จุด (x: 3.0, y: 4.0)
  p2.display(); // จุด (x: 0.0, y: 0.0)
  Chair chair = Chair(color: "แดง", name: "เก้าอี้ตัวที่ 1");
  chair.display();
  const p11 = ImmutablePoint(1, 2);
  const p22 = ImmutablePoint(1, 2);

  // p1 และ p2 ชี้ไปยังอ็อบเจกต์เดียวกันในหน่วยความจำ
  print(identical(p11, p22)); // true
}
