import 'dart:io';

void main() {
  print("========CALCULATOR========");
  var input = stdin.readLineSync();
  var check = input?.contains(new RegExp(r'^[0-9\-=/*\+]+$'));
  if (check == false) {
    print("ERROR:Only numerical inputs are Expected");
    exit(0);
  }
  var hasOperation = input?.contains(new RegExp(r'^[0-9]+$'));
  if (hasOperation == true) {
    print("ERROR :NO OPERATION SPECIFIED");
    exit(0);
  }
  var endCheck = input?.endsWith('+');
  if (endCheck == true) {
    input = input?.substring(0, input.length - 1);
  }
  var numbers = new List.empty(growable: true);
  int i = 0;
  int op_index = 0;
  input?.runes.forEach((element) {
    var digit = new String.fromCharCode(element);
    if (digit == '+') {
      numbers.add(input?.substring(op_index, i));
      op_index = i + 1;
    } else if (digit == '-') {
      numbers.add(input?.substring(op_index, i));
      op_index = i + 1;
    } else if (digit == '*') {
      numbers.add(input?.substring(op_index, i));
      op_index = i + 1;
    } else if (digit == '/') {
      numbers.add(input?.substring(op_index, i));
      op_index = i + 1;
    }
    i++;
  });
  numbers.add(input?.substring(op_index, i));
  print(numbers);
  /*for (var i = 0; i < numbers.length; i++) {
    numbers[i] = int.parse(numbers[i]);
  }
  num add = 0;
  for (var i = 0; i < numbers.length; i++) {
    add += numbers[i];
  }
  print(add);*/
}
