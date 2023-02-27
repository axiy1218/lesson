void main(List<String> args) async {
  getStr().then((value) => print(value));
  getNumber().then((value) => print(value));

  Future.wait([
    getStr(),
    getNumber(),
  ]).then((value) => print(value));

  //Future.error(ArgumentError());

  var result = await Future.any([getStr(), getNumber()]);
  print("Result:::$result");
//*-------------check
  Future.sync(() => 600).then((value) => print(value));
}

Future<String> getStr() async {
  await Future.delayed(Duration(seconds: 4));
  return "Flutter G6";
}

Future<int> getNumber() async {
  await Future.delayed(Duration(seconds: 2));
  return 90;
}
