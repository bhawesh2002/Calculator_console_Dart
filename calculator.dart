import 'dart:io';

void main() {
  print("========CALCULATOR========");
  var input = stdin.readLineSync();
  var check = input?.contains(new RegExp(r'^[0-9\-=/*\+]+$'));
  if (check == false) {
    print("ERROR:Only numerical inputs are Expected");
    exit(0);
  }
  var number;
  var hasOperation = input?.contains(new RegExp(r'^[0-9]+$'));
  if (hasOperation == true) {
    print("ERROR :NO OPERATION SPECIFIED");
  }
  var endCheck = input?.endsWith('+');
  if (endCheck == true) {
    input = input?.substring(0, input.length - 1);
  }
  int i = 0;
  input?.runes.forEach((element) {
    var digit = new String.fromCharCode(element);
    if (digit == '+') {
      number = input?.substring(0, i);
    } else if (digit == '-') {
      print('Subtractting');
    } else if (digit == '*') {
      print('Multiplying');
    } else if (digit == '/') {
      print('Dividing');
    }
    i++;
  });
  print(number);
}
