Algoritmo Ejercicio29
	//Dado un monto, calcular el descuento considerando que por encima de 100 el descuento es del 10%
	//y por debajo de 100, el descuento es del 2%.
	
	//DEFINICIÓN/DECLARACIÓN VARIABLES
	Definir num1,num2 como real;	
	//ENTRADA
	Escribir "Digite un número";
	Leer num1;
	//PROCESO
	Si num1>100 Entonces
		num2<-num1*0.10;
	SiNo
		num2<-num1*0.02;
	FinSi
	Escribir "El valor real es: ",num2;
FinAlgoritmo
