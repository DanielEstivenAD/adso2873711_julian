import 'Animal.dart';
import 'dart:io';
import 'Gato.dart';
import 'Perro.dart';

void main(List<String> args) {
  //-------------- LISTA DE MASCOTAS ---------------//

  List<Animal> AnimalesVeterinaria = [];

  //-------------- VBLES ---------------//

  int cantMascotas;
  String nombre, raza, color, tipoMascota, respuestaEsterilizado, buscarNombre;
  DateTime fechaNac;
  double peso;
  bool esterilizado = false;

  //-------------- INGRESO DE DATOS ---------------//

  print('Confirme la cantidad de mascotas a registrar');
  cantMascotas = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < cantMascotas; i++) {
    print('Tipo de mascota que desea registrar (Perro o Gato):');
    String tipoMascota = stdin.readLineSync()!.toLowerCase();

    print('Indique el nombre:');
    String nombre = stdin.readLineSync()!;

    print('Indique la fecha de nacimiento (YYYY-MM-DD):');
    DateTime fechaNac = DateTime.parse(stdin.readLineSync()!);

    print('Indique el peso (kg):');
    double peso = double.parse(stdin.readLineSync()!);

    print('Indique la raza:');
    String raza = stdin.readLineSync()!;

    print('Indique el color:');
    String color = stdin.readLineSync()!;

    print('¿Está esterilizado? (si/no):');
    String respuestaEsterilizado = stdin.readLineSync()!.toLowerCase();
    if (respuestaEsterilizado == 'si') {
      esterilizado = true;
    } else if (respuestaEsterilizado == 'no') {
      esterilizado = false;
    } else {
      print("Opcion  invalida");
    }
    String codigoMascota = generarCodigo(tipoMascota, i + 1);
    if (tipoMascota == 'perro') {
      Perro myPerro =
          Perro(nombre, fechaNac, raza, peso, color, esterilizado, codigoMascota);
      AnimalesVeterinaria.add(myPerro);
    } else if (tipoMascota == 'gato') {
      Gato myGato = Gato(nombre, fechaNac, raza, peso, color, esterilizado, codigoMascota);
      AnimalesVeterinaria.add(myGato);
    }
  }
  print('Ingrese el nombre de la mascota que desea buscar:');
  buscarNombre = stdin.readLineSync()!;

  // Buscar mascota por nombre
  print('Ingrese el nombre de la mascota que desea buscar:');
  buscarNombre = stdin.readLineSync()!;

  bool mascotaEncontrada = false;
  for (var mascota in AnimalesVeterinaria) {
    if (mascota.getNombre().toLowerCase() == buscarNombre.toLowerCase()) {
      print('Información de la mascota encontrada:');
      mascota.mostrarInfo();
      mascotaEncontrada = true;
      break;
    }
  }

  if (!mascotaEncontrada) {
    print('No se encontró ninguna mascota con el nombre $buscarNombre');
  }

  int perrosEsterilizados = 0;

  for (var mascota in AnimalesVeterinaria) {
    // Verificamos si la mascota es de tipo Perro y está esterilizada
    if (mascota is Perro && mascota.getEsterilizado()) {
      perrosEsterilizados++;
    }
  }

  print('Hay $perrosEsterilizados perros esterilizados.');
// Contar cuántas mascotas tienen más de 5 años
  int mascotasMayoresDe5 = 0;
  DateTime fechaActual = DateTime.now();

  for (var mascota in AnimalesVeterinaria) {
    // Calculamos la edad en años
    int edad = fechaActual.year - mascota.getfechaNacimiento().year;

    // Si la fecha de nacimiento es después de la fecha actual de este año,
    // restamos 1 a la edad
    if (fechaActual.month < mascota.getfechaNacimiento().month ||
        (fechaActual.month == mascota.getfechaNacimiento().month &&
            fechaActual.day < mascota.getfechaNacimiento().day)) {
      edad--;
    }

    // Verificamos si tiene más de 5 años
    if (edad > 5) {
      mascotasMayoresDe5++;
    }
  }

  print('Hay $mascotasMayoresDe5 mascotas que tienen más de 5 años.');
}

// Función para generar el código
String generarCodigo(String tipoMascota, int numero) {
  String inicial = tipoMascota[0].toUpperCase();
  String codigoNumerico =
      numero.toString().padLeft(5, '0'); // Asegura que tenga 5 cifras
  return '$inicial-$codigoNumerico';
}
