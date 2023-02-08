/*
Created by Axmadjon Isaqov on 09:07:24 06.02.2023
© 2023 @axi_dev 
*/
/*
?Theme:::Runes,Unicodes
*/
import 'dart:collection';

//&metadata
@User(age: 20, name: 'Tom')
void show() {
  print('show');
}

void main(List<String> args) {
  Runes rune = Runes('salom');
  print(rune);

  String strData = "Hello world";
  rune = strData.runes;

  List<int> list = strData.codeUnits;
  print(list);

  List<int> dataList = [...list];
  dataList.removeLast();
  print(dataList);
  //#exam question
  String text = 'abduraxmonov_1998_3_abduraxmonovich_5';

  List<String> filteredList = text.split('_');
  print(filteredList);
  List list2 = List.empty(growable: true);
  for (var element in filteredList) {
    var codeUnitElement = element.codeUnitAt(0);
    if (47 < codeUnitElement && codeUnitElement < 58) {
      list2.add(element);
    }
  }

  print(list2);
  list2 = list2.map((e) => num.tryParse(e)).toList();
  print(list2.first.runtimeType);

  text = 'abduraxmonov_1998_3_abduraxmonovich_5';
  List<int> textCodeUnits = text.codeUnits;
  print(textCodeUnits);
  String empty = '';
  empty = String.fromCharCodes(textCodeUnits.toSet());
  print(empty);

  var emoji = '\u{1f630}';
  print(emoji);

  print(int.tryParse('1F600', radix: 16));
  print(int.tryParse('1f46f', radix: 16));
  int number = 0x1f600;
  var buffer = StringBuffer();
  List<String> lt = ['\u{1F600}', '\u{1f603}', '\\u{$number}'];
  lt.forEach(print);

  Runes runes = 'Salom'.runes;
  List<int> codeUnits = 'Salom'.codeUnits;

  for (var rune in runes) {
    print(String.fromCharCode(rune));
  }

  print(String.fromCharCodes([121, 34, 79, 50]));
  Runes emojiRunes = Runes('\u{1f603}');
  print(emojiRunes);

  List<int> dataList1 = List.generate(26, (index) => 97 + index);

  String data1 = String.fromCharCodes(dataList1);
  print(data1);

  list2 = data1.split('');
  print(list2);
  print(list2.join('_'));

  String text1 = '2023 PDP Online@@@';

  var filteredData =
      text1.codeUnits.where((e) => (64 < e && 91 > e) || (96 < e && e < 123));

  print(filteredData);
  print(String.fromCharCodes(filteredData));

  List emptyList = [];
  for (var item in text1.split('')) {
    var codeUnit = item.codeUnits.single;
    if ((64 < codeUnit && 91 > codeUnit) || (96 < codeUnit && codeUnit < 123)) {
      emptyList.add(codeUnit);
    }
  }

  print(emptyList);

  int c = 67;

  int a = 45 * c;
  print(a.hashCode);

  double b = 45.0 * c;

  print(b.hashCode);

  User user1 = User(age: 18, name: 'Asliddin');
  User user2 = User(age: 18, name: 'Asliddin');

  print(user1.hashCode);
  print(user2.hashCode);
  //&cascade operator
  int? zero;
  var second = zero ?? -1;

  Queue queue = Queue.from([1, 2, 3, 4]);
  queue.addFirst(34);
  print(queue);

  queue.addLast(56);
  print(queue);

  //&FIFO
  Queue strQueue = Queue.of('Salom'.split(''));

  print(strQueue);

  print(strQueue.elementAt(3));

  show();
  show();
  show();
}

class User {
  final int age;
  final String name;

  const User({required this.age, required this.name});
}
