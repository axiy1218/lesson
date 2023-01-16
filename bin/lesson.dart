/*
Created by Axmadjon Isaqov on 10:23:56 16.01.2023
© 2023 @axi_dev 
*/
/*
Theme:::Loops
*/

import 'dart:math';

void main(List<String> args) {
  //! bool16
  var number = 96;
  if (number.toString().length == 2 || 9 < number && number < 100) {
    if (number % 2 == 0) {
      print('result : True');
    }
  }
  //! bool18
  var b = 67;
  var c = 58;
  if (number == b || number == c || c == b) {
    print('Result : True');
  } else {
    print('result : False');
  }
//? bool19
  if (number + b == 0 || number + c == 0 || b + c == 0) {
    print('True');
  } else {
    print('False');
  }

  //? bool20
  number = 731;
  b = number % 10; //!4
  c = (number ~/ 10) % 10; //!3
  number = number ~/ 100; //!2

  print(number == b && b == c);

  //! bool21-22

  print(number < c && c < b || number > c && c > b);

//! bool 36
  var pointOne = Point(5, 6);
  var pointTwo = Point(3, 6);

  var isInFirst = pointOne.y <= 4;
  var isWay =
      ((pointOne.x - pointTwo.x).abs() == 0 && (pointOne.y != pointTwo.y)) ||
          ((pointOne.y - pointTwo.y).abs() == 0 && (pointOne.x != pointTwo.x));

  var canRun = isInFirst ? pointTwo.y > 4 && isWay : pointTwo.y <= 4 && isWay;
  if (isInFirst) {
    print(pointTwo.y > 4 && isWay);
  } else {
    print(pointTwo.y <= 4 && isWay);
  }

  var summ = 0;
  var number1 = 10;
  for (var i = 1; i <= 10; i++) {
    summ += i;
  }
  print('Summ::$summ');
  print('Summ::${((number1) * (number1 + 1)) / 2}');

  Iterable<int> massiv = {10, 12, 2, 33, 4, 5, 6, 7, 8, 9, 10};
  print(massiv);

  for (var item in massiv) {
    print('Item::' + item.toString());
  }
  print('%' * 30);
  for (var i = 0; i < massiv.length; i++) {
    print('Item::' + massiv.elementAt(i).toString());
  }

  Iterable<String> data = [
    'Salom',
    'Dunyo',
    'A',
    'B',
    'C',
  ];
  print(data);
  for (var element in data) {
    print('Element:: $element');
  }

  var i = 0;
  while (i < data.length) {
    print(data.elementAt(i));
    i++;
  }

  i = 0;
  do {
    print(data.elementAt(i));
    i++;
  } while (data.length > i);

  for (var element in data) {
    print(element);
    if (element.toLowerCase() == 'a') break;
  }

  Iterable<String> nameData = ['A', 'x', 'm', 'a', 'd', 'j', 'o', 'n'];

  for (var element in nameData) {
    print(element);
    if (nameData.toList().indexOf(element) == 5) break;
  }

  Iterable<String> massiv4 = [
    'A',
    'b',
    'b',
    'o',
    's',
    'a',
    'b',
    'b',
    'o',
    's',
  ];
  for (var element in massiv4) {
    print(element);
    if (massiv4.toList().indexOf(element) == 5) {
      break;
    }
  }
}
