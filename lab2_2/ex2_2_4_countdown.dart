Stream<String> countdown(int from) async* {
  for (int i = from; i > 0; i--) {
    yield i.toString();
    await Future.delayed(Duration(seconds: 1));
  }
  yield "หมดเวลา!";
}

void main() async {
  print('เริ่มการนับถอยหลัง...');

  await for (String msg in countdown(5)) {
    print(msg);
  }

  print('ทำงานเสร็จสมบูรณ์');
}
