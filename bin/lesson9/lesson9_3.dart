/*
Created by Axmadjon Isaqov on 10:13:04 27.02.2023
© 2023 @axiydev 
*/
/*
Mavzu:::typedef
*/

import 'dart:math';

typedef B = int;

typedef IntFunction = int Function(int);

void main(List<String> args) {
  B first = 45;
  print(first);

  IntFunction myFunction = getNumber;
  print(myFunction(56));

  myFunction = getNumberSaquare;
  print(myFunction(7));
}

int getNumber(int n) => n;

int getNumberSaquare(int n) => pow(n, 2).toInt();
