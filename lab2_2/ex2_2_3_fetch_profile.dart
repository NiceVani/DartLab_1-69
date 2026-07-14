Future<Map<String, dynamic>> fetchProfile(int userId) async {
  await Future.delayed(Duration(seconds: 2));

  if (userId <= 0) {
    throw Exception('userId ต้องมากกว่า 0');
  }

  return {'id': userId, 'name': 'User$userId', 'status': 'Active'};
}

void main() async {
  // กรณีทดสอบที่ 1: ข้อมูลถูกต้อง
  print('--- ทดสอบ userId = 1 ---');
  try {
    var profile = await fetchProfile(1);
    print('ข้อมูลที่ได้: $profile');
  } catch (e) {
    print('เกิดข้อผิดพลาด: $e');
  } finally {
    print('จบการทำงานของการดึงข้อมูล (1)\n');
  }

  // กรณีทดสอบที่ 2: ข้อมูลผิดพลาด
  print('--- ทดสอบ userId = 0 ---');
  try {
    var profile = await fetchProfile(0);
    print('ข้อมูลที่ได้: $profile');
  } catch (e) {
    print('เกิดข้อผิดพลาด: $e');
  } finally {
    print('จบการทำงานของการดึงข้อมูล (0)');
  }
}
