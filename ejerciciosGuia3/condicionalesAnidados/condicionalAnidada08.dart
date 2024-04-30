import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL ANIDADA 08
  /*
 El jefe del departamento de construcción de la constructora Pagasa, desea que se le desarrolle un
programa para sus empleados, el cual calcule el sueldo de un empleado, de tal manera que el sueldo
se calculará de la siguiente manera: si el número de horas trabajadas es mayor a 40, el excedente
de 40 hrs. se paga al doble de la cuota por hora, en caso de no ser mayor a 40 hrs. se paga la cuota
normal por hora, si las horas exceden a 50 hrs. el excedente de 50 hrs. se paga al triple de la cuota
por hora. Se pedirá el nombre del empleado, el número de horas trabajadas y la cuota por hora.
mostrar en pantalla el nombre del empleado, el número de horas trabajadas y su sueldo.
 */
  //DEFINICIÓN Vbles
  String? nombre;
  double horasTrabajadas, cuotaHora, sueldo;
  //ENTRADA Alg
  print("Indique por favor su nombe");
  nombre = stdin.readLineSync();
  print("Confirme cuantas horas trabajó");
  horasTrabajadas = double.parse(stdin.readLineSync()!);
  print("Confirme la cuota por hora");
  cuotaHora = double.parse(stdin.readLineSync()!);
  //PROCESO Alg
  if (horasTrabajadas > 40 && horasTrabajadas < 50) {
    sueldo = (cuotaHora * 2) * horasTrabajadas;
  } else if (horasTrabajadas < 40) {
    sueldo = cuotaHora * horasTrabajadas;
  } else {
    sueldo = (cuotaHora * 3) * horasTrabajadas;
  }
  //SALIDA Alg
  print(
      "El nombre del empleado es $nombre, la cual trabajó una cantidad de $horasTrabajadas horas, por lo que su sueldo es de $sueldo");
}
