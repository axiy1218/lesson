void main(List<String> args) {
  var age = 27;
  var name = "Jon";

  User user = User(age: age, info: showInfo, name: name);

  user.info(user.age, user.name);
}

//*-------------function
void showInfo(int age, String name) {
  print('name:::$name');
  print('age:::$age');
}

//*-------------typedef
typedef VoidFunction = void Function(int, String);

//*-------------class
class User {
  String name;
  int age;
  VoidFunction info; //void Function(int,String) info

  User({required this.age, required this.info, required this.name});
}
