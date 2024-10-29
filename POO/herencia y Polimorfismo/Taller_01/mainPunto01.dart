import 'dart:io';

import 'Clases/Futbolista.dart';
import 'Clases/Persona.dart';
import 'Clases/Programador.dart';

void main(List<String> args) {
  List<Persona> listadoPersonas = [];
  String nomPerson, posicionFut, equipoFut, empresaPerson, profesion;
  int cantPerson = 4, edadPerson, cantGoles;
  double salario;
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
  //------------------------------ OBJETOS --------------------------//

  for (var i = 0; i < cantPerson; i++) {
    print(
        """En este momento ingresará los datos de la persona en el siguiente orden.
    1. Nombre de la Persona.
    2. Edad de la persona.
    3. Profesion de la persona.""");
    nomPerson = stdin.readLineSync()!;
    edadPerson = int.parse(stdin.readLineSync()!);
    profesion = stdin.readLineSync()!;
    //------------------------- CREACION DE OBJETOS TIPO JUGADOR ---------------------------//
    if (profesion.toLowerCase() == 'jugador') {
      print("""Indique los datos de la profesion en el siguiente orden.
      1. Equipo en el que juega
      2. Posicion en la que juega
      3. Cantidad de goles en la temporada (Esto determinará si es Titular o no)""");
      equipoFut = stdin.readLineSync()!;
      posicionFut = stdin.readLineSync()!;
      cantGoles = int.parse(stdin.readLineSync()!);
      Futbolista myPerson = Futbolista(
          equipoFut, posicionFut, cantGoles, nomPerson, edadPerson, profesion);
      myPerson.esTitular();
      listadoPersonas.add(myPerson);
      //----------------------- CREACION DE OBJETOS TIPO PROGRAMADOR ----------------------//
    } else if (profesion.toLowerCase() == 'programador') {
      print("""Indique los datos de la profesion en el siguiente orden.
      1. Empresa en la que trabaja
      2. Salario de la Persona""");
      empresaPerson = stdin.readLineSync()!;
      salario = double.parse(stdin.readLineSync()!);
      Programador myPerson =
          Programador(empresaPerson, salario, nomPerson, edadPerson, profesion);
      myPerson.obtenerSalarioNeto();
      listadoPersonas.add(myPerson);
    } else {
      while (profesion != 'jugador' && profesion != 'programador') {
        print("Opción incorrecta intente nuevamente");
        profesion = stdin.readLineSync()!;
      }
    }
  }
  for (var i = 0; i < listadoPersonas.length; i++) {
    listadoPersonas[i].mostrarInfo();
  }

//-------------------- Solución 2 ----------------------------------- //
//  while (listadoPersonas.length < cantPerson) {
//     print("Confirme la profesion de la persona(Jugador, programador)");
//     profesion = stdin.readLineSync()!.toLowerCase();
//     switch (profesion) {
//       case 'jugador':
//         print("""
//         En este momento ingresará los datos del futbolsita en el siguiente orden:
//         Nombre del jugador
//         Edad del jugador
//         Equipo al que pertenece
//         Posicion en la que juega
//         Cantidad de goles en la temporada (Esto determinará si es Titular o no)
//         """);
//         nomPerson = stdin.readLineSync()!;
//         edadPerson = int.parse(stdin.readLineSync()!);
//         equipoFut = stdin.readLineSync()!;
//         posicionFut = stdin.readLineSync()!;
//         cantGoles = int.parse(stdin.readLineSync()!);
//         Futbolista myPerson = Futbolista(equipoFut, posicionFut, cantGoles,
//             nomPerson, edadPerson, profesion);
//         myPerson.esTitular();
//         listadoPersonas.add(myPerson);
//         break;
//       case 'programador':
//         print("""
//         En este momento ingresará los datos del programador en el siguiente orden:
//         Nombre del programador
//         Edad del programador
//         Empresa a la que pertenece
//         Salario del programador
//         """);
//         nomPerson = stdin.readLineSync()!;
//         edadPerson = int.parse(stdin.readLineSync()!);
//         empresaPerson = stdin.readLineSync()!;
//         salario = double.parse(stdin.readLineSync()!);
//         Programador myPerson = Programador(
//             empresaPerson, salario, nomPerson, edadPerson, profesion);
//         myPerson.obtenerSalarioNeto();
//         listadoPersonas.add(myPerson);
//         break;
//       default:
//         print('Opción incorrecta');
//     }
//   }
//   for (var i = 0; i < listadoPersonas.length; i++) {
//     listadoPersonas[i].mostrarInfo();
//   }
}
