enum WeekDays<T extends Object> {
  monday<String>('Dushanba'),
  tuesday<bool>(true),
  wednesday<int>(56);

  final T data;
  const WeekDays(this.data);
}

void main(List<String> args) {
  WeekDays day = WeekDays.monday;

  print(day.name);
  print(day.index);
  print(day.data);
}
