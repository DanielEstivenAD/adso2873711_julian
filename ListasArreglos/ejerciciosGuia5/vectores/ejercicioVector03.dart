import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE VECTOR 03
  /*Almacenar  15  números  en  un  vector,  imprimir  cuantos  son  ceros,  
 cuántos  son  negativos,  cuantos positivos. Imprimir además la suma de los 
 negativos, la suma de los ceros y la suma de los positivos.
 */
  //DEFINICIÓN Vbles
  List<double> ListaA = [], listaP = [], listaN = [], listaCero = [];
  int cantNumeros = 5;
  double num, sumaPositivos = 0, sumaNegativos = 0, sumaCeros = 0;
  //ENTRADA Alg
  //PROCESO Alg
  for (var i = 0; i < cantNumeros; i++) {
    print("Digite el número #${i + 1} a agregar");
    num = double.parse(stdin.readLineSync()!);
    ListaA.add(num);
  }
  for (var i = 0; i < ListaA.length; i++) {
    if (ListaA[i] < 0) {
      listaN.add(ListaA[i]);
      sumaNegativos += ListaA[i];
    } else if (ListaA[i] > 0) {
      listaP.add(ListaA[i]);
      sumaPositivos += ListaA[i];
    } else {
      listaCero.add(ListaA[i]);
      sumaCeros += ListaA[i];
    }
  }
  //SALIDA Alg
  print("La lista es: $ListaA");
  print("Hay ${listaN.length} números negativos y la suma es $sumaNegativos");
  print("Hay ${listaP.length} números positivos y la suma es $sumaPositivos");
  print("Hay ${listaCero.length} números ceros y la suma es $sumaCeros");
}
