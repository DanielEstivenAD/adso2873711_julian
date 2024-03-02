Proceso Ejercicio12
	//Hacer un algoritmo que lea el nombre de una persona, el valor de la hora trabajada y el número de
	//horas que trabajó. Se debe mostrar el nombre y el pago de la persona.
	//DEFINICIÓN/DECLARACIÓN VARIABLES
	Definir nombrePersona como cadena;
	Definir valorHora,numeroHoras,pago Como Real;
	//ENTRADA DE DATOS
	Escribir "Ingrese el nombre de la persona: ";
	Leer nombrePersona;
	escribir "ingrse cuanto es el valor de hora trabajada: ";
	Leer valorHora;
	Escribir "indique por favor el número de horas que trabajó";
	Leer numeroHoras;
	//PROCESO
	pago<-valorHora*numeroHoras;
	//SALIDA
	Escribir "El nombre de la persona es: ",nombrePersona," y se le pagará: ",pago;
FinProceso
