enum HaftaKunlari {
  dushanba,
  seshanba,
  chorshanba,
  payshanba,
  juma,
  shanba,
  yakshanba;

  static get showAllDays {
    for (var day in values) {
      print('ENUM::$day  NAME::${day.name}');
    }
  }

  HaftaKunlari operator +(int value) {
    var filteredIndex = value + index;
    if (filteredIndex < 7) {
      return HaftaKunlari.values.elementAt(filteredIndex);
    }
    filteredIndex %= 7;
    return HaftaKunlari.values.elementAt(filteredIndex);
  }

  HaftaKunlari operator -(int value) {
    var newIndex = index - value;
    if (newIndex < 0) {
      return HaftaKunlari.values.elementAt(newIndex % 7);
    }
    return HaftaKunlari.values.elementAt(newIndex);
  }

  HaftaKunlari get previus {
    var newIndex = index - 1;
    if (newIndex < 0) {
      return HaftaKunlari.values.elementAt(newIndex % 7);
    }
    return HaftaKunlari.values.elementAt(newIndex);
  }

  HaftaKunlari get next {
    var newIndex = index + 1;
    if (newIndex > 6) {
      return HaftaKunlari.values.elementAt(newIndex % 7);
    }
    return HaftaKunlari.values.elementAt(newIndex);
  }
}

void main(List<String> args) {
  HaftaKunlari monday = HaftaKunlari.dushanba;

  HaftaKunlari otherDay = monday + 2;
  print(otherDay);

  HaftaKunlari otherDay2 = otherDay + 9;
  print(otherDay2);

  print(HaftaKunlari.yakshanba.next);

  print(HaftaKunlari.seshanba.previus);

  print(HaftaKunlari.yakshanba - 10);
  HaftaKunlari.showAllDays;
}
