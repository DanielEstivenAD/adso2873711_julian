import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL ANIDADA 10
  /*
 Tomando como base los resultados obtenidos en un laboratorio de análisis clínicos, un medico
determina si una persona esta normal, tiene anemia o tiene cardiopatía lo cual depende de su nivel
de hemoglobina en la sangre, de su edad y de su sexo. Si el nivel de hemoglobina que tiene una
persona es menor que el rango que le corresponde, se determina su resultado como Anemia, si esta
dentro del rango, se determina su resultado como Normal y si esta por encima del rango, se determina
su resultado como Cardiopatía.
 */
  //DEFINICIÓN Vbles
  int edad;
  double nivelHemo;
  String? genero;
  //ENTRADA Alg
  print("Confirme su edad (Se representa en años)");
  edad = int.parse(stdin.readLineSync()!);
  print("Confirme su nivel de Hemoglobina");
  nivelHemo = double.parse(stdin.readLineSync()!);
  print("Por favor confirme su genero");
  genero = stdin.readLineSync();
  //PROCESO Alg
  if (genero =="bebe" && edad == 0.1 && nivelHemo < 13) {
    print("El bebé tiene Anemia");
  } else if (genero =="bebe" && edad == 0.1 && nivelHemo > 26) {
    print("El bebe tiene Cardiopatía");
  } else if (genero =="bebe" && edad > 0.1 && edad <= 0.6 && nivelHemo < 10) {
    print("El bebé tiene Anemia");
  } else if (genero =="bebe" && edad > 0.1 && edad <= 0.6 && nivelHemo > 18) {
    print("El bebé tiene Cardiopatía");
  } else if (genero =="niño" && edad > 0.6 && edad <= 1 && nivelHemo < 11) {
    print("El niño tiene Anemia");
  } else if (genero =="niño" && edad > 0.6 && edad <= 1 && nivelHemo > 15) {
    print("El niño tiene Cardiopatía");
  } else if (genero =="niño" && edad > 1 && edad <= 5 && nivelHemo < 11.5) {
    print("El niño tiene Anemia");
  } else if (genero =="niño" && edad > 1 && edad <= 5 && nivelHemo > 15) {
    print("El niño tiene Cardiopatía");
  } else if (genero =="niño" && edad > 5 && edad <= 10 && nivelHemo < 12.6) {
    print("El niño tiene Anemia");
  } else if (genero =="niño" && edad > 5 && edad <= 10 && nivelHemo > 15.5) {
    print("El niño tiene Cardipatía");
  } else if (genero =="niño" && edad > 10 && edad <= 15 && nivelHemo < 13) {
    print("El niño tiene Anemia");
  } else if (genero =="niño" && edad > 10 && edad <= 15 && nivelHemo > 15.5) {
    print("El niño tiene Cardiopatía");
  } else if (genero == "muejeres" && edad > 15 && nivelHemo < 12) {
    print("La mujer tiene tiene Anemia");
  } else if (genero == "muejeres" && edad > 15 && nivelHemo > 16) {
    print("La mujer tiene tiene Cardiopatía");
  } else if (genero == "hombre" && edad > 15 && nivelHemo < 14) {
    print("el hombre tiene tiene Anemia");
  } else if (genero == "hombre" && edad > 15 && nivelHemo > 18) {
    print("el hombre tiene tiene Cardiopatía");
  } else {
    print("Datos mal ingresados");
  }
  //SALIDA Alg
}
