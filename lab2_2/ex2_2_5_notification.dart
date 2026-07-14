import 'dart:async';

void main() {
  final notificationController = StreamController<String>();

  notificationController.stream.listen(
    (message) {
      print('มีการแจ้งเตือนใหม่: $message');
    },
    onError: (error) {
      print('เกิดข้อผิดพลาดในสตรีม: $error');
    },
    onDone: () {
      print('สตรีมถูกปิด สิ้นสุดการรับการแจ้งเตือน');
    },
  );

  print('กำลังส่งการแจ้งเตือน...');
  notificationController.add('มีข้อความเข้า 1 ข้อความ');
  notificationController.add('แบตเตอรี่เหลือ 20%');
  notificationController.add('อัปเดตระบบเสร็จสิ้น');

  notificationController.close();
}
