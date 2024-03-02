Proceso Ejercicio06
	//Hacer un algoritmo que lea el nombre de un artículo, el valor unitario, la cantidad a comprar y muestre
	//el nombre y el total a pagar.
	//DEFINICIÓN/DECLARACIÓN VARIABLES
	Definir nombre_articulo como cadena;
	Definir cantidad_comprar Como Entero;
	Definir valor_unitario,total_pagar Como Real;
	//ENTRADA DE DATOS
	Escribir "Buen día, para poder realizar la compra indique Primero el nombre del articulo"; 
	Leer nombre_articulo;
	Escribir "despues cual es el valor unitario del articulo";
	Leer valor_unitario;
	EScribir " Que cantidad desea del articulo";
	Leer cantidad_comprar;
	//PROCESO
	total_pagar<-valor_unitario*cantidad_comprar;
	//SALIDA
	Escribir "El nombre del articulo que compro es: ",nombre_articulo;
	Escribir "El total a pagar es de: ",total_pagar;
FinProceso