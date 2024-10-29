import 'Vehiculo.dart';

void main(List<String> args) {
  Vehiculo myCar = Vehiculo('Rojo', 200, 2.5);

  print(
      'el auto es de color ${myCar.getColor()}'); // Con get siempre se obtiene el valor
  myCar.setColor('amarillo');
  print(
      'el auto cambio a color ${myCar.getColor()}'); // Con set siempre cambiar el valor
  print('El auto tiene una velocidad de ${myCar.getVelocidad()}');
  myCar.setVelocidad(50);
  print('El auto cambio a una velocidad de ${myCar.getVelocidad()}');
  print('El auto tiene un tamaño de ${myCar.getTamanio()}');
  myCar.setTamanio(4.5);
  print('El auto cambio de tamaño a ${myCar.getTamanio()}');
}
