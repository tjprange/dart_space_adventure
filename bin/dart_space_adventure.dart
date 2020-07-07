import 'dart:io';
import 'package:dart_space_adventure/dart_space_adventure.dart';
import 'dart:convert';

void main(List<String> arguments) { 
  var jsonString = File(arguments[0]).readAsStringSync();   
  
  String systemName = jsonDecode(jsonString)['name'];
  List<dynamic> planetData = jsonDecode(jsonString)['planets'];
  
  // ignore: omit_local_variable_types
  List<Planet> planets = planetData.map(
    (planet) => Planet(name: planet['name'], description: planet['description'])
  ).toList();

  SpaceAdventure(
    planetarySystem: PlanetarySystem(
      name: systemName, 
      planets: planets
    )
  ).start();
}

