Proceso Ejercicio25
	//Pedir una nota de 0 a 5 y mostrarla de la forma: Insuficiente (0 - 2,9), Suficiente (3 - 4,5) y Bien (4,6 - 5)
	
	//DEFINICIÓN/DECLARACIÓN VARIABLES
	Definir nota Como Real;
	
	//ENTRADA
	Escribir "Digite su nota de 0 a 5";
	Leer nota;
	
	//PROCESO-SALIDA
	Si (nota<0) o (nota>5) Entonces
		Escribir "nota invalida";
	SiNo
		si (nota>=0) y (nota<=2.9) Entonces
			Escribir "La ",nota, " es insuficiente";
		SiNo
			Si (nota>=3) y (nota<=4.5) Entonces
				Escribir "La ",nota, " es Suficiente";
			SiNo
				si (nota>=4.6) y (nota<=5) Entonces
					Escribir "La ",nota, " esta Bien";
				FinSi
			FinSi
		FinSi
	FinSi

FinProceso
