class Vehiculo {
  String color;
  int velocidad;
  double tamanio;

  //CONSTRUCTOR Clase Vehiculo
  Vehiculo(this.color, this.velocidad, this.tamanio) {}
  // Vehiculo(String col, int vel, double tam) {
  //   this.color = col;
  //   this.velocidad = vel;
  //   this.tamanio = tam;
  // }

  //Metodos SET y GET
  //Metodo SET
  //Setea o asigna un nuevo valor para el atributo color
  void setColor(String newColor) {
    this.color = newColor;
  }

  // void setColor2(String color) {
  //   color = color;
  // }
  void setVelocidad(int newVelocidad) {
    this.velocidad = newVelocidad;
  }

  void setTamanio(double newTamanio) {
    this.tamanio = newTamanio;
  }

  //Metodo GET
  //Permite obtener el valor del atributo color
  String getColor() {
    return this.color;
  }

  int getVelocidad() {
    return this.velocidad;
  }

  double getTamanio() {
    return this.tamanio;
  }

  //METODO Avanzar
  void avanzar(int velAvanz) {
    int newVelocidad = this.velocidad + velAvanz;
    if (newVelocidad <= 200) {
      this.velocidad = newVelocidad;
      print('El vehículo avanza a ${this.velocidad}');
    } else {
      print('No puede superar el límite de 200 km/h');
    }
  }

  //Metodo detenerse
  void detenerse() {
    velocidad = 0;
    print('el vehículo se detuvo');
  }

  //Metodo Disminuir velocidad
  void disminuirVel(int disminurVelo) {
    int newvelocidad = this.velocidad - disminurVelo;
    if (newvelocidad >= 0) {
      this.velocidad = newvelocidad;
      print('El vehículo disminuyó la velocidad a ${this.velocidad}');
    } else {
      print('No es posible disminuir la velocidad');
    }
  }

  //Metodo de parquear
  void parquear(String lugarparqueado) {
    print('El vehículo a sido parqueado exitosamente en $lugarparqueado');
  }
}
