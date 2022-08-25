import 'dart:io';

void main() {
  print("========CALCULATOR========");
  String? number = stdin.readLineSync();
  print(number?.contains(new RegExp(r'^[0-9]+$')));
}
