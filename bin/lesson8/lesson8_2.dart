void main(List<String> args) async {
  String data = await getInfo(3)
      .then((value) {
        print("then first :$value");
        return value;
      }, onError: (err) {
        print(err);
        throw FormatException();
      })
      .whenComplete(() => print('TUDAI'))
      .then((value) {
        print('then second:::$value');
        return value;
      }, onError: (error) {
        print('then second ERROR:::$error');
        return 'ERROR SECOND';
      })
      .catchError((err) {
        print(err);
        return 'Error';
      })
      .whenComplete(() => print('TUDAI'));

  print("DATA::::$data");
}

Future<String> getInfo(int n) async {
  if (n.isEven) {
    return '$n';
  }
  throw ArgumentError.value(n);
}
