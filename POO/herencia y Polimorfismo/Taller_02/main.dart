import 'dart:io';
import 'clases/Productos.dart';
import 'clases/DiscoDuro.dart';
import 'clases/Marcador.dart';
import 'clases/Portatil.dart';
import 'clases/Parlante.dart';

void main() {
  List<Producto> productos = [];
  int codProducto, opcion;
  String nomProducto,
      tipoDiscoDuro,
      colorMarcador,
      tipoMarcador,
      respuestaBool,
      respuestaBool2,
      tipoProcesador; // respuesta bool = para que la respuesta del usuario se guarde y se valide, respuestaBool2 = para saber si el electrodomestico tiene bluetooth
  double precioProducto,
      capacidadDiscoDuro,
      wattsElectro,
      tamanioMemoria,
      pesoParlante,
      potenciaParlante,
      horas,
      precioConsumo;
  bool disponible = false,
      bluetooth = false,
      encontrado = false,
      encontradoPortatil = false,
      encontradoParlante = false;

  do {
    print(
        """Bienvenido a el menú principal del programa, eliga la opción que desee:
      1) Crear Disco Duro
      2) Crear Marcador
      3) Crear Portátil
      4) Crear Parlante
      5) Vender Disco Duro
      6) Vender Marcador
      7) Vender Portátil
      8) Vender Parlante
      9) Calcular precio consumo Portátil
      10) Calcular precio consumo Parlante
      11) Ver lista de productos
      12) Salir""");
    opcion = int.parse(stdin.readLineSync()!);
    switch (opcion) {
      //------------------ DISCO DURO ------------------//
      case 1:
        print("""Ingrese los siguientes datos del Disco Duro.
        1. Código del Disco Duro.
        2. El nombre del Disco Duro.
        3. Precio del Disco Duro.
        4. Tipo de Disco (HDD/SSD).
        5. Capacidad del Disco Duro (en GB).
        6. Esta disponible (si o no)""");
        codProducto = int.parse(stdin.readLineSync()!);
        nomProducto = stdin.readLineSync()!;
        precioProducto = double.parse(stdin.readLineSync()!);
        tipoDiscoDuro = stdin.readLineSync()!;
        capacidadDiscoDuro = double.parse(stdin.readLineSync()!);
        respuestaBool = stdin.readLineSync()!.toLowerCase();
        if (respuestaBool == "si") {
          disponible = true;
        } else if (respuestaBool == 'no') {
          disponible = false;
        } else {
          print('Indique con si o no');
        }
        productos.add(DiscoDuro(codProducto, nomProducto, disponible,
            precioProducto, tipoDiscoDuro, capacidadDiscoDuro));
        // productos.add(DiscoDuro(1, "Disco Duro", true, 100.0, "SSD", 512));
        print('Se a creado el producto Disco Duro.');
        break;
      //------------------ MARCADOR ------------------//
      case 2:
        print("""Ingrese los siguientes datos del marcador.
        1. Código del marcador.
        2. El nombre del marcador.
        3. Precio del marcador.
        4. Tipo de marcador.
        5. Color del el marcador.
        6. Esta disponible (si o no)""");
        codProducto = int.parse(stdin.readLineSync()!);
        nomProducto = stdin.readLineSync()!;
        precioProducto = double.parse(stdin.readLineSync()!);
        tipoMarcador = stdin.readLineSync()!;
        colorMarcador = stdin.readLineSync()!;
        respuestaBool = stdin.readLineSync()!.toLowerCase();
        if (respuestaBool == "si") {
          disponible = true;
        } else if (respuestaBool == 'no') {
          disponible = false;
        } else {
          print('Indique con si o no');
        }
        productos.add(Marcador(codProducto, nomProducto, disponible,
            precioProducto, colorMarcador, tipoMarcador));
        // productos.add(Marcador(2, "Marcador", true, 5.0, "Rojo", "Permanente"));
        print('Se a creado el producto Marcador.');
        break;
      //------------------ PORTATIL ------------------//
      case 3:
        print("""Ingrese los siguientes datos del portatil.
        1. Codigo del portatil
        2. nombre del Portatil
        3. consumo de Watts.
        4. Tamaño de Memoria.
        5. Precio del portatil.
        6. Tipo de procesador.
        7. Tiene Bluetooth (si o no).
        8. Esta disponible (si o no)""");
        codProducto = int.parse(stdin.readLineSync()!);
        nomProducto = stdin.readLineSync()!;
        wattsElectro = double.parse(stdin.readLineSync()!);
        tamanioMemoria = double.parse(stdin.readLineSync()!);
        precioProducto = double.parse(stdin.readLineSync()!);
        tipoProcesador = stdin.readLineSync()!;
        respuestaBool2 = stdin.readLineSync()!;
        if (respuestaBool2 == "si") {
          bluetooth = true;
        } else if (respuestaBool2 == 'no') {
          bluetooth = false;
        } else {
          print('Indique con si o no');
        }
        respuestaBool = stdin.readLineSync()!.toLowerCase();
        if (respuestaBool == "si") {
          disponible = true;
        } else if (respuestaBool == 'no') {
          disponible = false;
        } else {
          print('Indique con si o no');
        }
        productos.add(Portatil(codProducto,nomProducto ,disponible, precioProducto, wattsElectro,
            bluetooth, tamanioMemoria, tipoProcesador));
        // productos.add(Portatil(3, 'Victus', true, 800.0, 65, true, 16, "Intel i7"));
        print('Se a creado el producto portatil.');
        break;
      //------------------ PARLANTE ------------------//
      case 4:
        print("""Ingrese los siguientes datos del parlante.
        1. Codigo del portatil
        2. nombre del Portatil
        3. consumo de Watts.
        4. Potencia del parlante.
        5. Precio del parlante.
        6. Peso del parlante.
        7. Tiene Bluetooth (si o no).
        8. Esta disponible (si o no)""");
        codProducto = int.parse(stdin.readLineSync()!);
        nomProducto = stdin.readLineSync()!;
        wattsElectro = double.parse(stdin.readLineSync()!);
        potenciaParlante = double.parse(stdin.readLineSync()!);
        precioProducto = double.parse(stdin.readLineSync()!);
        pesoParlante = double.parse(stdin.readLineSync()!);
        respuestaBool2 = stdin.readLineSync()!;
        if (respuestaBool2 == "si") {
          bluetooth = true;
        } else if (respuestaBool2 == 'no') {
          bluetooth = false;
        } else {
          print('Indique con si o no');
        }
        respuestaBool = stdin.readLineSync()!.toLowerCase();
        if (respuestaBool == "si") {
          disponible = true;
        } else if (respuestaBool == 'no') {
          disponible = false;
        } else {
          print('Indique con si o no');
        }
        productos.add(Parlante(codProducto,nomProducto, disponible, precioProducto, wattsElectro,
            bluetooth, potenciaParlante, pesoParlante));
        // productos.add(Parlante(4,'BJG'true, 150.0, 30, true, 20, 1.5));
        print('Parlante creado.');
        break;
      //------------------ VENDER DISCO DURO ------------------//
      case 5:
        for (var i = 0; i < productos.length; i++) {
          if (productos[i] is DiscoDuro) {
            DiscoDuro producto = productos[i] as DiscoDuro;
            print(
                'Producto vendido con descuento: ${producto.realizarDescuento()}');
            producto.mostrarInfoProducto();
            productos.removeAt(i); // Remover el producto después de venderlo
            encontrado = true;
            break; // Salimos del bucle porque ya hemos vendido un DiscoDuro
          }
        }

        if (!encontrado) {
          print('No hay discos duros para vender.');
        }
        break;
      //------------------ VENDER MARCADOR ------------------//
      case 6:
        for (var i = 0; i < productos.length; i++) {
          if (productos[i] is Marcador) {
            Marcador producto = productos[i] as Marcador;
            print(
                'Producto vendido con descuento: ${producto.realizarDescuento()}');
            producto.mostrarInfoProducto();
            productos.removeAt(i); // Remover el producto después de venderlo
            encontrado = true;
            break; // Salimos del bucle porque ya hemos vendido un DiscoDuro
          }
        }

        if (!encontrado) {
          print('No hay marcadores para vender.');
        }
        break;
      //------------------ VENDER PORTATIL ------------------//
      case 7:
        for (var i = 0; i < productos.length; i++) {
          if (productos[i] is Portatil) {
            Portatil producto = productos[i] as Portatil;
            print(
                'Producto vendido con descuento: ${producto.realizarDescuento()}');
            producto.mostrarInfoProducto();
            productos.removeAt(i); // Remover el producto después de venderlo
            encontrado = true;
            break; // Salimos del bucle porque ya hemos vendido un portatil
          }
        }

        if (!encontrado) {
          print('No hay Portatiles para vender.');
        }
        break;
      //------------------ VENDER PARLANTE ------------------//
      case 8:
        for (var i = 0; i < productos.length; i++) {
          if (productos[i] is Parlante) {
            Parlante producto = productos[i] as Parlante;
            print(
                'Producto vendido con descuento: ${producto.realizarDescuento()}');
            producto.mostrarInfoProducto();
            productos.removeAt(i); // Remover el producto después de venderlo
            encontrado = true;
            break; // Salimos del bucle porque ya hemos vendido un parlante
          }
        }

        if (!encontrado) {
          print('No hay parlantes para vender.');
        }
        break;
      //------------------ CONSUMO PORTATIL ------------------//
      case 9:
        for (var producto in productos) {
          if (producto is Portatil) {
            encontradoPortatil = true;
            print('Ingrese el número de horas que utilizará el portátil:');
            horas = double.parse(stdin.readLineSync()!);
            precioConsumo = producto.calcularPrecioConsumo(horas);
            print('Precio por consumo durante $horas es de: ${precioConsumo}');
            break; // Salimos del bucle después de encontrar un portátil
          }
        }
        if (!encontradoPortatil) {
          print('No hay portátiles para calcular el consumo.');
        }
        break;
      //------------------ CONSUMO PARLANTE ------------------//
      case 10:
        for (var producto in productos) {
          if (producto is Parlante) {
            encontradoParlante = true;
            print('Ingrese el número de horas que utilizará el parlante:');
            horas = double.parse(stdin.readLineSync()!);
            precioConsumo = producto.calcularPrecioConsumo(horas);
            print('Precio por consumo durante $horas es de: ${precioConsumo}');
            break; // Salimos del bucle después de encontrar un parlante
          }
        }
        if (!encontradoParlante) {
          print('No hay parlantes para calcular el consumo.');
        }
        break;
      //------------------ SALIDA DEL PROGRAMA ------------------//
      case 11:
        for (var i = 0; i < productos.length; i++) {
          productos[i].mostrarInfoProducto();
        }

      case 12:
        print("""Saliendo del programa.
        Gracias por utilizar el programa""");
        return;
      default:
        print('Opción no válida.');
        break;
    }
  } while (opcion != 12);
}
