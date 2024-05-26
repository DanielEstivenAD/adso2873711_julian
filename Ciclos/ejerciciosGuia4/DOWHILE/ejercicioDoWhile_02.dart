import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE DO-WHILE 02
  /*
 Un alumno de la clase de lógica matemática desea desarrollar un algoritmo y 
 diagrama de flujo en el cual  introduzca  un  número  entero  positivo  e  
 invierta  los  dígitos  del  número.  Mostrar  el  número invertido.
 */
  //DEFINICIÓN Vbles
  int num;
  int nuevoNum, modulo, division;
  //ENTRADA Alg
  print("Ingrese el número deseado a invertir");
  num = int.parse(stdin.readLineSync()!);
  nuevoNum = num;
  print("El número inicial es: $num");
  stdout.write("El numero invertido es:");
  //PROCESO - SALIDA Alg
  do {
    modulo = nuevoNum % 10;
    division = nuevoNum ~/ 10;
    stdout.write(modulo);
    nuevoNum = division;
  } while (division != 0);
}
