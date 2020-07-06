// import 'package:dart_space_adventure/dart_space_adventure.dart' as dart_space_adventure;
import 'dart:io';

void printGreeting(){
  print('Welcome to the Solar System!');
  print('There are planets to explore.');
}

String getName(){
  print('What is your name?');
  return stdin.readLineSync();
}

void main(List<String> arguments) {

  printGreeting();  

  final name = getName();

  print('Nice to meet you, $name');

  transport();
    
}

void transport() {
  print("Transporting!");
}