/*
Created by Axmadjon Isaqov on 08:51:37 30.01.2023
© 2023 @axi_dev 
*/
/*
!Theme:::Lists,Maps,Runes
*/
void main(List<String> args) {
  Map<String, dynamic> userData = {
    "user": "Patrick",
    'username': '@ppp1267',
    'age': 38,
  };

  userData.forEach((key, value) {
    print('k=$key   ,  value=$value');
  });
  //& Mapdagigi keylarni iterablega oladi
  Iterable<String> dataStr = userData.keys;
  print(dataStr);
  //&Mapdagi valuelarni iterablega oladi
  Iterable dataValue = userData.values;
  print(dataValue);
//& mapge boshqa mapni qoshadi
  userData.addAll({
    'profession': 'Flutter Developer',
    'hobby': 'Watching movies',
    'age': 50
  });

  print(userData);
//& mapge boshqa mapni qoshadi 2
  userData.addEntries({MapEntry('weight', 70), MapEntry('height', 178)});

  print(userData);

  // Map<String, String> newUserData = userData.cast<String, String>();
  // print(newUserData);

  Map<String, dynamic> newUserData = userData.map((key, value) =>
      value is String ? MapEntry(key, "Qiymat $value") : MapEntry(key, value));
  print(newUserData);

  List numberList = [
    for (var i = 1; i <= 100; i++)
      if (i.isEven) i
  ];
  print(numberList);

  Map<String, dynamic> dataMap = {
    for (var i = 1; i <= 100; i++)
      if (i.isEven) 'key $i': i
  };
  print(dataMap);

  bool hasAge = false;

  var dataMap2 = {'user': 'Tom', if (hasAge) 'age': 17};
  print(dataMap2);
//&shartga tushadigan qiymatlarni ochiradi
  userData.removeWhere((key, value) => value is int);

  print(userData);

  for (var entry in userData.entries) {
    if (entry.value is int) {
      continue;
    }
    print(entry);
  }

  var dataMap3 = <String, dynamic>{
    'user': 'tom',
    'grades': [3, 4, 5]
  };

  print(dataMap3['grades'][1]);

  var grades = dataMap3['grades'];
  if (grades is List) {
    print(grades[1]);
  }

  var updatedValue = dataMap3.update('user', (value) => 'Jerry');
  print('\x1B[30m$dataMap3\x1B[0m');
  print('\x1B[31m$updatedValue\x1B[0m');
  print('\x1B[32m$dataMap3\x1B[0m');
  print('\x1B[33m$updatedValue\x1B[0m');
  print('\x1B[34m$dataMap3\x1B[0m');
  print('\x1B[35m$updatedValue\x1B[0m');

  dataMap3.updateAll((key, value) {
    if (value is String) {
      return 'Hello $value';
    }
    return value;
  });
  print(dataMap3);

  for (var entry in dataMap3.entries) {
    if (entry.value is String) {
      // dataMap3.update(entry.key, (value) => value.toUpperCase());
      dataMap3[entry.key] = entry.value.toUpperCase();
    }
  }

  print(dataMap3);
  dataMap3 = {'name': 'Tom', 'age': 20};
  //&agar berilgan key da value bolmasa mapga qoshadi aks holda o`zgarishsiz qoladi
  var data = dataMap3.putIfAbsent('user', () => 'Jerry');
  print(data);
  print(dataMap3);

  Map<String, dynamic> mapData = {}
    ..addAll(dataMap3)
    ..addAll(dataMap2);

  List myList = [12, 34, 6, 78, 90];
  var myOtherList = [...myList];

  print(myOtherList);
  myList.removeLast();
  print(myOtherList);

  Set<int> aToplam = {1, 2, 3, 4};
  Set<int> bToplam = {3, 4, 5, 6};

  Iterator iterator = aToplam.iterator;
  while (iterator.moveNext()) {
    print(iterator.current);
  }

  if (aToplam.contains(3)) {
    print('Toplamda 3 elementi mavjud');
  }

  var head = Node<int>(value: 3);
  var middle = Node<int>(value: 7);
  var tail = Node<int>(value: 5);
  head.next = middle;
  middle.next = tail;
  tail.next = null;

  while (head.next != null) {
    print(head.value);
    head = head.next!;
  }
}

class Node<T> {
  T? value;
  Node<T>? next;
  Node({required this.value, this.next});
}
