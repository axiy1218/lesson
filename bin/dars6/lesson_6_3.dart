void main(List<String> args) {
  Counter<double> counter = Counter<double>();

  counter.addAll([2.3, 5676, 667, 34]);

  counter.totalSumm();
  print('-----------------------------------------------------');
  double result = func<double>(12.1, 4.5);
  print(result);

  int result2 = func<int>(34, 78);
  print(result2);

  num result3 = func(34, 3.5);
  print(result3);
  print('-----------------------------------------------------');
  printInfo<int, String>(56, 'Flutter');
  printInfo<String, num>('G6', 45);
}

void printInfo<T, E>(T a, E b) {
  print('T : $a');
  print('E : $b');
}

T func<T extends num>(T a, T b) => (a * b) as T;

class Counter<T extends num> {
  final List<T> _storage;

  Counter() : _storage = List<T>.empty(growable: true);

  void addAll(Iterable<T> values) => _storage.addAll(values);

  void totalSumm() {
    var summ = _storage.reduce((value, element) => (value + element) as T);
    print('Summa::$summ');
  }
}
