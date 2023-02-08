void main(List<String> args) {
  print(divideNumbers(12, 4));
  print(divideNumbersTwo(24));

  print(divideNumbersThree(a: 12, c: 4));

  print(divideNumbersFour(a: 12, b: 3, c: 2));
  print(
      '----------------------------recrusive funksiya--------------------------');
  print(factorial(4));
  for (var i = 1; i < 10; i++) {
    print(fib(i));
  }

  print('---------------------------n-misol--------------------------');
  //*---------------------------n-misol--------------------------
}

//&f(n) =f(n-1)+f(n-2);
int fib(int n) {
  if (n == 1 || n == 2) {
    return 1;
  }
  return fib(n - 1) + fib(n - 2);
}

//&f(n) = n*f(n-1);

int factorial(int n) {
  print('n :: $n');
  if (n == 0) {
    return 1;
  }
  return n * factorial(n - 1);
}

int divideNumbers(int a, int b) {
  return a ~/ b;
}

int divideNumbersTwo(int a, [int b = 12, int? c]) {
  return a ~/ b;
}

int divideNumbersThree({int? a, int? b = 2, int? c}) {
  return (a! + b!) ~/ c!;
}

int divideNumbersFour({required int a, required int b, required int c}) {
  return (a + b) ~/ c;
}
