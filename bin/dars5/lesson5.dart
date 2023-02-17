/*
Created by Axmadjon Isaqov on 09:12:50 17.02.2023
© 2023 @axi_dev 
*/
/*
?Theme:::Collections
*/
import 'dart:collection';

import 'stack.dart';

void main(List<String> args) {
  //*-------------FIFO
  Queue queue = Queue<int>();
  queue = Queue.from([
    45,
    67,
    234,
    67,
    45,
    67,
  ]);
  print(queue);
  print(queue.first);
  print(queue.last);
  var removedData = queue.removeFirst();
  print(removedData);
  removedData = queue.removeLast();
  print(removedData);
  for (var element in queue) {
    print(element);
  }
  Iterator iterator = queue.iterator;
  while (iterator.moveNext()) {
    print(iterator.current);
  }
  //*-------------check

  List list = List.empty(growable: true);
  for (var i = 0; i < 100; i++) {
    list.add(i);
  }

  list.forEach(print);

  var searchedNumber = list.singleWhere(
    (element) => element == 101,
    orElse: () => "Listda bu element mavjud emas",
  );

  print("searched number::$searchedNumber");

  Map<int, dynamic> map = list.asMap();
  print(map);

  Map<int, dynamic> numberMap = {for (var i = 0; i <= 100; i++) i: i * i};
  print(numberMap);
//*-------------shart false bolgunga qadar elementlarni oziga yig'adi
  list = list.takeWhile((value) => value <= 10).toList();
  print(list);
//*-------------shart false bolgunga qadar elementlarni tashlab ketadi
  list = list.skipWhile((value) => 5 > value).toList();
  print(list);

  list.setRange(1, 3, [90, 78]);
  print(list);

//*-------------Stack
  Stack<int> stackInt = Stack();
  stackInt.add(45);
  stackInt.add(100);
  stackInt.add(134);

  print(stackInt);

  Stack<String> strStack = Stack.of(['h', 'e', 'l', 'l', 'o']);

  print(strStack);

  strStack.add('Salom');
  print(strStack);

  for (var element in strStack) {
    print(element);
  }

  print('at::${strStack[0]}');

  //*-------------Set

  Set data = Set.from({2, 3, 3, 4, 56, 78, 78});

  print(data);
}
