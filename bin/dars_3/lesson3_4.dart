import 'package:equatable/equatable.dart';

void main(List<String> args) {
  Animal dog = Animal(age: 6, name: 'Simba');
  Animal lion = Animal(age: 6, name: 'Simba');
  print(dog == lion);
}

class Animal extends Equatable {
  final String name;
  final int age;
  const Animal({required this.age, required this.name});

  @override
  List<Object?> get props => [name, age];
}
