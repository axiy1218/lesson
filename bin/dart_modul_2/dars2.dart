/*
Created by Axmadjon Isaqov on 09:09:07 08.02.2023
© 2023 @axi_dev 
*/
/*
?Theme:::Functions
*/
import 'dart:collection';
import 'dart:ffi';
import 'dart:math';

void main(List<String> args) {
  HashMap<int, dynamic> hashMap = HashMap(
    equals: (a, b) => a.isEven && b.isEven,
    hashCode: (a) => a.hashCode,
    isValidKey: (a) => a > 0,
  );

  hashMap[56] = 'hi';
  hashMap[95] = 'Hello';
  hashMap[73] = 'Welcome';
  hashMap[60] = 'Flutter g6';

  print(hashMap);

  hashMap = HashMap.from({89: true, 100: false, 23: 0, 67: DateTime.now()});

  print(hashMap);

  User user = User('Tom', 40);

  User user1 = User.fromName('Jerry');

  List lt = [2, 3, 1, 4, 3, 2, 1, 5, 3];

  hashMap = HashMap.of({});

  for (var i = 0; i < lt.length; i++) {
    var item = lt[i];
    hashMap[item] = i;
  }

  print(hashMap);

  doSomething();
  doSomething();
  doSomethingSecond();
  doSomethingUnusual();
  doSomeAction;

  void Function(String) doSomeAnonymousAction =
      (String text) => print('Text is $text');

  doSomeAnonymousAction('Flutter G6');

  int Function() closureFunc = powNumbers(2, 3);
  print(closureFunc());

  print(powNumbers(2, 3));

  lt = [2, 3, 4, 7, 7.8, 90.6];

  lt.removeWhere(test);

  print(lt);

  lt.forEach(print);

  var result = lt.reduce((a, b) => a + b);
  print(result);

  print('*' * 30);

  result = lt.reduce(combine);
  print(result);
}

//*reduse
combine(a, b) {
  return a * b;
}

//#removeWhere
bool test(elemenet) {
  return elemenet is! int;
}

int Function() powNumbers(a, b) {
  return () {
    return pow(a, b) as int;
  };
}

//*-------------check
void doSomething() {
  print('do something to do');
}

//*-------------check
void doSomethingSecond() => print('do something to do');

//*-------------check
doSomethingUnusual() => print('Do something ususual');

//*-------------check
int add(int a, int b) => a + b;

//*-------------check
void get doSomeAction {
  print('do some action');
}

class User {
  int? age;
  String? name;

  //*construktor
  User(this.name, this.age);
  //* named construktor
  User.fromName(this.name);
}
