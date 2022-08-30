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
  var div;
  var mul;
  var sum;
  print(numbers);
  print(operations);
  while (true) {
    if (operations.contains('/') == true) {
      int indexVal = operations.indexOf('/');
      div = numbers[indexVal] / numbers[indexVal + 1];
      numbers.removeAt(indexVal);
      numbers[indexVal] = div;
      operations.removeAt(indexVal);
    } else {
      break;
    }
  }
  while (true) {
    if (operations.contains('*') == true) {
      int indexVal = operations.indexOf('*');
      mul = numbers[indexVal] * numbers[indexVal + 1];
      numbers.removeAt(indexVal);
      numbers[indexVal] = mul;
      operations.removeAt(indexVal);
    } else {
      break;
    }
  }
  while (true) {
    if (operations.contains('+') == true) {
      int indexVal = operations.indexOf('+');
      sum = numbers[indexVal] + numbers[indexVal + 1];
      numbers.removeAt(indexVal);
      numbers[indexVal] = sum;
      operations.removeAt(indexVal);
    } else {
      break;
    }
  }

  print(numbers);
  print(operations);
}
