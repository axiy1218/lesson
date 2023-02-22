import 'package:test/test.dart';
import 'package:lesson/lesson_lib.dart';

import '../bin/lesson7/lesson_7_8.dart';

void main() {
  group('main file testlari', () {
    test('calculate', () {
      expect(calculate(), 42);
    });

    test('do something', () {
      // expect(add(3, 4), equals(7));
    });

    test('Web server test', () async {
      num? result = await FakeServer.getData(200);
      expect(result, equals(200));
    });
  });
}
