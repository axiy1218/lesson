/*
Created by Axmadjon Isaqov on 09:05:42 15.02.2023
© 2023 @axi_dev 
*/
/*
?Theme:::Enumeration
*/
void main(List<String> args) {
  List productList = [
    Product('343', 'Monitor'),
    Product('556', 'iPad'),
    Product('485748', 'Macbook'),
    Product('4394893', 'iPhone')
  ];
  final product = Product('343', 'Monitor LCD');

  if (productList.contains(product)) {
    print('Bu maxsulot savatda mavud');
  } else {
    print('Mavud Emas');
  }
}

class Product {
  final String id;
  final String model;

  const Product(this.id, this.model);

  @override
  bool operator ==(Object other) {
    return (other is Product) &&
        identical(id, other.id) &&
        identical(model, other.model);
  }
}
