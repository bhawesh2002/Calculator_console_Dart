import 'dart:io';

void main() {
  print("========CALCULATOR========");
  var input = stdin.readLineSync();
  var check = input?.contains(new RegExp(r'^[0-9\-=/*\+]+$'));
  if (check == false){
    print("ERROR:Only inputs Expected");
    exit(0);
  };
  var number = input;
}
