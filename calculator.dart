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
  var numbers = new List.empty(growable: true);
  int i = 0;
  int op_index = 0;
  var operations = new List<String>.empty(growable: true);
  input?.runes.forEach((element) {
    var digit = new String.fromCharCode(element);
    if (digit == '+') {
      numbers.add(input.substring(op_index, i));
      op_index = i + 1;
      operations.add('+');
    } else if (digit == '-') {
      numbers.add(input.substring(op_index, i));
      op_index = i + 1;
      operations.add('-');
    } else if (digit == '*') {
      numbers.add(input.substring(op_index, i));
      op_index = i + 1;
      operations.add('*');
    } else if (digit == '/') {
      numbers.add(input.substring(op_index, i));
      op_index = i + 1;
      operations.add('/');
    }
    i++;
  });
  numbers.add(input?.substring(op_index, i));
  for (var i = 0; i < numbers.length; i++) {
    numbers[i] = int.parse(numbers[i]);
  }
  bool div_check = operations.contains('/');
  bool mul_check = operations.contains('*');
  bool add_check = operations.contains('+');
  bool sub_check = operations.contains('-');
  print(numbers);
  print(operations);
  if (div_check == true) {
    print(operations.indexOf('/'));
  }
}
