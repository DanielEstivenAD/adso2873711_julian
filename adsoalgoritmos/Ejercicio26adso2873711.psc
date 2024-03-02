Proceso Ejercicio26
	//Pedir una nota numérica entera entre 0 y 10, y mostrar dicha nota de la forma: cero, uno, dos, tres...
	//DEFINICIÓN/DECLARACIÓN VARIABLES
	Definir nota como Real;
	//ENTRADA
	Escribir "Escribir una nota numerica entre 0 y 10";
	Leer nota;
	//PROCESO
	si (nota<0) o (nota>10) entonces 
		Escribir "número invalido";
	SiNo
		Si(nota=0) Entonces
			Escribir "cero";
		SiNo
			si(nota=1) Entonces
				Escribir "Uno";
			SiNo
				si(nota=2) Entonces
					Escribir "Dos";
				SiNo
					si(nota=3) Entonces
						Escribir "Tres";
					SiNo
						si(nota=4) Entonces
							Escribir "Cuatro";
						SiNo
							si(nota=5) Entonces
								Escribir "Cinco";
							SiNo
								si(nota=6) Entonces
									Escribir "Seis";
								SiNo
									si(nota=7) Entonces
										Escribir "Siete";
									SiNo
										si(nota=8) Entonces
											Escribir "Ocho";
										SiNo
											si(nota=9) Entonces
												Escribir "Nueve";
											SiNo
												si(nota=10) Entonces
													Escribir "Diez";
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
			
		FinSi
	FinSi
FinProceso