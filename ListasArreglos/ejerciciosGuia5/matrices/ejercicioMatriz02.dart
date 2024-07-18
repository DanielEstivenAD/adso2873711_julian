import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE Matriz 02
  /* Hacer un algoritmo que llene una matriz de 10 * 10 y determine la posición
  [fila, columna] del número mayor almacenado en la matriz. Los números son
  diferentes.
 */
  //DEFINICIÓN Vbles
  List<List<int>> matriz = [];
  int cantFilas = 10, cantColumnas = 10;
  int maxNum = -1, maxFila = 0, maxColum = 0, numero;
  //ENTRADA Alg
  //PROCESO Alg
  for (int i = 0; i < cantFilas; i++) {
    List<int> fila = [];
    for (int j = 0; j < cantColumnas; j++) {
      print("Ingrese el elemento posición: $i,$j");
      numero = int.parse(stdin.readLineSync()!);
      fila.add(numero);
      // Inicializar maxNum con el primer elemento ingresado
      if (i == 0 && j == 0) {
        maxNum = numero;
        maxFila = i;
        maxColum = j;
      }
    }
    matriz.add(fila);
    print('*' * 30);
  }
  //Recorrer matriz e encontrar el número mayor y su posición en i y j
  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < matriz[0].length; j++) {
      if (matriz[i][j] > maxNum) {
        maxNum = matriz[i][j];
        maxFila = i;
        maxColum = j;
      }
    }
  }
  //SALIDA Alg
  print("Matriz:");
  for (var fila in matriz) {
    print(fila);
  }
  print(
      "El número mayor es el $maxNum se encuentra en la posición: Fila:$maxFila y Columna:$maxColum");
}
