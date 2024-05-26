import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE WHILE 01
  /*
 Una compañía de seguros tiene contratados a n vendedores. Cada uno hace tres 
 ventas a la semana. Su política de pagos es que un vendedor recibe un sueldo 
 base, y un 10% extra por comisiones de sus  ventas.  El  gerente  de  su  
 compañía  desea  saber  cuanto  dinero obtendrá  en  la  semana  cada vendedor 
 por concepto de comisiones por las tres ventas realizadas, y cuanto tomando en 
 cuenta su sueldo base y sus comisiones.
 */
  //DEFINICIÓN Vbles
  int cantVendedores, cantVentas = 3, contador = 0;
  double sueldoBase, comision, totalSueldo, totalValorVentas = 0, valorVenta;
  //ENTRADA Alg
  print("Cuantos trabajadores tiene");
  cantVendedores = int.parse(stdin.readLineSync()!);
  //PROCESO-SALIDA Alg
  cantVentas = 3;
  while (contador < cantVendedores) {
    //Controla los vendedores
    print("Confirme el valor de su sueldo base del vendedor ");
    sueldoBase = double.parse(stdin.readLineSync()!);
    for (int i = 0; i < cantVentas; i++) {
      //Controla las ventas
      print(
          "Digite el valor de la venta ${i + 1} del vendedor ${contador+1}"); 
          //print("Digite el valor de la venta " + (i + 1).toString());
      valorVenta = double.parse(stdin.readLineSync()!);
      totalValorVentas += valorVenta; //totalValorVentas=totalVentas+valorVenta
      while (valorVenta < 0 || valorVenta > 10000000) {
        stdout.writeln("La venta esta fuera del rango, ingrese de nuevo");
        valorVenta = double.parse(stdin.readLineSync()!);
      }
    }
    comision = totalValorVentas * 0.1;
    print("El vendedor tiene un total de $comision de comision");
    totalSueldo = sueldoBase + comision;
    print("El vendedor tendra esta semana un sueldo de $totalSueldo");
    contador++;
  }
}
