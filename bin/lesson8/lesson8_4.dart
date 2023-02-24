import 'dart:async';
import 'dart:math';

void main(List<String> args) async {
  await getSqrt(225);
  int res1 = await countNumber(123);
  print(res1);
  int res2 = await countNumberSecond(456);
  print(res2);
  int res3 = await counNumberThird(78);
  print(res3);
}

Future<void> getSqrt(int n) {
  return Future.delayed(Duration(seconds: 5), () {
    print(sqrt(n));
  });
}

//*-------------
Future<int> countNumber(int n) {
  return Future.delayed(Duration(seconds: 10), () {
    return n * 100;
  });
}

//*-------------
Future<int> countNumberSecond(int n) async {
  await Future.delayed(Duration(seconds: 10));
  return n * 100;
}

//*-------------check
Future<int> counNumberThird(int n) async {
  final Completer<int> completer = Completer<int>();
  completer.complete(n * 100);
  await Future.delayed(Duration(seconds: 10));
  return completer.future;
}
