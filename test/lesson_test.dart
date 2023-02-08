import 'package:lesson/lesson.dart';
import 'package:test/test.dart';

import '../bin/dart_modul_2/dars2.dart';

void main() {
  group('main file testlari', () {
    test('calculate', () {
      expect(calculate(), 42);
    });

    test('do something', () {
      expect(add(3, 4), equals(7));
    });
  });
}
