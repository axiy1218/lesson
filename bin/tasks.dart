void main(List<String> args) {
  //* integer 18

  var number = 12345;
  number ~/= 1000;
  var qoldiq = number % 10;
  print(qoldiq);

  //*integer23

  var sekundN = 3700;

  var hour = sekundN ~/ 3600;
  var minute = (sekundN - hour * 3600) ~/ 60;
  var sekund = sekundN - hour * 3600 - minute * 60;

  print('Soat::$hour');
  print('Minut::$minute');
  print('Sekund::$sekund');
}
