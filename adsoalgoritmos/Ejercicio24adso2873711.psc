Proceso Ejercicio24
	//Pedir un número entre 0 y 9.999 y decir cuántas cifras tiene
	//DEFINICIÓN/DECLARACIÓN VARIABLES
	Definir nume Como real;
	//ENTRADA
	Escribir "Digite un número entre 0 y 9.999";
	Leer nume;
	//PROCESO-SALIDA
	si (nume<=0) o (nume>=10000) entonces
		escribir "El número es invalido";
	SiNo
		si (nume<10) Entonces
			Escribir "El ",nume," tiene 1 cifra";
	    SiNo
		    si (nume<100) Entonces
				Escribir "El ",nume," tiene 2 cifras";
		    SiNo 
				si (nume<1000) entonces
					Escribir "El ",nume," tiene 3 cifras";
				SiNo
					si (nume<10000) entonces
						Escribir "El ",nume," tiene 4 cifras";
						si (nume<=0) o (nume>=10000) entonces
							escribir "El número es invalido";
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinProceso
