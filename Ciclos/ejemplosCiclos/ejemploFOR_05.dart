import 'dart:io';

void main(List<String> args) {
  /*
  Desarrollar un algoritmo tal que, dado como datos 10 números enteros, obtenga
  la suma de los 10 números entero, se mostrará la suma de dichos números.
  */
  int num;
  int suma = 0; //Vble tipo ACUMULADOR: siempre empieza en cero
  double prom = 0;
  //ADICIONAR CODIGO PARA SACAR EL PROMEDIO
  //MOSTRAR EL MENSAJE: "Digite número 1, Digite numero 2"
  int cant=10;
  for (int cant = 0; cant < 10; cant++) {
    print("Digite el número " + (cant + 1).toString());
    num = int.parse(stdin.readLineSync()!);
    //Se va aguardando la suma de los números
    suma = suma + num; //suma += num;
    print("La suma va en $suma");
  }
  prom = suma / cant;
  print("La suma es: $suma");
  print("El promedio es: $prom");
}
