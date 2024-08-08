class Vehiculo {
  late String color;
  late int velocidad;
  late double tamanio;

  //CONSTRUCTOR Clase Vehiculo
  // Vehiculo(this.color, this.velocidad, this.tamanio) {}
  Vehiculo(String col, int vel, double tam) {
    this.color = col;
    this.velocidad = vel;
    this.tamanio = tam;
  }

  //METODO Avanzar
  void avanzar(int velAvanz) {
    this.velocidad = this.velocidad + velAvanz;
    print('El vehículo avanza a ${this.velocidad}');
  }

  //Metodo detenerse
  void detenerse() {
    velocidad = 0;
    print('el vehículo se detuvo');
  }
}

void main(List<String> args) {
  Vehiculo miVehiculo1;
  miVehiculo1 = Vehiculo('blanco', 30, 3.5);
  miVehiculo1.avanzar(60);
  miVehiculo1.avanzar(70);
  miVehiculo1.detenerse();
  //**************
  Vehiculo mivehiculo2 = Vehiculo('negro', 10, 4.5);
  mivehiculo2.avanzar(50);
  mivehiculo2.detenerse();
  //******************
  miVehiculo1.avanzar(40);
}
