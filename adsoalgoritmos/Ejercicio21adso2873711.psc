Proceso Ejercicio21
	//Pedir dos números y decir cuál es el mayor o si son iguales.
	
	//DEFINICIÓN/DECLARACIÓN VARIABLES
	Definir num1,num2 Como real;
	
	//ENTRADA
	Escribir "Digite el número 1 y el número 2";
	Leer num1,num2;
	
	//PROCESO-SALIDA
	si (num1=num2) Entonces
		Escribir "El ",num1, " es igual a ",num2;
	SiNo
		si (num1>num2) Entonces
			Escribir "El ",num1, " es mayor que ",num2;
		SiNo
			Escribir "El ",num2, " es mayor que ",num1;
		FinSi
	FinSi
FinProceso