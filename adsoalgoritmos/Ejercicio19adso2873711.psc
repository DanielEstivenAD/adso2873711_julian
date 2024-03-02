Proceso Ejercicio19
	//Pedir dos números y decir si uno es múltiplo del otro.
	
	//DEFINICIÓN/DECLARACIÓN VARIABLES
	Definir num1,num2 Como entero;
	
	//ENTRADA
	Escribir "Digite el número 1 y el número 2";
	Leer num1,num2;
	
	//PROCESO-SALIDA
	si (num1%num2=0) Entonces
		Escribir "El ",num1, " si es multiplo de ",num2;
	SiNo
		Escribir "El ",num1, " no es multiplo de ",num2;
	FinSi
FinProceso
