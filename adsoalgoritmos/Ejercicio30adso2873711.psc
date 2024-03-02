Algoritmo Ejercicio30
	//Leer dos números y calcular su división, teniendo en cuenta que el denominador no debe ser 0 (cero)
	
	//DEFINICIÓN/DECLARACIÓN VARIABLES
	Definir num1,num2,resultado como real;
	//ENTRADA
	Escribir "Digite un número que se asigna como numerador";
	Leer num1;
	Escribir "Digite un número que se asigna como denominador";
	Leer num2;
	//PROCESO
	si num2=0 Entonces
		Escribir "la división no es posible";
	SiNo
		resultado<-num1/num2;
		Escribir "El resultado de la division es: ",resultado;
	FinSi
FinAlgoritmo
