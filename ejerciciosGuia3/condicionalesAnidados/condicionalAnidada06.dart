import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL ANIDADA 06
  /*
 El dueño de una empresa desea planificar las decisiones financieras que tomara en el Siguiente año.
La manera de planificarlas depende de lo siguiente:
Si actualmente su capital se encuentra con saldo negativo, pedirá un préstamo bancario para que su
nuevo saldo sea de $1000000. Si su capital tiene actualmente un saldo positivo pedirá un préstamo
bancario para tener un nuevo saldo de $2000000, pero si su capital tiene actualmente un saldo
superior a los $2000000 no pedirá ningún préstamo
Posteriormente repartirá su presupuesto de la siguiente manera
 $500000 para equipo de computo
• $200000 para mobiliario
• y del resto, la mitad será para la compra de insumos y la otra para otorgar incentivos al personal.
Solicitar el capital y en base a este desplegar que cantidades se destinaran para la compra de insumos
e incentivos al personal y, en caso de que fuera necesario, a cuanto ascendería la cantidad que se
pediría al banco.
 */
  //DEFINICIÓN Vbles
  double capital, insumo, incentivos, restante,faltante1, faltante2;
  //ENTRADA Alg
  print("Indique por favor la capital de la empresa");
  capital = double.parse(stdin.readLineSync()!);
  //PROCESO-SALIDA Alg
  if (capital <= 0) {
    restante = ((1000000 - 500000) - 200000);
    insumo = restante / 2;
    incentivos = restante / 2;
    print("Usted tendrá un prestamo de un 1000000");
    print(
        "USted destinara una cantidad de 500000 para el equipo de computo, una cantidad de 200000 para el mobiliario y una cantidad de $insumo para insumos y una cantidad de $incentivos para incentivos del personal");
  } else if (capital<2000000){
    faltante1=2000000-capital;
    faltante2=faltante1+capital;
    restante = ((faltante2 - 500000) - 200000);
    insumo = restante / 2;
    incentivos = restante / 2;
    print("Usted tendrá un prestamo de $faltante1 para tener un capital de 2000000");
    print(
        "USted destinara una cantidad de 500000 para el equipo de computo, una cantidad de 200000 para el mobiliario y una cantidad de $insumo para insumos y una cantidad de $incentivos para incentivos del personal");
  } else if (capital>=2000000){
    restante = ((capital - 500000) - 200000);
    insumo = restante / 2;
    incentivos = restante / 2;
    print("Usted no pedirá un prestamo ya que su capital la cual es una cantidad de $capital es superior a 2000000");
    print(
        "USted destinara una cantidad de 500000 para el equipo de computo, una cantidad de 200000 para el mobiliario y una cantidad de $insumo para insumos y una cantidad de $incentivos para incentivos del personal");
  } else {}
}
