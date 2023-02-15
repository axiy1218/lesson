void main() {
  dynamic mp = {
    "id": {'text': 'Hello1', "name": 'ok', "object": 'zero'},
    "fio": {'text': 'Hello2', "name": 'ok', "object": 'zero'},
    "1": {'text': 'Hello3', "name": 'ok', "object": 'zero'},
    "3": {'text': 'Hello4', "name": 'ok', "object": 'zero'},
  };

  Map<String, dynamic> data = mp as Map<String, dynamic>;

  List lt = data.keys.toList();
  print(lt);

  List<MapEntry?>? lt1 = [];

  for (var entry in data.entries) {
    lt1.add(MapEntry(entry.key, Data.fromJson(entry.value)));
  }
  var newMap = {};
  newMap.addEntries(Iterable.castFrom(lt1));
  print(lt1);

  print(newMap);
}

class Data {
  String? text;
  String? name;
  String? object;

  Data({this.name, required this.object, required this.text});

  Data.fromJson(Map<String, dynamic> json)
      : text = json['text'],
        name = json['name'],
        object = json['object'];

  @override
  String toString() {
    return "text -- >$text";
  }
}
