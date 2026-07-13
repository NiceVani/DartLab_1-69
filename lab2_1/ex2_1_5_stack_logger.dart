mixin Loggable {
  void log(String msg) {
    DateTime now = DateTime.now();
    print("[$now] $msg");
  }
}

class Stack<T> with Loggable {
  final List<T> _items = [];

  void push(T item) {
    _items.add(item);
    log("Push: $_items | สถานะ Stack ปัจจุบัน: $_items");
  }

  void pop() {
    if (_items.isEmpty) {
      log("Pop: ล้มเหลว (Stack ว่างเปล่า)");
    } else {
      T item = _items.removeLast();
      log("Pop: $item | สถานะ Stack ปัจจุบัน: $_items");
    }
  }
}

void main() {
  print("--- ทดสอบ Stack ที่เก็บข้อมูลแบบตัวเลข (int) ---");
  var numberStack = Stack<int>();
  numberStack.push(10);
  numberStack.push(20);
  numberStack.push(30);
  numberStack.pop();
  numberStack.pop();

  print("\n--- ทดสอบ Stack ที่เก็บข้อมูลแบบข้อความ (String) ---");
  var textStack = Stack<String>();
  textStack.push("Dart");
  textStack.push("Flutter");
  textStack.pop();
  textStack.pop();
  textStack.pop();
}
