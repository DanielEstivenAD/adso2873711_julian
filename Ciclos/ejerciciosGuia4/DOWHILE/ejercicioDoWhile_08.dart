import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE Do-WHILE 08
  /* Hacer un programa que lea caracteres desde teclado y vaya contando las 
 vocales que aparecen. El programa  terminará  cuando  lea  el  carácter  #  y  
 entonces  mostrará  un  mensaje  indicando  cuántas vocales ha leído (cuántas 
 de cada una de ellas).
 */
  //DEFINICIÓN Vbles
  int cantA = 0,
      cantE = 0,
      cantI = 0,
      cantO = 0,
      cantU = 0,
      cantLetras = 0,
      sumaVocales,
      sumaLetras;
  String? letra;
  //ENTRADA - PROCESO Alg
  do {
    print("Ingrese un caracter (# para salir)");
    letra = stdin.readLineSync()!.toLowerCase();
    switch (letra) {
      case 'a':
        cantA++;
        break;
      case 'e':
        cantE++;
        break;
      case 'i':
        cantI++;
        break;
      case 'o':
        cantO++;
        break;
      case 'u':
        cantU++;
        break;
      default:
    }
    cantLetras++;
  } while (letra != "#");
  sumaVocales = cantA + cantE + cantI + cantO + cantU;
  sumaLetras = cantA + cantE + cantI + cantO + cantU + cantLetras;
  //SALIDA Alg
  print("La cantidad de a fue de $cantA");
  print("La cantidad de e fue de $cantE");
  print("La cantidad de i fue de $cantI");
  print("La cantidad de 0 fue de $cantO");
  print("La cantidad de u fue de $cantU");
  print("La cantidad de vocales es de $sumaVocales");
  print("La cantidad de letras es de $sumaLetras");
}
