import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE VECTOR 01
  /*
 Calcular el promedio de 50 valores almacenados en un vector. Determinar además 
 cuantos son mayores que el promedio, imprimir el promedio, el numero de datos 
 mayores que el promedio y una lista de valores mayores que el promedio
 */
  //DEFINICIÓN Vbles
  //SE define una lista vacía
  List<double> numeros = [];
  List<double> mayoresProm = [];
  double num, sumaNumeros = 0, promedio;
  int cantNumeros = 10;
  //PROCESO - ENTRADA Alg
  //Ciclo para llenar el Vector
  for (var i = 0; i < cantNumeros; i++) {
    print("Ingrese el número #${i + 1}");
    num = double.parse(stdin.readLineSync()!);
    numeros.add(num); //Se ingresa el número a la lista
    sumaNumeros += num;
  }
  promedio = sumaNumeros / numeros.length;
  print(numeros);
  print("El promedio es $promedio");
  for (var i = 0; i < numeros.length; i++) {
    if (numeros[i] > promedio) {
      mayoresProm.add(numeros[i]);
    }
  }
  //SALIDA Alg
  print("La cantidad de mayores al promedio es: ${mayoresProm.length}");
  print("La lista de mayores al promedio es:");
  print(mayoresProm);
}
