import 'package:test/test.dart';
import 'package:lesson/lesson_lib.dart';

void main() {
  group('main file testlari', () {
    test('calculate', () {
      expect(calculate(), 42);
    });

    test('do something', () {
      // expect(add(3, 4), equals(7));
    });
  });
}
