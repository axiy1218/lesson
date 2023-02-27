void main(List<String> args) {
  String str = "ali_1998_abdurashidov_3_abduraxmonovich_5_";
  Set st = str.split('').toSet();
  List<MapEntry> en = [];
  for (var element in st) {
    var c = 0;
    for (var char in str.split('')) {
      if (element == char) {
        c++;
      }
    }
    en.add(MapEntry(element, c));
    // print(en);
  }
  var max = 0;
  for (var ent in en) {
    if (ent.value > max) {
      max = ent.value;
    }
  }
  for (var ent in en) {
    if (ent.value == max) {
      print(ent);
    }
  }
}
