/*
Created by Axmadjon Isaqov on 09:05:27 20.02.2023
© 2023 @axi_dev 
*/
/*
?Theme:::Generics
*/

typedef VoidFunction = void Function(String);
typedef _BL = List<bool>;

void main(List<String> args) {
  _BL dataList = [true, false];

  VoidFunction? function = printInfo;
  function('Flutter g6');

  function = logInfo;
  function('Flutter Devs');

  int result = addAnyTypes<int>(12, 9);
  print(result);

  String str = addAnyTypes<String>('Flutter ', 'G6');

  print(str);

  List<int> resultList = addAnyTypes<List<int>>([
    23,
    56,
    78,
    0,
    90
  ], [
    12,
    45,
    78,
    456,
  ]);

  print(resultList);

  Set<num> dataNumbers = <num>{};
  dataNumbers.addAll({34, 56, 78.9, 90.5});
  print(dataNumbers);

  Set dataSet = {};

  dataSet.add(true);
  dataSet.add(34);
  dataSet.add('Flutter');
  Map<String, dynamic> dict = {"name": "Tom", "age": 29, "isOnline": true};
}

//*-------------add
T addAnyTypes<T extends dynamic>(T a, T b) {
  return a + b;
}

void printInfo(String data) => print(data);

void logInfo(String data) =>
    print('---------------------------$data--------------------------');
