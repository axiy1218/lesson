/*
Created by Axmadjon Isaqov on 10:23:56 16.01.2023
© 2023 @axi_dev 
*/
/*
Theme:::Data Types,Number,String,Boolean
*/

import 'dart:math';

void main(List<String> args) {
  print('------------------1-misol----------------');
  int? number = 20;
  double? number2 = double.nan;
  number2 = 34.5;
  num? number3 = 34;

  number2 = number.toDouble();

  String strNumber = "1235";
  num raqam1 = num.parse(strNumber) + 1;
  num? raqam = num.tryParse(strNumber)! + 1;

  print(raqam);
  print(raqam1);
}

void get printLine => print('@' * 30);
