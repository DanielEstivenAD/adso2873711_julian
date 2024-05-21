import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE WHILE 04
  /*
 El Depto. de Seguridad Publica y Transito del D.F. desea saber, de los n autos 
 que entran a la ciudad de México, cuantos entran con calcomanía de cada color. 
 Conociendo el último dígito de la placa de cada automóvil se puede determinar 
 el color de la calcomanía utilizando la sig. relación:
 DÍGITO  COLOR
  1 o 2  amarillo
  3 o 4  rosada
  5 o 6  roja
  7 o 8  verde
  9 o 0  azul
 */
  //DEFINICIÓN Vbles
  int cantAutos = 0, contador = 0, numPlaca;
  int carroAma = 0, carroRosa = 0, carroRojo = 0, carroVerde = 0, carroAzul = 0;
  //ENTRADA Alg
  print("Confirme la cantidad de autos que ingresaron");
  cantAutos = int.parse(stdin.readLineSync()!);
  //PROCESO Alg
  while (contador < cantAutos) {
    print("Ingrese el número de la placa");
    numPlaca = int.parse(stdin.readLineSync()!);
    if (numPlaca == 1 || numPlaca == 2) {
      print("El carro ingresado es con calcomania amarilla");
      print("---------------------------------------------");
      carroAma++;
    } else if (numPlaca == 3 || numPlaca == 4) {
      print("El carro ingresado es con calcomania rosada");
      print("---------------------------------------------");
      carroRosa++;
    } else if (numPlaca == 5 || numPlaca == 6) {
      print("El carro ingresado es con calcomania roja");
      print("---------------------------------------------");
      carroRojo++;
    } else if (numPlaca == 7 || numPlaca == 8) {
      print("El carro ingresado es con calcomania verde");
      print("---------------------------------------------");
      carroVerde++;
    } else if (numPlaca == 9 || numPlaca == 0) {
      print("El carro ingresado es con calcomania azul");
      print("---------------------------------------------");
      carroAzul++;
    } else {
      print("Digito mal ingresado");
      print("---------------------------------------------");
    }
    contador++;
  }
  //SALIDA Alg
  print("Ingresaron un total de $carroAma carros con calcomanía amarrilla");
  print("Ingresaron un total de $carroRosa carros con calcomanía rosada");
  print("Ingresaron un total de $carroRojo carros con calcomanía roja");
  print("Ingresaron un total de $carroVerde carros con calcomanía verde");
  print("Ingresaron un total de $carroAzul carros con calcomanía azul");
}
