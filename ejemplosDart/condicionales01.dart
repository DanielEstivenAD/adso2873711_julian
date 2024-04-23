/*
void=tipo retorno-> azul
main=metodo o función(amarillo)
()=parametros
Print= es otra función por lo que será amarillo tambien
*/
void main() {
  //CONDICIONAL SIMPLE
  print("CONDICIONAL SIMPLE");
  int edad; //DEFINICIÓN
  edad = 14; //ASIGNACIÓN
  if (edad >= 18) {
    //Expresion logica=codigo si se cumple condición
    print("Usted es mayor de edad");
  }
  print("**********************************");
  print("CONDICIONAL DOBLE - 1");
  bool esMayor = true;
  if (esMayor == true) {
    //== significa comparación
    print("Usted es mayor de edad");
  } else {
    //else= significa Sino
    print("Es menor de edad");
  }
  print("**********************************");
  print("CONDICIONAL DOBLE - 2");
  double nota = 4.5;
  if (nota >= 3) {
    print("Usted aprobó el examen");
  } else {
    print("Usted no aprobó el examen");
  }
  //CONDICIONAL ANIDADO
  int estrato = 3;
  if (estrato == 1) {
    print("Usted es estrato 1");
    print("Se le subsidia el 10% de la factura");
  } else if (estrato == 2) {
    // else if= Significa sino entonces y se necesita minimo 1
    // siempre se termina con un else
    print("Usted es estrato 2");
    print("Se le subsidia el 5% de la factura");
  } else if (estrato == 3) {
    print("Usted es estrato 3");
    print("Paga la factura tal cual");
  } else if (estrato == 4) {
    print("Usted es estrato 4");
    print("Paga 5% mas de la factura");
  } else if (estrato == 5) {
    print("Usted es estrato 5");
    print("Paga 10% mas de la factura");
  } else if (estrato == 6) {
    print("Usted es estrato 6");
    print("Paga 15% mas de la factura");
  } else {
    print("El estrato es incorrecto");
  }
  //CONDICIONAL MÚLTIPLE
  print("**********************************");
  print("CONDICIONAL MULTIPLE");
  int trimestre = 4;
  switch (trimestre) {
    case 1:
      print("TRIMESTRE 1");
      print("Fase de requerimientos");
      break;
    case 2:
      print("TRIMESTRE 2");
      print("Fase de analisis");
      break;
    case 3:
      print("TRIMESTRE 3");
      print("Fase de diseño");
      break;
    case 4:
      print("TRIMESTRE 4");
      print("Fase de Implementación");
      break;
    case 5:
      print("TRIMESTRE 5");
      print("Fase de Pruebas");
      break;
    case 6:
      print("TRIMESTRE 6");
      print("Fase de Pruebas");
      break;
    default:
      print("El trimestre es incorrecto");
      break;
  } //Cierre switch
} //cierra metodo main
