import 'dart:io';

import 'Vehiculo.dart';

void main(List<String> args) {
  Vehiculo vehiObj1 = Vehiculo('azul', 40, 2);
  vehiObj1.avanzar(25);
  vehiObj1.avanzar(25);
  vehiObj1.avanzar(125);
  vehiObj1.detenerse();

  //Lista o Arrays de Objetos
  List<String> nombresVehiculos = [];
  for (var i = 0; i < 5; i++) {
    print('ingrese el nombre del vehículo');
    nombresVehiculos.add(stdin.readLineSync()!);
  }
  print(nombresVehiculos);
  List<Vehiculo> listaVehiculos = []; //Se crea una lista de objetos Vehiculos
  String colorUsuario;
  int velocidadUsuario;
  double tamanioUsuario;
  for (var i = 0; i < 5; i++) {
    print('Ingrese el color del vehículo ${i + 1}');
    colorUsuario = stdin.readLineSync()!;
    print('Ingrese la velocidad del vehpiculo ${i + 1}');
    velocidadUsuario = int.parse(stdin.readLineSync()!);
    print('ingrese el tamaño del vehículo ${i + 1}');
    tamanioUsuario = double.parse(stdin.readLineSync()!);
    //Se crea el objeto de forma dinamica con los datos que ingrese el usuario
    Vehiculo vehiculoObj =
        Vehiculo(colorUsuario, velocidadUsuario, tamanioUsuario);
    print('*' * 50);
    print('Vehpiculo ${i + 1}');
    vehiculoObj.avanzar(30);
    vehiculoObj.avanzar(20);
    vehiculoObj.detenerse();
    print('*' * 50);
  }
}
