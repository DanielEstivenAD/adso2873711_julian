import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL ANIDADA 05
  /*
 Una frutería ofrece las manzanas con descuento según la siguiente tabla:
 0-2: 0
 2.01-5:10
 5.01-10:15
 10.01 en adelante:20
 Determinar cuanto pagara una persona que compre manzanas es esa frutería sabiendo que el kilo 
 vale $1300
 */
  //DEFINICIÓN Vbles
  double totalPagar,kilos,descuento;
  double precioKilos=1300;
  //ENTRADA ALg
  stdout.writeln ("Ingrese la cantidad de kilos a comprar");
  kilos=double.parse(stdin.readLineSync()!);
  //PROCESO Alg
  totalPagar= precioKilos*kilos;
  if (kilos <= 2){
    descuento=0;
  } else if (kilos <=5){
    descuento= totalPagar*0.10;
  } else if (kilos <= 10){
    descuento = totalPagar * 0.15;
  } else {
    descuento = totalPagar * 0.2;
  }  
  totalPagar = totalPagar - descuento;
  //SALIDA Alg
  print("EL total a pagar es: $totalPagar");

  //***********************************************************   
  /*Segunda Forma
  //PROCESO Alg
  if (kilos<=0 && kilos<=2){
    descuento=0
  } else if(kilos>2 && kilos<=5){
    descuento=totalPagar *0.1;
  } else if(kilos>5 && kilos <=10){
    desciento=totalPagar*0.15;
  } else {
    descuento=totalPagar*0.2;
  }
  */

}
