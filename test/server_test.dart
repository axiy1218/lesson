import 'package:test/test.dart';
import '../bin/lesson7/lesson_7_7.dart';
import '../bin/lesson7/lesson_7_8.dart';

void main() {
  group('server test', () {
    test('Web server test1', () async {
      expect(FakeServer.getData(403),
          throwsA(ConnectionException.value(statusCode: 403)));
    });

    test('Web server test2', () async {
      expect(await FakeServer.getData(200), equals(200));
    });

    test('Web server test3', () async {
      expect(FakeServer.getData(401), throwsA(NotFoundException()));
    });
  });
}
