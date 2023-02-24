/*
Created by Axmadjon Isaqov on 09:08:10 24.02.2023
© 2023 @axiydev 
*/

//*-------------Futures
import 'dart:math';

main() {
  print('--------------------------------------------------------');
  String? text = "bcdDCBA123";
  List lt = text.split('');
  for (var i = 0; i < lt.length; i++) {
    try {
      if (int.tryParse(lt[i]) != null) {
        if (int.tryParse(lt[i])! % 2 == 0) {
          print('${lt[i]}----juft');
        } else {
          print('${lt[i]}----toq');
        }
      }
    } catch (e) {
      print(e);
    }
  }

  print('--------------------------------------------------------');
  lt = ["225", "-23a", "-9013", "81", "-772", "-78uy"];
  var summ = 0.0;
  for (var i = 0; i < lt.length; i++) {
    try {
      if (int.parse(lt[i]) > 0) {
        summ += sqrt(int.parse(lt[i]));
      }
    } catch (e) {}
  }

  print('Summ:::$summ');
}
