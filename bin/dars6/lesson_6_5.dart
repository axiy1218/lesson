typedef MapBuilder = Map<int, dynamic> Function(List<dynamic>);
void main(List<String> args) {
  MapBuilder mapBuilder = serializeData;

  print(mapBuilder([45, true, 'Flutter']));

  mapBuilder = secondFunction;
  print(mapBuilder(['hello', 565, false]));
}

Map<int, dynamic> serializeData(List data) {
  Map<int, dynamic> mapData = {};
  for (var i = 0; i < data.length; i++) {
    mapData[i] = data[i];
  }

  return mapData;
}

Map<int, dynamic> secondFunction(List data) {
  List<MapEntry> listMapEntry = List.empty(growable: true);
  for (var i = 0; i < data.length; i++) {
    listMapEntry.add(MapEntry<int, dynamic>(i, data[i]));
  }

  return Map.fromEntries(Iterable.castFrom(listMapEntry));
}
