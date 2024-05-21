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
  double ultimoDigito, numInvertido = 0;
  //ENTRADA Alg
  //PROCESO Alg
  do {
    print("Ingrese el número entero positivo. Cero para salir");
    num = int.parse(stdin.readLineSync()!);
    ultimoDigito = num % 10;
    numInvertido = numInvertido * 10 + ultimoDigito;
    print("$numInvertido");
  } while (num > 0);
  //SALIDA Alg
}
