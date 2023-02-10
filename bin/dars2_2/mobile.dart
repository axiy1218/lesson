class Mobile {
  String? id;
  String? model;
  String? company;
  DateTime? dateTime;
  //&constructor
  Mobile(
      {required this.id,
      required this.model,
      required this.dateTime,
      required this.company}) {
    countObjects();
  }
  //&named conctructor
  Mobile.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    model = json['model'];
    dateTime = json['dateTime'];
    company = json['company'];
    countObjects();
  }

  // set model(String? model) {
  //   _model = model;
  // }

  // String? get model => _model;

  void showInfo() {
    print('''
model:::$model
id:::$id
company:::$company''');
  }

  //*-------------static variable
  static int counter = 10;
  //*-------------static function
  static void countObjects() {
    counter++;
  }
}
