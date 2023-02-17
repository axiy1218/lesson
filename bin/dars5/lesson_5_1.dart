/*
Created by Axmadjon Isaqov on 10:48:45 17.02.2023
© 2023 @axi_dev 
*/
/*
?Theme:::Collections
*/

void main(List<String> args) {
  Set st = Set.from({1, 2, 3, 4, 5});

  print(st);
  Set st1 = Set.from({4, 5, 6, 7, 8, 9});
  print(st1);
//*-------------birlashma
  Set resultOfSet = st.union(st1);
  print(resultOfSet);
//*-------------Ayirma
  resultOfSet = st.difference(st1);
  print(resultOfSet);
//*-------------Kesishma
  resultOfSet = st.intersection(st1);
  print(resultOfSet);

  print('---------------------------Map--------------------------');

  Map<String, dynamic> dataMap = {
    'edit': true,
    'delete': null,
    'isActive': false
  };

  dataMap['color'] = 0xff956985;

  print(dataMap);
}
