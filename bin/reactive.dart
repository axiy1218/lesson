import 'package:rxdart/rxdart.dart';

void main(List<String> args) async {
  final counterBloc = Counter();
  counterBloc.subject.listen((value) {
    print('Listen:::$value');
  });
  for (var i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    counterBloc.increment();
  }
}

class Counter {
  late final BehaviorSubject<int> _subject;
  int _counter = 0;
  Counter() {
    _subject = BehaviorSubject.seeded(0);
    _subject.listen((value) {
      print(value);
    });
  }

  void increment() {
    _subject.add(_counter++);
  }

  void devrement() {
    _subject.add(_counter--);
  }

  Subject<int> get subject => _subject;

  void get close => _subject.close();
}
