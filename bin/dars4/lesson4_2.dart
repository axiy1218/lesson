/*
Created by Axmadjon Isaqov on 09:32:04 15.02.2023
© 2023 @axi_dev 
*/
/*
?Theme:::Eumeration
*/

enum Fasl { bahor, yoz, kuz, qish, none }

void main(List<String> args) {
  Fasl fasl = Fasl.bahor;

  switch (fasl) {
    case Fasl.bahor:
      print('Bahor');
      break;
    case Fasl.yoz:
      print('Yoz');
      break;
    case Fasl.kuz:
      print('Kuz');
      break;
    case Fasl.qish:
      print('Qish');
      break;
    case Fasl.none:
      print('Bunday fasl marsda bor');
  }
  //*-------------index of enumeration
  print(Fasl.bahor.index);

  List<Fasl> faslList = Fasl.values;

  print(fasl.name);

  print(fasl.index);

  print(faslList);

  print(numberToText(56));
  print(numberToText(78));
  print(numberToText(30));
}

String? numberToText(int number) {
  String? text = '';
  var qoldiq = number % 10;
  var butun = number ~/ 10;

  switch (butun) {
    case 1:
      text += 'o\'n ';
      break;
    case 2:
      text += 'yigirma ';
      break;
    case 3:
      text += 'o\'ttiz ';
      break;
    case 4:
      text += 'qirq ';
      break;
    case 5:
      text += 'ellik ';
      break;
    case 6:
      text += 'oltmish ';
      break;
    case 7:
      text += 'yetmish ';
      break;
    case 8:
      text += 'sakson ';
      break;
    case 9:
      text += 'to\'qson ';
      break;
  }

  switch (qoldiq) {
    case 1:
      text += 'bir';
      break;
    case 2:
      text += 'ikki';
      break;
    case 3:
      text += 'uch';
      break;
    case 4:
      text += 'to\'rt';
      break;
    case 5:
      text += 'besh';
      break;
    case 6:
      text += 'olti';
      break;
    case 7:
      text += 'yetti';
      break;
    case 8:
      text += 'sakkiz';
      break;
    case 9:
      text += 'to\'qqiz';
      break;
  }
  return text;
}
