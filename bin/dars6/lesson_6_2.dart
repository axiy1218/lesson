void main(List<String> args) {
  Node<String> first = Node(value: 'Shaxboz');
  Node<String> second = Node(value: 'Diyorbek');
  Node<String> third = Node(value: 'Shamsiddin');
  Node<String> fourth = Node(value: 'Azizbek');

  first.next = second;
  second.next = third;
  third.next = fourth;
  fourth.next = null;
  print(first);
  print(third);
}

class Node<T> {
  T? value;
  Node<T>? next;
  Node({required this.value, this.next});

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> $next';
  }
}
