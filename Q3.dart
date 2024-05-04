import 'dart:io';

void main (){
  stdout.write("Give An Input: ");
  var input = stdin.readLineSync();

  if(input == null || input.isEmpty){
    print("Given input is Empty");

  }else{
    print("Given input is not empty");
  }
}