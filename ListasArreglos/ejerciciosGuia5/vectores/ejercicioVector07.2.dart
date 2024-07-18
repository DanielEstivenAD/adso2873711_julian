
void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE VECTOR 07
  /*Diseñar un algoritmo que lea una palabra o una frase en un arreglo de
 caracteres y determinar si esa palabra o frase es palíndroma 
 */
  //DEFINICIÓN Vbles
  String? palabra = "OSO";
  List<String> vectPalindrome = [];
  List<String> vectPalabra = [];
  //ENTRADA Alg
  //PROCESO Alg
  //Se recorre cada letra de la palabra y se envia al vectorPalabra
  for (var i = 0; i < palabra.length; i++) {
    vectPalabra.add(palabra[i]);
    vectPalindrome.add(palabra[palabra.length - i - 1]);
  }
  vectPalindrome = vectPalabra.reversed.toList();
  print(vectPalabra);
  print(vectPalindrome);
  if (vectPalabra.toString() == vectPalindrome.toString()) {
    print("Es Palíndrome");
  } else {
    print("No es Palíndrome");
  }
  //SALIDA Alg
}
