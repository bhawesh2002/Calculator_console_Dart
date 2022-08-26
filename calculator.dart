import 'dart:io';

void main() {
  print("========CALCULATOR========");
  var input = stdin.readLineSync();
  var check = input?.contains(new RegExp(r'^[0-9\-=/*\+]+$'));
  if (check == false) {
    print("ERROR:Only numerical inputs are Expected");
    exit(0);
  }
  var number = 0;
  input?.runes.forEach((element) {
    var digit = new String.fromCharCode(element);
    if (digit == '+') {
      print('Adding');
    } else if (digit == '-') {
      print('Subtractting');
    } else if (digit == '*') {
      print('Multiplying');
    } else if (digit == '/') {
      print('Dividing');
    } else {
      print("ERROR :NO OPERATION SPECIFIED");
    }
  });
}
