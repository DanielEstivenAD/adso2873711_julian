import 'dart:io';

void main(List<String> args) {
  /*
  Realizar un algoritmo que permita solicitar una clave numéricaal usuario y no
   permitir continuar hasta que no ingrese la clave válida
  */
  //DEFINICIÓN DE Vbles
  int clave = 4564, ingresarClave, intentos = 3, contador = 0;
  //PROCESO Alg
  do {
    print("****************************************");
    print("Digite su clave");
    ingresarClave = int.parse(stdin.readLineSync()!);
    contador++;
    if (ingresarClave == clave) {
      print("Ya puede realizar lo que desee");
    } else if (contador < intentos) {
      print("Clave Incorrecta, intente nuevamente");
    } else {
      print("Ha superado los intentos permitidos");
    }
    print("****************************************");
  } while (ingresarClave != clave && contador < intentos);
}
