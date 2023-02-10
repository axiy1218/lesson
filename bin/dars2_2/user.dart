//*data class
class User {
  //& attribute or fields
  String? id;
  String? password;
  String? username;
  DateTime? createdDate;

  //*constructor
  User({this.id, this.password, this.username = "user0", this.createdDate});

  //*constructor
  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    password = json['password'];
    username = json['username'];
    createdDate = json['createdDate'];
  }

  //* to Json
  Map<String, dynamic> toJson() => {
        'id': id,
        'password': password,
        'username': username,
        'createdDate': createdDate
      };

//* setter
  set usernameInfo(String newUsername) {
    username = newUsername;
  }

//* getter
  String get usernameInfo => username!;

  @override
  String toString() {
    return '''
ID:::$id
USERNAME:::$username,
CREATED_DATE:::$createdDate,
PASSWORD:::$password
''';
  }

//* function or method
  void showUserInfo() {
    print(toString());
  }
}
