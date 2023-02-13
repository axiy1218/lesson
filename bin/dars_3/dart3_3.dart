void main(List<String> args) {
  Laptop macbook =
      Laptop(color: Color.green, id: 'hi', model: 'pro m2', price: 1500);
  Laptop lenovo =
      Laptop(color: Color.blue, id: 'dsjkfkd', model: 'Lenovo', price: 1500);

  if (lenovo.compareTo(macbook) == 0) {
    print('Ular Teng');
  } else {
    print('Teng emas');
  }
}

enum Color { red, green, blue }

class Laptop extends Comparable<Laptop> {
  String model;
  String id;
  num price;
  Color color;

  Laptop(
      {required this.color,
      required this.id,
      required this.model,
      required this.price});

  @override
  int compareTo(Laptop other) {
    return model.compareTo(other.model).abs() |
        price.compareTo(other.price).abs();
  }
}
