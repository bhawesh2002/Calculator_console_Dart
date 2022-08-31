import 'dart:io';

void main() {
  print("========CALCULATOR========"); // print the title of the calculator
  var input = stdin.readLineSync(); //get the input as string from the user
  var check = input?.contains(new RegExp(
      r'^[0-9\-=/*\+]+$')); //check if the input is valid and only contains numbers and operators
  if (check == false) {
    print(
        "ERROR:Only numerical inputs are Expected"); //if the input is not valid print error message and exit the program
    exit(0);
  }
  var hasOperation = input?.contains(
      new RegExp(r'^[0-9]+$')); //check if the input has any operators
  if (hasOperation == true) {
    print(
        "ERROR :NO OPERATION SPECIFIED"); //if the input has operators print error message and exit the program
    exit(0);
  }
  var numbers = new List.empty(
      growable: true); //create a list to store the numbers in the input
  int i = 0; //create a counter to store the index of the numbers in the list
  int op_index =
      0; //create a counter to store the index of the operators in the list
  var operations = new List<String>.empty(
      growable: true); //create a list to store the operators in the input
  input?.runes.forEach((element) {
    //loop through the input and store the numbers and operators in the lists
    var digit = new String.fromCharCode(
        element); //get the character at the index of the loop
    if (digit == '+') {
      //if the character is an operator add it to the list of operators
      numbers.add(input.substring(op_index,
          i)); //add the number before the operator to the list of numbers
      op_index = i + 1; //update the index of the operator
      operations.add('+'); //add the operator to the list of operators
    } else if (digit == '-') {
      //if the character is an operator add it to the list of operators
      numbers.add(input.substring(op_index,
          i)); //add the number before the operator to the list of numbers
      op_index = i + 1; //update the index of the operator
      operations.add('-'); //add the operator to the list of operators
    } else if (digit == '*') {
      //if the character is an operator add it to the list of operators
      numbers.add(input.substring(op_index,
          i)); //add the number before the operator to the list of numbers
      op_index = i + 1; //update the index of the operator
      operations.add('*'); //add the operator to the list of operators
    } else if (digit == '/') {
      //if the character is an operator add it to the list of operators
      numbers.add(input.substring(op_index,
          i)); //add the number before the operator to the list of numbers
      op_index = i + 1; //update the index of the operator
      operations.add('/'); //add the operator to the list of operators
    }
    i++; //update the index of the loop
  });
  numbers.add(input?.substring(op_index,
      i)); //add the number after the last operator to the list of numbers
  for (var i = 0; i < numbers.length; i++) {
    //loop through the list of numbers
    numbers[i] = int.parse(numbers[i]); //convert the string to int
  }
  var div; //create a variable to store the result of the division
  var mul; //create a variable to store the result of the multiplication
  var sum; //create a variable to store the result of the sum
  var sub; //create a variable to store the result of the subtraction
  //print(numbers); //print the list of numbers
  //print(operations); //print the list of operators
  print(numbers);
  print(operations);
  while (true) {
    if (operations.contains('/') == true) {
      //if the list of operators contains division
      int indexVal =
          operations.indexOf('/'); //get the index of the division operator
      div = numbers[indexVal] /
          numbers[indexVal +
              1]; //divide the numbers at the index of the division operator
      numbers.removeAt(
          indexVal); //remove the numbers at the index of the division operator
      numbers[indexVal] =
          div; //replace the number at the index of the division operator with the result of the division
      operations.removeAt(
          indexVal); //remove the operator at the index of the division operator
      print(numbers);
      print(operations);
    } else {
      break; //if the list of operators does not contain division break the loop
    }
  }
  while (true) {
    if (operations.contains('*') == true) {
      //if the list of operators contains multiplication
      int indexVal = operations
          .indexOf('*'); //get the index of the multiplication operator
      mul = numbers[indexVal] *
          numbers[indexVal +
              1]; //multiply the numbers at the index of the multiplication operator
      numbers.removeAt(
          indexVal); //remove the numbers at the index of the multiplication operator
      numbers[indexVal] =
          mul; //replace the number at the index of the multiplication operator with the result of the multiplication
      operations.removeAt(
          indexVal); //remove the operator at the index of the multiplication operator
      print(numbers);
      print(operations);
    } else {
      break; //if the list of operators does not contain multiplication break the loop
    }
  }
  while (true) {
    if (operations.contains('+') == true) {
      //if the list of operators contains addition
      int indexVal =
          operations.indexOf('+'); //get the index of the addition operator
      sum = numbers[indexVal] +
          numbers[indexVal +
              1]; //add the numbers at the index of the addition operator
      numbers.removeAt(
          indexVal); //remove the numbers at the index of the addition operator
      numbers[indexVal] =
          sum; //replace the number at the index of the addition operator with the result of the addition
      operations.removeAt(
          indexVal); //remove the operator at the index of the addition operator
      print(numbers);
      print(operations);
    } else {
      break; //if the list of operators does not contain addition break the loop
    }
  }
  while (true) {
    if (operations.contains('-') == true) {
      //if the list of operators contains subtraction
      int indexVal =
          operations.indexOf('-'); //get the index of the subtraction operator
      sub = numbers[indexVal] -
          numbers[indexVal +
              1]; //subtract the numbers at the index of the subtraction operator
      numbers.removeAt(
          indexVal); //remove the numbers at the index of the subtraction operator
      numbers[indexVal] =
          sub; //replace the number at the index of the subtraction operator with the result of the subtraction
      operations.removeAt(
          indexVal); //remove the operator at the index of the subtraction operator
      print(numbers);
      print(operations);
    } else {
      break; //if the list of operators does not contain subtraction break the loop
    }
  }
  print(numbers); //print the list of numbers
}
