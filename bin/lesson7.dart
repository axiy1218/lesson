/*
Created by Axmadjon Isaqov on 09:13:05 23.01.2023
© 2023 @axi_dev 
*/
/*
!Theme:::Data Types,String,Bool,Integer
*Regular Expressions
*/

import 'lesson.dart';

void main(List<String> args) {
  RegExp regex = RegExp('c.t');

  String text = 'This is a cat';
  var text2 = 'cuut';
  var text3 = 'ct';
  print(text.contains(regex));

  print(regex.hasMatch(text));

  print(regex.hasMatch(text2));
  print(regex.hasMatch(text3));

  printLine;
  regex = RegExp('c.?t');
  print(regex.hasMatch(text3));

  regex = RegExp('c(ab)+t');
  printLine;
  print(regex.hasMatch('cababababt'));
  print('%' * 30);
  regex = RegExp('cab+t');
  print(regex.hasMatch('cabbbbbbbbbbt'));
  printLine;
  regex = RegExp('ca*t');

  print(regex.hasMatch('ct'));

  printLine;
  regex = RegExp('c.*t');

  print(regex.hasMatch('caassdfhkhdksft'));

  printLine;

  regex = RegExp(r'b[ao]\*t');

  print(regex.hasMatch('ba*t'));

  printLine;

  regex = RegExp(r'b[^ao]t');

  print(regex.hasMatch('but'));
  printLine;
  regex = RegExp('[0-9]+at');
  print(regex.hasMatch('a77at'));
  printLine;
  regex = RegExp('^[0-9]+at');
  print(regex.hasMatch('77at'));
  printLine;
  regex = RegExp(r'^[0-9]+.$');
  print(regex.hasMatch('353445643543t'));
  printLine;
  regex = RegExp(r'[0-9]+$');

  print(regex.hasMatch('a834758748755'));

  printLine;
  regex = RegExp(r'^[0-9][a-z]$');

  print(regex.hasMatch('5a'));

  printLine;
  regex = RegExp(r'.{1,12}');

  print(regex.hasMatch('r' * 13));

  printLine;
  regex = RegExp(r'.{12,20}');
  print(regex.hasMatch('t' * 32));

  const text4 = '''
<h1>Flutter g6</h1>
<h1>Ppd academy6</h1>
<h1>Isaqov Axmadjon7</h1>
''';

  String nextStr = text4.replaceAll('<h1>', '');
  nextStr = nextStr.replaceAll('</h1>', '');
  print(nextStr);

  regex = RegExp(r'<h1>(.+([a-z][0-9]))</h1>');
  var matches = regex.allMatches(text4);

  for (var item in matches) {
    print(item.group(2));
  }

  regex = RegExp(
      r'^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}$');

  var password = 'Facb99F@';
  if (regex.hasMatch(password)) {
    print('This is Strong password');
  } else {
    print('Not Strong password');
  }



  
  text3 = 'Flutter@Devel@oper';
  var charItem = '@';
  String emptyString = '';
  for (var i = 0; i < text3.length; i++) {
    emptyString += text3[i];
    if (charItem == text3[i]) {
      emptyString += text3[i];
    }
  }

  print(emptyString);
}
