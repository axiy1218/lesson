/*
Created by Axmadjon Isaqov on 10:14:28 22.02.2023
© 2023 @axiydev 
*/
void main(List<String> args) {
  String strNumber = '45u98';
  int? result = int.tryParse(strNumber);
  print(result);

  List list = ["123", "23a", "9013", "34", "71f72"];
  for (var element in list) {
    if (int.tryParse(element) != null) {
      print(int.tryParse(element));
    }
  }
  print('&' * 30);
  for (var element in list) {
    try {
      int result = int.parse(element);
      print(result);
    } catch (e) {}
  }

  List lt = List.generate(10, (index) => index);
  print(lt);

  var resultData = lt.firstWhere((element) => element == 11,
      orElse: () => 'Bu element listda mavjud emas');

  print(resultData);
}
