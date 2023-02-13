void main(List<String> args) {
  Unique unique = Unique(a: 10, b: 1000);
  unique.numbers;

  StrongNumber strong = StrongNumber(number: 145);

  strong.validNumber;
}

class Unique {
  final int a;
  final int b;
  const Unique({required this.a, required this.b});
//*-------------1
  get numbers {
    if (a < b) {
      showUiqueNumbers(n: a, m: b);
    } else {
      showUiqueNumbers(n: b, m: a);
    }
  }

//*-------------2
  void showUiqueNumbers({required int n, required int m}) {
    for (int i = n; i < m; i++) {
      if (!validUnique(i)!) {
        print(i);
      }
    }
  }

//*-------------3
  bool? validUnique(int n) {
    bool? isUnique = '$n'.split('').toSet().length == 1;
    return isUnique;
  }
}

class StrongNumber {
  int number;
  StrongNumber({required this.number});

  get validNumber {
    int summ = 0;
    int previusNumber = number;

    while (number > 0) {
      var qoldiq = number % 10;
      summ += factorial(qoldiq);
      number ~/= 10;
    }

    if (previusNumber == summ) {
      print('$previusNumber is Strong number');
    } else {
      print('Not Strong number');
    }
  }

//*-------------factorial function
  static int factorial(int n) => (n == 0 || n == 1) ? 1 : n * factorial(n - 1);
}
