/*
Created by Axmadjon Isaqov on 09:18:16 15.02.2023
© 2023 @axi_dev 
*/
/*
?Theme:::Enumeration
*/
void main(List<String> args) {
  Coffee cofe1 = Coffee(price: 100, model: 'Zor');
  Coffee cofe2 = Coffee(price: 101, model: 'Zor');
  print(cofe1.compareTo(cofe2));
}

class Coffee extends Comparable<Coffee> {
  final num price;
  final String model;

  Coffee({required this.price, required this.model});

  @override
  int compareTo(Coffee other) {
    return model.compareTo(other.model).abs() |
        price.compareTo(other.price).abs();
  }
}
