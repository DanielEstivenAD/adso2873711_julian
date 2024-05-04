import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL ANIDADA 09
  /*
 El fondo de administración de pensiones requiere clasificar a las personas que se jubilaran en el año
2009. Existen tres tipos de jubilaciones: por edad, por antigüedad joven y por antigüedad adulta. Las
personas adscritas a la jubilación por edad deben tener 60 años o mas y una antigüedad en su empleo
de menos de 25 años.
Las personas adscritas a la jubilación por antigüedad joven deben tener menos de 60 años y una
antigüedad en su empleo de 25 años o más.
Las personas adscritas a la jubilación por antigüedad adulta deben tener 60 años o mas y una
antigüedad en su empleo de 25 años o mas.
Determinar en que tipo de jubilación, quedara adscrita una persona
 */
  //DEFINICIÓN Vbles
  int edad;
  double tiempoTrabajo;
  //ENTRADA Alg
  print("Confirme por favor su edad");
  edad = int.parse(stdin.readLineSync()!);
  print(
      "Confirme cuanto tiempo lleva trabajando en el mismo lugar (Se representa en Años)");
  tiempoTrabajo = double.parse(stdin.readLineSync()!);
  //PROCESO-SALIDA Alg
  if (edad >= 60 && tiempoTrabajo < 25) {
    print("Ustede se encuentra adscrita a jubilación por edad");
    print(
        "De acuerdo a sus datos ingresados usted si cumple con los parametros. FELICIDADES");
  } else if (edad < 60 && tiempoTrabajo >= 25) {
    print("Ustede se encuentra adscrita a jubilación por antigüedad joven");
    print(
        "De acuerdo a sus datos ingresados usted si cumple con los parametros. FELICIDADES");
  } else if (edad >= 60 && tiempoTrabajo >= 25) {
    print("Ustede se encuentra adscrita a jubilación por antigüedad adulta");
    print(
        "De acuerdo a sus datos ingresados usted si cumple con los parametros. FELICIDADES");
  } else {
    print("Usted aun no cumple con los parametros");
  }
}
