enum OrderStatus { pending, paid, cancelled }

abstract class MemuItem {
  final String name;
  final double basePrice;
  static int itemCount = 0;
  MemuItem(this.name, this.basePrice) {
    itemCount++;
  }

  double price();

  void show() {
    print('$name : ${price()} บาท');
  }
}

class Drink extends MemuItem {
  int toppings;

  Drink(String name, double basePrice, this.toppings) : super(name, basePrice);

  @override
  double price() {
    return basePrice + (10 * toppings);
  }
}

class Food extends MemuItem {
  String size;

  Food(String name, double basePrice, this.size) : super(name, basePrice);

  @override
  double price() {
    double multiplier = 1.0;

    switch (size) {
      case 'S':
        multiplier = 1.0;
        break;
      case 'M':
        multiplier = 1.2;
        break;
      case 'L':
        multiplier = 1.5;
        break;
    }
    return basePrice * multiplier;
  }
}

class Wallet {
  double _balance = 0;

  double get balance => _balance;

  set balance(double value) {
    if (value < 0) {
      print('ผิดพลาด: ยอดเงินติดลบไม่ได้ ');
    } else {
      _balance = value;
    }
  }

  bool pay(double amount) {
    if (_balance >= amount) {
      _balance -= amount;
      return true;
    } else {
      print('ยอดเงินไม่พอ');
      return false;
    }
  }
}

void printOrderStatus(OrderStatus status) {
  switch (status) {
    case OrderStatus.pending:
      print('สถานะ:  รอการชำระเงิน');
      break;
    case OrderStatus.paid:
      print('สถานะ: ชำระเงินแล้ว');
      break;
    case OrderStatus.cancelled:
      print('สถานะ: ยกเลิกคำสั่งซื้อ');
      break;
  }
}

void main() {
  List<MemuItem> order = [
    Drink('Latte', 55, 1),
    Food('ข้าวผัด', 60, 'L'),
    Drink('Americano', 45, 0),
  ];

  double total = 0;

  for (MemuItem item in order) {
    item.show();
    total += item.price();
  }

  print('ยอดรวมทั้งสิ้น: $total บาท');

  Wallet myWallet = Wallet();
  myWallet.balance = 300;
  myWallet.balance = -50;

  bool isSuccess = myWallet.pay(total);
  if (isSuccess) {
    print('ชำระเงินแล้ว');
    printOrderStatus(OrderStatus.paid);
  }
  print('ยอดคงเหลือ : ${myWallet.balance} บาท');

  bool isSuccess2 = myWallet.pay(500);
  if (!isSuccess2) {
    printOrderStatus(OrderStatus.pending);
  }
  print('ยอดเงินคงเหลือ : ${myWallet.balance} บาท');

  print('จำนวนรายการเมนูที่สร้าง: ${MemuItem.itemCount}');
}
