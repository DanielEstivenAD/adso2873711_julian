import 'dart:io';

class Persona {
  // ATRIBUTOS
  String nombre;
  String genero;
  double estatura;
  DateTime fechaNac;

  // CONSTRUCTOR
  Persona(this.nombre, this.genero, this.estatura, this.fechaNac);

  // METODOS
  void saludar() {
    print("La persona ${this.nombre} está saludando");
  }

  void comunicarse() {
    print("La persona ${this.nombre} se está comunicando");
  }

  void dormir() {
    print("La persona ${this.nombre} está durmiendo");
  }

  // Método para calcular la edad
  int calcularEdad() {
    DateTime hoy = DateTime.now();
    int edad = hoy.year - fechaNac.year;

    if (hoy.month < fechaNac.month ||
        (hoy.month == fechaNac.month && hoy.day < fechaNac.day)) {
      edad--;
    }

    return edad;
  }

  void mostrarEdad() {
    int edad = calcularEdad();
    print("La persona ${this.nombre} tiene $edad años.");
  }

  void mostrarInformacion() {
    int edad = calcularEdad();
    print(
        "La persona se llama ${this.nombre}, mide ${this.estatura}, es ${this.genero} y tiene $edad años");
  }
}

void main() {
  /************************** */
//PRIMERA FORMA
  Persona persona1 = Persona("Jorge", "genero", 1.80, DateTime(1990, 11, 4));
  persona1.saludar();
  persona1.comunicarse();
  persona1.dormir();
  persona1.mostrarEdad();
  persona1.mostrarInformacion();
  print("*" * 50);
  /************************** */
//SEGUNDA FORMA
  Persona persona2;
  persona2 = Persona("Maria", "Mujer", 1.50, DateTime(2012, 8, 1));
  persona2.saludar();
  persona2.comunicarse();
  persona2.dormir();
  persona2.mostrarEdad();
  persona2.mostrarInformacion();
  print("*" * 50);
  /************************** */
//TERCERA FORMA
  String nombrePersona;
  String generoPersona;
  double estaturaPersona;
  DateTime fechaNacPersona;
  print("Indique el nombre de la persona");
  nombrePersona = stdin.readLineSync()!;
  print("Indique el género de la persona");
  generoPersona = stdin.readLineSync()!;
  print("Confirme la estatura");
  estaturaPersona = double.parse(stdin.readLineSync()!);
  print("Confirme su fecha de nacimiento (formato: yyyy-mm-dd)");
  fechaNacPersona = DateTime.parse(stdin.readLineSync()!);
  Persona persona3 =
      Persona(nombrePersona, generoPersona, estaturaPersona, fechaNacPersona);
  persona3.saludar();
  persona3.comunicarse();
  persona3.dormir();
  persona3.mostrarEdad();
  persona3.mostrarInformacion();
    print("*" * 50);
  /************************** */
//CUARTA FORMA
  String nombrePersona2 = "Mario";
  String generoPersona2 = "Hombre";
  double estaturaPersona2 = 1.60;
  DateTime fechaNacPersona2 = DateTime(2012,5,7);
  Persona persona4 =
      Persona(nombrePersona2, generoPersona2, estaturaPersona2, fechaNacPersona2);
  persona4.saludar();
  persona4.comunicarse();
  persona4.dormir();
  persona4.mostrarEdad();
  persona4.mostrarInformacion();
}
