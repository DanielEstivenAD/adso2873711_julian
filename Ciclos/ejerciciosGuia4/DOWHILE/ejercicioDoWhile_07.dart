import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE Do-WHILE 07
  /*Hacer un programa que lea caracteres desde teclado hasta que lea 10 veces la 
  letra 'a'. Por cada carácter leído que no sea una 'a' debe mostrar un mensaje 
  indicándolo. Cuando lea las 10 letras 'a' el programa terminará.
 */
  //DEFINICIÓN Vbles
  String? letra;
  int contA = 0, cantRepe = 10;
  //ENTRADA - PROCESO Alg
  do {
    print("Digite una letra");
    letra = stdin.readLineSync();
    if (letra!.toLowerCase() != "a") {
      print(letra);
    } else {
      contA++;
    }
  } while (contA != cantRepe);
  //SALIDA Alg
  print("Fin del programa");
}
