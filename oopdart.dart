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
}
