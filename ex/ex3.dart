Future<Map<String, dynamic>> fetchOrder(int orderId) async {
  await Future.delayed(Duration(seconds: 2));

  if (orderId <= 0) {
    throw Exception('รหัสคำสั่งซื้อไม่ถูกต้อง');
  }

  return {'id': orderId, 'menu': 'Latte', 'total': 65.0};
}

Stream<String> trackOrder() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'รับออเดอร์นี้แล้ว';

  await Future.delayed(Duration(seconds: 1));
  yield 'กำลังจัดทำ';

  await Future.delayed(Duration(seconds: 1));
  yield 'จัดส่งเรียบร้อย';
}

void main() async {
  print('กำลังโหลดข้อมูล...');

  try {
    Map<String, dynamic> orderData = await fetchOrder(7);
    print('ได้ข้อมูลออร์เดอร์: $orderData');
  } catch (e) {
    print('เกิดข้อผิดพลาด: $e');
  } finally {
    print('จบรายการ');
  }
  print('-' * 20);
  try {
    Map<String, dynamic> invalidData = await fetchOrder(0);
    print('ได้ข้อมูลออร์เดอร์: $invalidData');
  } catch (e) {
    print('เกิดข้อผิดพลาด: $e');
  } finally {
    print('จบรายการ');
  }
  print('-' * 20);

  await for (String status in trackOrder()) {
    print('สถานะ: $status');
  }
  print('-' * 20);
  print('ติดตามสถานะเสร็จสิ้น');
}
