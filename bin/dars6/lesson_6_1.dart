void main(List<String> args) {
  String mediumText = 'medium';

  Size result = mediumText.textToEnum<Size>(Size.values);
  print(result);

  Size result1 = 'zero'.textToEnum<Size>(Size.values);
  print(result1);
}

enum Size { small, medium, large, none }

extension on String {
  T textToEnum<T>(Iterable<T> value) {
    return value.firstWhere(
      (element) {
        return element.toString().substring(5) == this;
      },
      orElse: () => value.last,
    );
  }
}
