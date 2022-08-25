import 'dart:io';

void main() {
  print("========CALCULATOR========");
  var number = stdin.readLineSync();
  var check = number?.contains(new RegExp('^[0-9]+'));
  if (check == false){
    print("ERROR:Only Numbers Expected");
  };
}
