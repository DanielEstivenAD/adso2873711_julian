import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE MATRIZ 04
  /*
 La escuela Ignacio Barrera, desea que le desarrolles un juego para sus alumnos
 de primaria. El juego se llama "cuadro mágico", un cuadro mágico es aquel en
 que la suma de cada fila, la suma de cada columna y la suma de las diagonales
 es exactamente igual. El cuadro mágico es de dos dimensiones.Desarrollar un
 programa que pida al usuario las dimensiones deseadas para  el cuadro mágico
 (un arreglo  de  dos  dimensiones)  en  forma  de  cuadro  y  luego  le  pida
 los  datos  para  llenar  el  arreglo. Después  el  programa  debe  calcular
 la  suma  de  cada  fila,  de  cada columna  y  de  cada  diagonal  del cuadro,
 si  todas  las  sumas  son  iguales  entonces  le  deberás  de  indicar  por
 medio  de  un  mensaje "Felicidades  creaste  un  cuadro  mágico",  de  lo
 contrario  le  deberás  de  decir  el  siguiente  mensaje: "Modifica los
 números en el cuadro para que lo hagas mágico".
 */
  //DEFINICIÓN Vbles
  List<List<int>> matriz = [];

  int cantFilas, cantColumnas, numero;
  //ENTRADA Alg
  print("Indique el maximo de sus dimensiones");
  print("Primero en Horizontal, luego en vertical");
  cantFilas = int.parse(stdin.readLineSync()!);
  cantColumnas = int.parse(stdin.readLineSync()!);
  //PROCESO Alg
  for (var i = 0; i < cantFilas; i++) {
    List<int> fila = [];
    for (var j = 0; j < cantColumnas; j++) {
      print("Ingrese los valores de su cuadro mágico");
      numero = int.parse(stdin.readLineSync()!);
      fila.add(numero);
      
    }
    matriz.add(fila);
  }

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
