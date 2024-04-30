import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL MULTIPLE 01
  /*
 La empresa comercializadora Solva vende escobas, recogedores y aromatizantes, clasifica a sus
clientes de acuerdo a la frecuencia de compras con las condiciones siguientes:
Si el cliente es de la categoría 1 se le descuenta el 5%
Si el cliente es de la categoría 2 se le descuenta el 8%
Si el cliente de de la categoría 3 se le descuenta el 12%
Si el cliente es de la categoría 4 se le descuenta el 15%
Cuando el cliente realiza una compra se generan los siguientes datos:
Nombre del cliente
Tipo de cliente
Cantidad comprada de escobas, recogedores y aromatizantes.
Los precios de estos elementos son.
• Escobas. 3000.
• Recogedores. 2000
• Aromatizantes. 1000
Desarrollar un programa en que lea estos datos y calcule y muestre en pantalla:
Nombre del cliente
Subtotal a pagar
Descuento
Total a pagar.
 */
  //DEFINICIÓN Vbles
  String? nombreCliente;
  int tipoCliente;
  int cantEscobas, cantRecogedores, cantAromat;
  int precioEscoba = 3000, precioRecogedor = 1000, precioAromat = 1000;
  double descuento, totalCompra, subTotal;
  //ENTRADA Alg
  print("Cual es su nombre");
  nombreCliente = stdin.readLineSync();

  print("Cual es su categoría");
  tipoCliente = int.parse(stdin.readLineSync()!);

  print("Cual es la cantidad de escobas, recogedores y aromatizantes");
  cantEscobas = int.parse(stdin.readLineSync()!);
  cantRecogedores = int.parse(stdin.readLineSync()!);
  cantAromat = int.parse(stdin.readLineSync()!);
  //PROCESO Alg
  subTotal = (cantEscobas.toDouble() * precioEscoba) +
      (cantRecogedores * precioRecogedor) +
      (cantAromat * precioAromat);
  switch (tipoCliente) {
    //SE evaluán las categorias
    case 1:
      descuento = subTotal * 0.05;
      break;
    case 2:
      descuento = subTotal * 0.08;
      break;
    case 3:
      descuento = subTotal * 0.12;
      break;
    case 4:
      descuento = subTotal * 0.15;
      break;
    default:
      descuento = 0;
      print("La categoría es incorrecta");
      break;
  }
  totalCompra = subTotal - descuento;
  //SALIDA Alg
  print("Su nombre es: $nombreCliente");
  print("Sub total a pagar es: $subTotal");
  print("El descuento es: $descuento");
  print("El total a pagar es: $totalCompra");
}
