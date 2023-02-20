/*
Created by Axmadjon Isaqov on 11:23:54 20.02.2023
© 2023 @axi_dev 
*/
/*
?Theme:::Exceptions
*/

void main(List<String> args) {
  try {
    throw RangeError('Arguments not found');
  } on ArgumentError catch (e, s) {
    print(e);
    print(s);
  }

  try {
    bool? isNum = isNumber('a56y');
    print(isNum);
  } on ArgumentError catch (e) {
    print(e);
    print(e.message);
  }
}

bool isNumber(String number) {
  if (48 <= number.codeUnitAt(0) && number.codeUnitAt(0) <= 57) {
    return true;
  } else {
    throw ArgumentError('raqam emas');
  }
}
