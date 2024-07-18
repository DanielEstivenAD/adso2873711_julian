import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE VECTOR 07
  /*Diseñar un algoritmo que lea una palabra o una frase en un arreglo de
 caracteres y determinar si esa palabra o frase es palíndroma 
 */
  //DEFINICIÓN Vbles
  String? palabra;
  List<String> VectPalindrome = [];
  List<String> vectPalabra = [];
  //ENTRADA Alg
  print("Ingrese la palabra para la comprobrar Palíndrome");
  palabra = stdin.readLineSync()!;
  //PROCESO Alg
  //Se recorre cada letra de la palabra y se envia al vectorPalabra
  for (var i = 0; i < palabra.length; i++) {
    vectPalabra.add(palabra[i]);
    VectPalindrome.add(palabra[palabra.length - i - 1]);
  }
  print(vectPalabra);
  print(VectPalindrome);
  if (vectPalabra.toString().toUpperCase() == VectPalindrome.toString()) {
    print("Es Palíndrome");
  } else {
    print("No es Palíndrome");
  }
  //SALIDA Alg
}
