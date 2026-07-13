class Student {
  // <--- Fields
  String? name;
  int? age;
  int? grade;

  void displayInfo() {
    // <-- Medthod
    print("ชื่อนักศึกษา: $name");
    print("อายุ: $age");
    print("ชั้นปี: $grade");
  }
}

void main() {
  Student s1 = Student();

  s1.name = "สมชาย";
  s1.age = 20;
  s1.grade = 2;

  s1.displayInfo();
}
