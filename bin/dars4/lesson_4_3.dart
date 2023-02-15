import 'dart:io';

enum AppTextFiles {
  g6('/Users/axmadjonisaqov/CLionProjects/lesson/bin/text/g6.txt'),
  salom('/Users/axmadjonisaqov/CLionProjects/lesson/bin/text/salom.txt');

  final String path;
  const AppTextFiles(this.path);
}

void main(List<String> args) {
  File file = File(AppTextFiles.g6.path);
  file.writeAsStringSync('Shoxruh Boymatov');
}
