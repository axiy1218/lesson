void main() {
  Student st1 = Student(1000, 'Xurshid');
  Student st2 = Student(1001, 'Begzod');
  Student st3 = Student(1001, 'Begzod');

  if (identical(st2, st3)) {
    print('Studentlar bir xil');
  } else {
    print('Studentlar har xil');
  }
}

class Student {
  int? id;
  String? name;

  Student(this.id, this.name);

  void methodOne() {
    print('This is a method one');
  }

  void methodTwo() {
    print('This is a method two');
  }

  @override
  bool operator ==(Object? other) {
    return other is Student && identical(id, other.id);
  }
}
