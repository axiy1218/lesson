import 'package:equatable/equatable.dart';

void main(List<String> args) {
  try {
    throw ConnectionException();
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

class AppError implements Exception {
  final String? message;
  AppError({this.message = "App Error"});

  @override
  String toString() {
    return '''$message''';
  }
}

class ConnectionException extends AppError with EquatableMixin {
  ConnectionException({String? message, re}) : super(message: message);
  num? statusCode;
  ConnectionException.value({required this.statusCode});

  @override
  String toString() {
    return '''
Connection exception
''';
  }

  @override
  List<Object?> get props => [statusCode];
}

class NotFoundException extends AppError with EquatableMixin {
  NotFoundException({String? message}) : super(message: message);

  @override
  String toString() {
    return '''
No Found exception
''';
  }

  @override
  List<Object?> get props => [];
}
