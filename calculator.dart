import 'dart:io';

void main() {
  print("========CALCULATOR========");
  var input = stdin.readLineSync();
  var check = input?.contains(new RegExp(r'^[0-9\-=/*\+]+$'));
  if (check == false) {
    print("ERROR:Only numerical inputs are Expected");
    exit(0);
  }
  var numbers = new List.empty(growable: true);
  var hasOperation = input?.contains(new RegExp(r'^[0-9]+$'));
  if (hasOperation == true) {
    print("ERROR :NO OPERATION SPECIFIED");
    exit(0);
  }
  var endCheck = input?.endsWith('+');
  if (endCheck == true) {
    input = input?.substring(0, input.length - 1);
  }
  int i = 0;
  int op = 0;
  input?.runes.forEach((element) {
    var digit = new String.fromCharCode(element);
    if (digit == '+') {
      numbers.add(input?.substring(op, i));
      op = i + 1;
    } else if (digit == '-') {
      print('Subtractting');
    } else if (digit == '*') {
      print('Multiplying');
    } else if (digit == '/') {
      print('Dividing');
    }
    i++;
  });
  print(numbers);
}
