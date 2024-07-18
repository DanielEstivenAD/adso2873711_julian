import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE MATRIZ 03
  /*La compañía manufacturera Monte Real fábrica 5 artículos diferentes y se
  trabajan tres turnos por día, la compañía necesita obtener un reporte al final
  del día del total de la producción por artículo y el total de la producción
  por turno. Desarrollar un programa que pida al usuario el nombre de cada
  artículo y la producción que se hizo en cada uno de los tres turnos del día y
  genere un reporte al final del día mostrado en pantalla el total de de la
  producción por artículo, el total de la producción por turno y el artículo
  con mayor producción. 
  Articulo\Turno Turno 1 Turno 2 Turno 3
     Articulo 1     30      40     20
     Articulo 2     10      12     15
     Articulo 3      8      10      7
     Articulo 4     25      30     30
     Articulo 5     12      20     10
 */
  //DEFINICIÓN Vbles
  List<List<int>> matriz = [];
  List<int> sumaFila = [0,0,0,0,0], sumaTurno = [0, 0, 0];
  int cantFilas = 5, cantColumnas = 3;
  int  numero, numMayor = 0, posicionArtiMayor = 0;
  //ENTRADA Alg
  //PROCESO Alg
  for (var i = 0; i < cantFilas; i++) {
    List<int> fila = [];
    for (var j = 0; j < cantColumnas; j++) {
      print("Ingrese los resultados de cada turno del articulo ${i + 1}");
      numero = int.parse(stdin.readLineSync()!);
      fila.add(numero);
      sumaFila[i]+=numero;
      sumaTurno[j] += numero;//Lista acomulador
    }
    matriz.add(fila);
    print('*' * 50);
  }
  for (var i = 0; i < sumaFila.length; i++) {
    if (sumaFila[i] > numMayor) {
      numMayor = sumaFila[i];
      posicionArtiMayor = i;
    }
  }
  //SALIDA Alg
  print("Visualización de la tabla completa");
  for (int i = 0; i < matriz.length; i++) {
    //Recorre las Filas
    stdout.write("|"); //Cuando inicia la fila
    for (int j = 0; j < matriz[0].length; j++) {
      //Recorre las Columnas
      stdout.write("${matriz[i][j]}|");
    }
    print("");
  }

for (var i = 0; i < sumaFila.length; i++) {
  print('El total del articulo #${i+1} es: ${sumaFila[i]}');
}
for (var i = 0; i < sumaTurno.length; i++) {
  print('El total del turno #${i+1} es: ${sumaTurno[i]}');
}
  print(
      "el articulo ${posicionArtiMayor + 1} tuvo mayor producción que tuvo un total de $numMayor");
}
