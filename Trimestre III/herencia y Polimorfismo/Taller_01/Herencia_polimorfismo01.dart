import 'dart:io';

import 'Clases/Futbolista.dart';
import 'Clases/Persona.dart';
//import 'Clases/Persona.dart';

void main(List<String> args) {
  List<Persona> listadoPersonas = [];
  String profesion;
  //------------------------------ objeto persona -------------------//
  /* String nomPerson;
  int edadPerson;

  print("Indique el nombre de la persona");
  nomPerson = stdin.readLineSync()!;
  print('Indique la edad de la persona');
  edadPerson = int.parse(stdin.readLineSync()!);

  Persona myPerson = Persona(nomPerson, edadPerson);

  myPerson.mostrarInfo();
  */

  //------------------------------ objeto futbolista-------------------//
  String equipoFut;
  String posicionFut;
  String nomFut;
  int edadfut;
  int cantGoles;

  print("Confirme la profesion de la persona");
  profesion = stdin.readLineSync()!;
  switch (profesion) {
    case 'jugador':
    int cantJugadores = 2;

    for (var i = 0; i < cantJugadores; i++){
      print("""
En este momento ingresará los datos del futbolsita en el siguiente orden
Nombre del jugador
Edad del jugador
Equipo al que pertenece
Posicion en la que juega
Cantidad de goles en la temporada (Esto determinará si es Titular o no)
""");
      nomFut = stdin.readLineSync()!;
      edadfut = int.parse(stdin.readLineSync()!);
      equipoFut = stdin.readLineSync()!;
      posicionFut = stdin.readLineSync()!;
      cantGoles = int.parse(stdin.readLineSync()!);

      Futbolista myPlayer =
          Futbolista(equipoFut, posicionFut, cantGoles, nomFut, edadfut);
      myPlayer.esTitular();
      listadoPersonas.add(myPlayer);
    }
      break;
    case 'Programador':
      break;
    default:
      print('Opción incorrecta');
  }
  for (var i = 0; i < listadoPersonas.length; i++) {
    listadoPersonas[i].mostrarInfo();
  }
}
