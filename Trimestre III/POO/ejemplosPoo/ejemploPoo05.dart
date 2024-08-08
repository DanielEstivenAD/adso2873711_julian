import 'dart:io';

import 'Vehiculo.dart';

void main(List<String> args) {
  int cantIteraciones = 5;
  String colorUsuario;
  int velocidadUsuario;
  double tamanioUsuario;
  String parqueado;
  List<Vehiculo> listaVehiculos = [];
  //ciclo para la llenar la lista de tipo vehículo
  for (var i = 0; i < cantIteraciones; i++) {
    print('*' * 50);
    print('Ingrese el color del vehículo ${i + 1}');
    colorUsuario = stdin.readLineSync()!;
    print('Ingrese la velocidad del vehpiculo ${i + 1}');
    velocidadUsuario = int.parse(stdin.readLineSync()!);
    print('ingrese el tamaño del vehículo ${i + 1}');
    tamanioUsuario = double.parse(stdin.readLineSync()!);

    // Se instancia la clase vehículo y se crea el objeto con los valores del usuario
    Vehiculo vehiculoObj =
        Vehiculo(colorUsuario, velocidadUsuario, tamanioUsuario);
    //se añade el vehiculo a la lista
    listaVehiculos.add(vehiculoObj);
    print('*' * 50);
  }

  //Ciclo para recorrer elementos y llamar los metodos
  for (var i = 0; i < cantIteraciones; i++) {
    print('*' * 50);
    print('En que lugar desea parquear el vehiculo ${i+1}');
    parqueado = stdin.readLineSync()!;
    print('*' * 50);
    print('*** Vehículo ${i + 1} ***');
    listaVehiculos[i].avanzar(20);
    listaVehiculos[i].avanzar(80);
    listaVehiculos[i].avanzar(100);
    listaVehiculos[i].detenerse();
    listaVehiculos[i].avanzar(100);
    listaVehiculos[i].disminuirVel(10);
    listaVehiculos[i].disminuirVel(50);
    listaVehiculos[i].disminuirVel(210);
    listaVehiculos[i].detenerse();
    listaVehiculos[i].parquear(parqueado);
    print('*' * 50);
  }
}
