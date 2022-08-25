import 'dart:io';

void main() {
  print("========CALCULATOR========");
  var input = stdin.readLineSync();
  var check = input?.contains(new RegExp(r'^[0-9\-=/*\+]+$'));
  if (check == false) {
    print("ERROR:Only inputs Expected");
    exit(0);
  }
  var number = 0;
  input?.runes.forEach((element) {
    var digit = new String.fromCharCode(element);
    if (digit == '+') {
      print('Adding');
    }
  });
}
