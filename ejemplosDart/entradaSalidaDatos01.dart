import 'dart:io';

void main() {
  //DEFINICIÓN VBLES
  String? nombre; //String?= tipo cadena que acepta nulos
  //nombre = "Juan";
  //ENTRADA Algoritmo
  stdout.writeln("Ejemplo - 01 Entrada/Salida De Datos");
  stdout.writeln("Ingrese su nombre");
  nombre = stdin.readLineSync();
  //SALIDA Algoritmo
  print("Su nombre es: $nombre");
}
