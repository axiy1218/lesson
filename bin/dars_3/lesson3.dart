/*
Created by Axmadjon Isaqov on 09:01:22 13.02.2023
© 2023 @axi_dev 
*/
/*
?Theme:::Clases
*/
import 'dart:math';

import '../lesson.dart';

void main(List<String> args) {
  PrimeNumbers prime = PrimeNumbers(number: 20);
  prime.countPrimes;

  printLine;
  prime.getPrimes;
}

class PrimeNumbers {
  int? number;
  PrimeNumbers({required this.number});
//*-------------1-usul
  get countPrimes {
    for (var i = 2; i <= number!; i++) {
      var isTub = true;
      for (var j = 2; j <= sqrt(i); j++) {
        if (i % j == 0) {
          isTub = false;
          break;
        }
      }
      if (isTub) {
        print(i);
      }
    }
  }

//*-------------2-usul
  get getPrimes {
    for (var i = 2; i < number!; i++) {
      if (countElements(i) == 0) {
        print(i);
      }
    }
  }

  int? countElements(int i) {
    var counter = 0;
    for (var j = 2; j < i; j++) {
      if (i % j == 0) {
        counter++;
      }
    }
    return counter;
  }
}
