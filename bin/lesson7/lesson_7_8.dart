import 'dart:async';

import 'lesson_7_7.dart';

void main(List<String> args) async {
  try {
    await FakeServer.getData(200).then((value) => print(value));
    print('Avto');
    print('Flutter G6');
  } on AppError catch (e) {
    e.exceptionToText();
  }
}

extension on AppError {
  void exceptionToText() {
    if (this is ConnectionException) {
      print('Internet bilan aloqa yoq');
    } else if (this is NotFoundException) {
      print('Malumot topilmadi');
    }

    print('Exception::$this');
    print('Message::$message');
  }
}

class FakeServer {
  static Future<num?> getData(num? statusCode) {
    final Completer<num?> completer = Completer<num?>();
    if (statusCode == 401) {
      completer.completeError(NotFoundException(message: 'Malumot topilmadi'));
      return completer.future;
    } else if (statusCode == 403) {
      completer.completeError(ConnectionException.value(statusCode: 403));
      return completer.future;
    }
    completer.complete(200);
    return completer.future;
  }
}
