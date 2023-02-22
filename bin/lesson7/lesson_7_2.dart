void main(List<String> args) {
  try {
    var result = divide(10, 0);

    print(result);
  } catch (e) {
    print(e);
  }
}

num? divide(int a, int b) {
  if (b == 0) {
    throw 'b nolga teng';
  }
  return a / b;
}

void showInfo({required String name, required num? age}) {
  if (name.isEmpty) {
    return;
  }
  print('name : $name  \n age : $age');
}
