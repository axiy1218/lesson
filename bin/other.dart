import 'package:characters/characters.dart';

void main(List<String> args) {
  print(doubleChar('The'));
  print(doubleCharTwo(Characters('The')));
  CharacterRange range = Characters('hh<html>lll').findFirst('<'.characters)!;
  bool tugadi = range.moveUntil('>'.characters);
  if (tugadi) {
    print(range.currentCharacters);
  }
}

String doubleChar(String str) {
  StringBuffer buffer = StringBuffer();
  for (var item in str.split('')) {
    buffer.write(item * 2);
  }
  return buffer.toString();
}

Characters doubleCharTwo(Characters source) {
  Characters chars = source;
  Characters result = Characters('');
  for (var element in chars) {
    result = Characters(result.string + element * 2);
  }
  return result;
}
