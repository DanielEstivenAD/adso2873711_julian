import 'dart:io';

void main(List<String> args) {
  /*
  Realizar un algoritmo que permita mostrar al usuario un listado de opciones 
  tipo menú, para realizar una transacción en un banco(Determinar las que crea 
  necesarias). La última opción será la de salir y allíse terminará el ciclo, 
  de lo contrario mostrará las otras opcionesmientras el usuario quiera. 
  No se deberá implementar las acciones como tal sino solo prints que indiquen 
  las acciones realizadas
  */
  //DEFINICÓN Vblwa
  int opciones = 0, salidamenu = 6, cantProcesos, contador = 0;
  //ENTRADA Alg
  print("Cuantos procesos desea realizar");
  cantProcesos = int.parse(stdin.readLineSync()!);
  //PROCESO Alg
  do {
    print("----------------------------");
    print("Bienvenido");
    print("1. Sacar plata");
    print("2. Enviar plata");
    print("3. ingresar plata");
    print("4. Pagar servicios");
    print("5. Certificados");
    print("6. Salir");
    print("----------------------------");
    print("Digite la opción");
    opciones = int.parse(stdin.readLineSync()!);
    contador++;

    
    switch (opciones) {
      case 1:
        print("Sacar plata");
        break;
      case 2:
        print("Enviar plata");
        break;
      case 3:
        print("Ingresar plata");
        break;
      case 4:
        print("Pago de servicios");
        break;
      case 5:
        print("Generador de certificados");
        break;
      default:
        print("Opción incorrecta");
    }
    print("Gracias por estar con nosotros :D");
  } while (opciones != salidamenu && contador < cantProcesos);
}
