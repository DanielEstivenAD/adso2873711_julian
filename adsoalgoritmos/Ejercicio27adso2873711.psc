Proceso Ejercicio27
	//Pedir un número y decir si es par o impar.
	//DEFINICIÓN/DECLARACIÓN VARIABLES
	Definir num1, residuo Como real;
	
	//ENTRADA
	Escribir "Digite un número ";
	Leer num1;
	
	//PROCESO
	residuo<-num1%2
	si residuo=0 Entonces
		Escribir num1 " es un número par";
	SiNo
		Escribir num1 " es un número impar";
	FinSi
FinProceso
