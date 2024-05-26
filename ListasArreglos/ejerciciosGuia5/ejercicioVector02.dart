import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE VECTOR 02
  /*
 Llenar  dos  vectores  A  y  B  de  10  elementos  cada  uno,  sumar  el  
 elemento  uno  del  vector  A  con  el elemento uno del vector B y así 
 sucesivamente hasta 10, almacenar el resultado en un vector C, e imprimir el 
 vector resultante.
 */
  //DEFINICIÓN Vbles
  List<double> vectorA = [];
  List<double> vectorB = [];
  List<double> vectorC = [];
  double num1, num2;
  int cantNumeros;
  //ENTRADA Alg
  print("Confirme cuantos números tendrán las listas");
  cantNumeros = int.parse(stdin.readLineSync()!);
  //PROCESO Alg
  for (var i = 0; i < cantNumeros; i++) {
    print("Ingrese el número #${i + 1} de la lista 1 ");
    num1 = double.parse(stdin.readLineSync()!);
    vectorA.add(num1); //Se ingresa el número a la lista
    print("Ingrese el número #${i + 1} de la lista 2 ");
    num2 = double.parse(stdin.readLineSync()!);
    vectorB.add(num2); //Se ingresa el número a la lista
    print("*" * 50);
  }
  print(vectorA);
  print(vectorB);
  for (var i = 0; i < vectorA.length; i++) {
    vectorC.add(vectorA[i] + vectorB[i]);
  }
  print("La suma de las listas es:$vectorC");
  //SALIDA Alg
}
