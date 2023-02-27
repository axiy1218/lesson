void main(List<String> args) {
  print('Before');
  late int number = getNumber();

  late final String result = getString();
  print(result);

  print('After');
}

int getNumber() {
  print('Function called..');
  return 456;
}

String getString() {
  print('String function called..');
  return 'Hello';
}
