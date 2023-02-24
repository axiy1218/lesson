//*-------------Types of Future
import 'dart:io';

void main(List<String> args) async {
  print('--------------------------------------------------------');
  Future.delayed(Duration(seconds: 4), () {
    print("Future complated");
  });

  print('--------------------------------------------------------');
  Future<int> future = Future.value(234);
  print(await future);

  int qiymat = await Future.value(567);
  print(qiymat);
  print('--------------------------------------------------------');

  Future.delayed(Duration(seconds: 3), () {
    print('Other future complated');
  });

  print('--------------------------------------------------------');
  print(getSyncIterable());

  print('--------------------------------------------------------');
  var data = await getAsyncNumbers();
  print(data);
}

Iterable<int> getSyncIterable() sync* {
  for (var i = 0; i < 5; i++) {
    sleep(Duration(seconds: 1));
    print(i);
    yield i;
  }
}

Future<Iterable<int>> getAsyncNumbers() async {
  List<int> empty = List.empty(growable: true);
  for (var i = 0; i < 5; i++) {
    await Future.delayed(Duration(seconds: 1), () {
      print(i);
      empty.add(i);
    });
  }

  return Iterable.castFrom(empty);
}
