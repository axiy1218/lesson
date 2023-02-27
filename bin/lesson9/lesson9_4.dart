typedef GreetFunction = String Function(String);
typedef LI = List<int>;

typedef JustFunction = double Function(int, int);

typedef IterableFunction = List<int> Function(Iterable<int>);
void main(List<String> args) {
  GreetFunction myTypedefFunction = getName;
  print(myTypedefFunction("Jon"));

  myTypedefFunction = sayHi;
  print(myTypedefFunction("Jon"));

  myTypedefFunction = sayGoodBye;
  print(myTypedefFunction("Jon"));

  GreetFunction func = getName;
  print(func("Tom"));

  LI list = <int>[
    45,
    78,
    89,
    234,
  ];

  IterableFunction function = iterableToList;
  print(function([23, 45, 67, 9]));
}

String getName(String name) => name;

String sayHi(String name) => "Hi $name";

String sayGoodBye(String name) => "Bye $name";

List<int> iterableToList(Iterable<int> iterable) {
  return iterable.toList();
}
