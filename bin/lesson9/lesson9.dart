/*
Created by Axmadjon Isaqov on 09:12:14 27.02.2023
© 2023 @axiydev 
*/
//*-------------Future
import 'dart:async';

void main(List<String> args) async {
  print(getNumber());
  getFutureNumber().then(
    (value) => print(value),
  );
  getDouble().then(
    (value) => print(value),
  );
  (getNumber() as Future).then((value) => print(value));

  Future(
    () => 456,
  ).then((value) => print(value));

  Future.microtask(myNumber).then((value) => print(value));

  Future(() => 678).then((value) => print(value));
}

int myNumber() => 1000;

Future<int> getFutureNumber() {
  print('Get Number worked...');
  return Future(() => 400);
}

Future<double> getDouble() async {
  print('Get double worked...');
  return 566.9;
}

//*-------------FuturueOr type
FutureOr<int> getSimpleNum() {
  return 467;
}

FutureOr<int> getNumber() {
  return Future.value(700);
}
