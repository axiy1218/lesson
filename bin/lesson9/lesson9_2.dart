void main(List<String> args) {
  var value = 0;
  Future.doWhile(() {
    value++;
    print(value);
    if (value == 7) {
      return false;
    }

    return true;
  });
//*-------------Future for each
  Future.forEach([45, 67, 89, 23, 79, 800], (element) => print(element));
}
