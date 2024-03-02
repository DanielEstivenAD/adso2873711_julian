Algoritmo Ejercicio28
	//Un trabajador recibe su pago, según la cantidad de horas trabajadas y su valor. Si la cantidad de
	//horas trabajadas es mayor que 40, éstas se consideran horas extra, y tienen un incremento de $10000
	//(diez mil) sobre el valor de la hora. Calcular y mostrar el salario (pago) del trabajador. Nota: leer horas
	//trabajadas y valor de la hora.
	
	//DEFINICIÓN/DECLARACIÓN VARIABLES
	Definir horasTrabajadas,valorHora,pago como real;
	//ENTRADA
	Escribir "Cuantas horas que trabajó";
	Leer horasTrabajadas;
	Escribir "Valor por hora";
	Leer valorHora;
	//PROCESO
	Si horas>40 Entonces
		pago=40*valorHora+(horasTrabajadas-40)*(valorHora+10000)
	SiNo
		pago=horasTrabajadas*valorHora
	FinSi
	Escribir "El pago del trabajador es: ",pago;
FinAlgoritmo
