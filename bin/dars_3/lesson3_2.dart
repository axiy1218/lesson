/*
Created by Axmadjon Isaqov on 09:55:26 13.02.2023
© 2023 @axi_dev 
*/
/*
?Theme:::Objects
*/

void main(List<String> args) {
  User user1 = User(age: 20, name: 'Tom', id: '78');
  User user2 = user1;
  print(identical(user1, user2));
  User user3 = User(age: 20, name: 'Tom', id: '78');
  print(identical(user1, user3));
  print(user1.hashCode);
  print(user3.hashCode);
  print(user1 == user3);

  User user4 = User(age: 56, name: 'Jon', id: 'hi45')
    ..ageInfo
    ..nameInfo
    ..ageInfo;

  Vector2D vectorA = Vector2D(2, 3);
  Vector2D vectorB = Vector2D(8, 90);
  Vector2D vectorC = vectorA + vectorB;
  print(vectorC);
  print(vectorC[0]);
  print(vectorC[1]);
}

class User {
  String id;
  int age;
  String name;
  User({required this.age, required this.name, required this.id});

  //*-------------operator overloaing
  @override
  bool operator ==(Object other) {
    return (other is User) &&
        identical(id, other.id) &&
        identical(name, other.name) &&
        identical(age, other.age);
  }

  get ageInfo => print("AGE::$age");
  get nameInfo => print('NAME::$name');
}

class Vector2D {
  num x;
  num y;
  Vector2D(this.x, this.y);
//*-------------operator overloading
  Vector2D operator +(Vector2D boshqa) => Vector2D(x + boshqa.x, y + boshqa.y);
//*-------------operator overloading
  num? operator [](int? n) {
    if (n == 0) {
      return x;
    } else if (n == 1) {
      return y;
    }
    return -1;
  }

  @override
  String toString() {
    return 'Vector2D($x,$y)';
  }
}
