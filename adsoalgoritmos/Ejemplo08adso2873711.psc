Proceso Ejemplo08
	// Condicional Simple 1
	//DEFINICIÓN/DECLARACIÓN VARIABLES
	Definir estadoClima como  cadena;
	//ENTRADA DATOS
	Escribir "ingrese el estado del clima";
	leer estadoClima;
	//PROCESO-SALIDA
	si (estadoClima="lluvias") Entonces //Siempre utilizar los aparentesis
		Escribir "sacar la sombrilla";
	FinSi
	si ((estadoClima="lluvias")o(estadoClima="lluvioso"))Entonces
		Escribir "Colocar impermeable";
	FinSi
	Escribir "caminar por la calle";
FinProceso
