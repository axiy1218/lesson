/*
Created by Axmadjon Isaqov on 09:44:39 01.02.2023
© 2023 @axi_dev 
*/
/*
?Theme:::Imthon dart 1-modul
*/

void main(List<String> args) {
  List lt = [2, 3, 4, 8, 13, 9];

  int kop = 1;

  for (int item in lt) {
    int counter = 0;

    for (var i = 2; i <= item; i++) {
      if (item % i == 0) {
        counter++;
      }
    }

    if (counter == 1) {
      kop *= item;
    }
  }

  print('tub sonlar kopaytmasi:::$kop');
}
