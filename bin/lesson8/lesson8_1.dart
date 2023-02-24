import 'dart:async';

void main(List<String> args) async {
  getNumberFuture().then(
    (value) {
      print("async::$value");
      return value;
    },
  );
  print(getNumber());
  print(await getNumberFuture());
  print(await getNumberFuture());

  String name = await getName().then((value) {
    print(value);
    return value;
  }).then((value) {
    print(value);
    return value;
  });
  print(name);

  print(getNumber());
  print('Flutter G6');

  getList().then((value) {
    print(value);
    return value;
  });
}

//*-------------synchronus
int getNumber() {
  return 45;
}

//*-------------asynchronus
Future<int> getNumberFuture() async {
  return 456;
}

Future<String> getName() {
  return Future.value("Tom");
}

//*-------------kichikroq asynchron tasklar uchun
Future<List<int>> getList() {
  final Completer<List<int>> completer = Completer<List<int>>();
  completer.complete([2, 3, 5, 2, 57, 97]);
  return completer.future;
}

Future<String> getNameFrom(bool hasError) {
  if (hasError) {
    return Future.error(ArgumentError.value(hasError));
  }
  return Future.value("Tom");
}
