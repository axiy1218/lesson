/*
Created by Axmadjon Isaqov on 09:02:49 25.01.2023
© 2023 @axi_dev 
*/
/*
*/
void main(List<String> args) {
  String str1 = 'Today is very cold day';

  String? satr2 = str1.replaceFirst('day', '');

  print(satr2);

  //& String32
  str1 = 'Today is very cold day';

  satr2 = 'day';
  var counter = 0;
  var str3 = str1.replaceAll(satr2, '&');
  for (var item in str3.split('')) {
    if (item == '&') {
      counter++;
    }
  }
  //*String 32
  print('------------------32-masala--------------------');
  print(counter);
  counter = 0;
  for (var i = 0; i <= str1.length - satr2.length; i++) {
    if (str1.substring(i, satr2.length + i) == satr2) {
      counter++;
    }
  }
  print('------------------33-masala--------------------');
  print(counter);
}
