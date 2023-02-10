/*
Created by Axmadjon Isaqov on 09:00:42 10.02.2023
© 2023 @axi_dev 
*/
/*
?Theme:::Clases
*/

import 'circle.dart';
import 'user.dart';
import 'mobile.dart';

void main(List<String> args) {
  //*-------------object hosil qilish
  User user = User(
    createdDate: DateTime.now(),
    id: '545748ddfd',
    password: '34356565',
  );

  print(user.toString());
  //*-------------setter orqali qiymat berish
  user.usernameInfo = 'user_g6';

  print(user.toString());

  print(user.usernameInfo);
  //*-------------class funksiyasini chaqirish
  user.showUserInfo();

  print(user.username);

  Map<String, dynamic> userDataMap = {
    'id': 'h5kj4j5h4jh',
    "password": "ieurieuru",
    'username': 'hero1',
    'createdDate': DateTime.now()
  };

  User user2 = User.fromJson(userDataMap);
  print(user2);
  print(user2.usernameInfo);

  Map<String, dynamic> userData = user2.toJson();
//*-------------Mobile objects
  print('---------------------------galaxy--------------------------');
  Mobile galaxy = Mobile(
      model: 'Galaxy s23 ultra',
      id: '4548fdfn',
      dateTime: DateTime(2023),
      company: 'samsung');
  galaxy.showInfo();
  print('---------------------------iphone-------------------------');
  //*-------------Mobile Object
  Map<String, dynamic> iphoneData = {
    'model': 'iPhone 14 pro max',
    'id': '4589485jfdfjdk',
    'dateTime': DateTime(2022),
    'company': 'Apple',
  };

  Mobile iphone = Mobile.fromJson(iphoneData);
  iphone.showInfo();

  print(Mobile.counter);

  Mobile.countObjects();

  print(Mobile.counter);

  Circle circe = Circle();
  circe.getInfo();

  Circle.calculateArea();
}

class AppImages {
  static const image1 = 'C:app/assets/image.jpg';
  static const image2 = 'C:app/assets/image.jpg';
  static const image3 = 'C:app/assets/image.jpg';
  static const image4 = 'C:app/assets/image.jpg';
}
