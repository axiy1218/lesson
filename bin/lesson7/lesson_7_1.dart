/*
Created by Axmadjon Isaqov on 09:12:47 22.02.2023
© 2023 @axiydev 
*Exceptions*
*/

void main(List<String> args) {
  try {
    try {
      print(getNumbers(1));
    } on ArgumentError catch (e, s) {
      print(e);
      print(s);
      print('Argument Error');
      rethrow;
    } catch (e, s) {
      print(e);
      print(s);
    }
  } catch (e) {
    print(e);
  } finally {
    print('TUGADI');
  }

  ServerData data = getDataFromServer(ArgumentError());
  print(data.data);
}

int? getNumbers(int n) {
  if (n.isOdd) {
    throw ArgumentError.value(n);
  } else if (n == -2) {
    throw FormatException();
  }
  return null;
}

ServerData getDataFromServer(Object? data) {
  if (data is String) {
    return ServerData.data(data);
  }
  return ServerData.error(data);
}

class ServerData {
  String? data;
  Object? error;
  ServerData.data(this.data) {
    print('Malumot saqlandi');
  }
  ServerData.error(this.error) {
    print(error);
  }
}
