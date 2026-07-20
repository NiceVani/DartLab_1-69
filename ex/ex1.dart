const double vatRate = 0.07;

double calcTotal({required int price, required int qty, double disccount = 0}) {
  return (price * qty - disccount) * (1 + vatRate);
}

void main() {
  final String shopName = 'Dart Cafe';

  print('ร้าน: $shopName');
  print('อัตราภาษี(vatRate): $vatRate');

  List<String> categories = ['เครื่องดื่ม', 'ของคาว', 'ของหวาน'];

  Map<String, int> menu = {
    'Latte': 55,
    'ข้าวผัด': 60,
    'Americano': 45,
    'Lemon Ice Tea': 40,
  };

  print('หมวดเมนู: $categories');
  print('จำนวนเมนูทั้งหมด: ${menu.length} รายการ ');
  print('ราคาลาเต้: ${menu['Latte']} บาท');

  print('เมนูราคาตั้งแต่ 50 บาทขึ้นไป: ');

  for (MapEntry<String, int> entry in menu.entries) {
    if (entry.value >= 50) {
      print('${entry.key} : ${entry.value} บาท');
    }
  }

  print('ยอดสุทธิ (ไม่รวมส่วนลด): ${calcTotal(price: 55, qty: 2)} บาท');
  print(
    'ยอดสุทธิ (ส่วนลด 10 บาท): ${calcTotal(price: 55, qty: 2, disccount: 10)} บาท',
  );

  String? coupon;

  print('ความยาวคูปอง : ${coupon?.length ?? 0}');

  coupon ??= 'NO-COUPON';
  print('คูปองหลังกำหนดค่า: $coupon');
}
