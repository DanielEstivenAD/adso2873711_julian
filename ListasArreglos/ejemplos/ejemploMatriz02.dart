import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJEMPLO Matriz 02
  //Definición e inicialización vacio
  List<List<int>> matriz = [];
  int cantFilas = 3, cantColumnas = 4;
  int numero;
  for (int i = 0; i < cantFilas; i++) {
    List<int> fila = [];
    //Recorre las Filas
    stdout.write("|");
    for (int j = 0; j < cantColumnas; j++) {
      print("Ingrese el elemento posición: $i,$j");
      numero = int.parse(stdin.readLineSync()!);
      fila.add(numero);
    }
    print(fila);
    matriz.add(fila);
    print(matriz);
  }
  print('*' * 30);
  print(matriz);

  for (int i = 0; i < matriz.length; i++) {
    //Recorre las Filas
    stdout.write("|"); //Cuando inicia la fila
    for (int j = 0; j < matriz[0].length; j++) {
      //Recorre las Columnas
      stdout.write("${matriz[i][j]}|");
    }
    print("");
  }
  //SALIDA Alg
}
