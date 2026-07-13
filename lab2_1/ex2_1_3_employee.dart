abstract class Employee {
  String name;

  Employee(this.name);

  double calculateSalary();
}

class FullTimeEmployee extends Employee {
  double monthlySalary;

  FullTimeEmployee(String name, this.monthlySalary) : super(name);
  @override
  double calculateSalary() {
    return monthlySalary;
  }
}

class PartTimeEmployee extends Employee {
  double hourWage;
  int hourWork;

  PartTimeEmployee(String name, this.hourWage, this.hourWork) : super(name);

  @override
  double calculateSalary() {
    return hourWage * hourWork;
  }
}

void main() {
  List<Employee> employees = [
    FullTimeEmployee("สมชาย", 35000),
    PartTimeEmployee("สมศรี", 150, 120),
  ];

  for (var emp in employees) {
    print("ชื่อ: ${emp.name} | เงินเดือน: ${emp.calculateSalary()}");
  }
}
