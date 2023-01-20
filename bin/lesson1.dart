/*
Created by Axmadjon Isaqov on 09:05:38 20.01.2023
© 2023 @axi_dev 
*/
/*
Theme:::Strings,Numbers
*/

void main(List<String> args) {
  num? number = 35.634534878;
  String numerAsString = number.toStringAsFixed(20);
  print(numerAsString);

  int? number2 = 16;
  String hexNumber = number2.toRadixString(16);
  print('numer in hexadecimal :: $hexNumber');
  number2 = int.tryParse(hexNumber, radix: 16);
  print(number2);

  print(number2!.toStringAsExponential(3));
  print(number2.toStringAsExponential(2));

  int number3 = 334754;
  String numberStr = number3.toString();
  String butun = numberStr[0];
  numberStr = numberStr.substring(1);
  String result = numberStr + butun;
  print(int.tryParse(result));

  int numer3 = 373;
//!int11
  int summ = 0;
  while (numer3 != 0) {
    summ += numer3 % 10;
    numer3 ~/= 10;
  }

  print(summ);

  //!int10
  numer3 = 345;
  while (numer3 != 0) {
    if (0 < numer3 && numer3 < 10) break;
    print(numer3 % 10);
    numer3 ~/= 10;
  }

  BigInt? bigNumber = BigInt.tryParse('8723648762378462773467632784632784638');

  print(bigNumber!.isEven);
//!int24
  numer3 = 30;
  int qoldiq = numer3 % 7;
  switch (qoldiq) {
    case 0:
      print('Yakshanba');
      break;
    case 1:
      print('Dushanba');
      break;
    case 2:
      print('Seshanba');
      break;
    case 3:
      print('Chorshanba');
      break;
    case 4:
      print('Payshanba');
      break;
    case 5:
      print('Juma');
      break;
    case 6:
      print('Shanba');
      break;
  }

  final String satr;
  satr = 'O\'zbekiston';
  var str1 = "O'zbekiston";
  var str2 = 'Salom\nFlutter\nG6';
  var str3 = """
Salom
Flutter
g6
""";
  print('Sart :: $satr');

  print('Matn1::$str2');

  print('Matn2::\$str3');

  print(r'hello\nworld ' + '$str1');
  print('\tSalom');

  print('\u{1f600}');

  print('\u{1f603}');

  str3 = 'Flutter Developers';

  print("bu bosh String:::" + str3.isEmpty.toString());

  print("bu bosh bolmagan String:::" + str3.isNotEmpty.toString());

  print("bu ikki string teng :::" + str3.compareTo(str2).toString());

  print(str3.contains(" Dev", 7));
//? oxiridan tekshiradi
  print(str3.endsWith('pers'));
//! boshidan tekshiradi
  print(str3.startsWith('Flu'));

  print(str3.indexOf('t'));
  print(str3.lastIndexOf('t'));
  str3 = 'FulutelrrtjFk';

  for (var i = 0; i < str3.length; i++) {
    int start = str3.indexOf(str3[i]);
    int end = str3.lastIndexOf(str3[i]);
    if (start == end) {
      print(str3[i]);
    }
  }
//!chapdan toldirish
  str3 = 'dlf';
  str3 = str3.padLeft(10, '*');
  print(str3);
  print(str3);

  //!oxiridan toldirish

  str1 = 'g6';
  str1 = str1.padRight(6, "\$");
  print(str1);
  str1 += 'g6';

  str1 = str1.replaceAll('g6', '#');
  print(str1);

  String binarStr = '1100110001';

  binarStr = binarStr.replaceAll('1', '*');
  print(binarStr);

  binarStr = binarStr.replaceAll('0', '1');

  print(binarStr);

  binarStr = binarStr.replaceAll('*', '0');
  print(binarStr);

  str1 = '';
  for (var i = 0; i < binarStr.length; i++) {
    if (binarStr[i] == '0') {
      str1 += '1';
    } else if (binarStr[i] == '1') {
      str1 += '0';
    }
  }

  print(str1);
  str1 = 'Flutter';
  print(str1.substring(4, 6));
}
