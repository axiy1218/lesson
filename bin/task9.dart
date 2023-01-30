import 'dart:math';

void main(List<String> args) {
  var mapData = {
    for (var i = 1; i <= 100; i++)
      if (i.isEven) 'key $i': i
  };

  mapData.removeWhere((key, value) => value % 10 == 0);
  print(mapData);

  List<int> lt = List.generate(10, (index) => index * index);
  print(lt);
  lt.shuffle(Random());
  print(lt);
//& bubble sort
  for (var i = 0; i < lt.length; i++) {
    for (var j = 0; j < lt.length - i - 1; j++) {
      if (lt[j] > lt[j + 1]) {
        var item = lt[j];
        lt[j] = lt[j + 1];
        lt[j + 1] = item;
      }
    }
  }
//&array 14
  print(lt);

  lt = List.generate(12, (index) => index);

  for (var i = 0; i < lt.length; i += 2) {
    print('A[$i]=${lt[i]}');
  }
//&array 18
  lt.shuffle(Random());

  print(lt);

  var lastElement = lt.last;
  for (var item in lt) {
    if (lastElement > item) {
      print(item);
      break;
    }
  }
}
