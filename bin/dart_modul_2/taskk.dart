void main() {
  String t = "abdurashid_1998_abdurahmonov_3_abdurahmonov_5_";
  List st1 = t.split('_');
  print(st1);
  List k = List.generate(10, (index) => '$index');
  print(k);

  List n = st1.map((e) {
    print(e);
    if (e.isEmpty) {
      return e;
    }
    if (k.contains(e[0])) {
      return int.parse(e);
    }
    return e;
  }).toList();
  print(n);
  n = n.whereType<int>().toList();
  print(n);
  var min = n.first;
  for (var element in n) {
    if (element < min) {
      min = element;
    }
  }
  print(min);
}
