Proceso Ejericio23_optimizado
	//Pedir tres números y mostrarlos ordenados de mayor a menor.
	
	//DEFINICIÓN/DECLARACIÓN VARIABLES
	Definir num1,num2,num3 Como real;
	
	//ENTRADA
	Escribir "Digite el número 1, el número 2 y el número 3";
	Leer num1,num2,num3;
	
	//PROCESO-SALIDA
	si (num1>num2) y (num1>num3) Entonces
		si(num2>num3) Entonces
			Escribir " ",num1, " , ",num2, " , ",num3;
		SiNo
			Escribir " ",num1, " , ",num3, " , ",num2;
		FinSi
	SiNo
		si(num2>num1) y (num2>num3) Entonces
			si(num1>num3) Entonces
				Escribir " ",num2, " , ",num1, " , ",num3;
			SiNo
				Escribir " ",num2, " , ",num3, " , ",num1;
			FinSi
	    SiNo
			si(num3>num1) y (num3>num2) Entonces
				si(num2>num1) Entonces
					Escribir " ",num3, " , ",num2, " , ",num1;
				SiNo
					Escribir " ",num3, " , ",num1, " , ",num2;
				FinSi
			FinSi
		FinSi
	FinSi
FinProceso
