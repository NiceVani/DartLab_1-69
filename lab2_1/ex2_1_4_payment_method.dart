abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard implements PaymentMethod {
  String cardNumber;

  CreditCard(this.cardNumber);

  @override
  void pay(double amount) {
    print("ตัดยอดจาก $amount บาท จากบัตรเครดิตหมายเลข: $cardNumber");
  }
}

class PromptPay implements PaymentMethod {
  String phoneNumber;

  PromptPay(this.phoneNumber);

  @override
  void pay(double amount) {
    print("โอนเงิน $amount บาท ผ่านพร้อมเพย์เบอร์: $phoneNumber");
  }
}

class CashOnDelivery implements PaymentMethod {
  @override
  void pay(double amount) {
    print("เตรียมเรียกเก็บเงินสด $amount บาท ที่หน้าบ้านลูกค้า");
  }
}

void main() {
  List<PaymentMethod> orders = [
    CreditCard("4562-1234-XXXX-XXXX"),
    PromptPay("089-123-4567"),
    CashOnDelivery(),
  ];

  for (var method in orders) {
    method.pay(1500);
  }
}
