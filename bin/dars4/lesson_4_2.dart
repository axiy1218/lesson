enum Techno {
  mobile('Mobil qurilma', 56),
  tv('Televizor', 100),
  laptop('Noutebook', 150),
  car('Avtomobil', 2000);

  final String desc;
  final num number;
  const Techno(this.desc, this.number);
}

enum AppImages {
  dog('assets/images/dog.jpg'),
  cat('assets/images/dog.jpg');

  final String path;
  const AppImages(this.path);
}

void main(List<String> args) {
  Techno techno = Techno.car;

  String text = Techno.car.desc;
  print(text);
}
