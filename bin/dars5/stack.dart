class Stack<E> extends Iterable<E> {
  final List<E> _storage;
  Stack() : _storage = List<E>.empty(growable: true);

  Stack.of(Iterable<E> elements) : _storage = List<E>.of(elements);

  void pop() => _storage.removeLast();

  void add(E object) => _storage.add(object!);

  @override
  String toString() {
    return _storage.toString();
  }

  @override
  Iterator<E> get iterator => _storage.iterator;

  E? operator [](int index) => _storage.elementAt(index);
}
