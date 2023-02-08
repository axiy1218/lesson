void main(List<String> args) {
  print('---------------------------1-misol--------------------------');
  int Function(bool) innerFunction = func;
  print(innerFunction(true));

  print('---------------------------2-misol--------------------------');

  var result = addNumbers(23, 7);
  print(result);
  addNumbers.call(12, 67);
  print('---------------------------3-misol--------------------------');

  getInfo.call();
}

//*---------------------------1-misol--------------------------
//     2                 1
int Function(bool) get func {
  //3
  return (bool test) {
    //4
    return !test ? 1 : 0;
  };
}

//*---------------------------2-misol--------------------------
int addNumbers(int a, int b) {
  print('Summ::${a + b}');
  print('Yig`gindi::${a + b}');
  return a + b;
}

//*---------------------------3-misol--------------------------

void getInfo() => print('Bu Void funksiya');
