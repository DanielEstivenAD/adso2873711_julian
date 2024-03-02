Proceso Ejemplo07
	//Se adelanta la convocatoria anual de apoyos de sostenimiento en el SENA Caldas.
	//Se requiere un algoritmo que permita pedir al usuario los siguientes datos del aprendiz: 
	//nombre del aprendiz, documento, tipo de documento, dirección de residencia, género, peso, estrato. 
	//Se requiere una variable saber si el aprendiz ha estudiado o no en el SENA. 
	//Mostrar toda la información.
	//DECLARACIÓN/DEFINICIÓN VARIABLES
	Definir nombre,documento,direccion como cadena;
	Definir tipo_documento,genero Como Caracter;
	definir estrato Como Entero;
	definir peso como real;
	Definir esta_activo Como Logico;//Booleano
	//ENTRADA DE DATOS
	Escribir "Buen día, para participar en la convocatoria de sostenimiento SENA, es necesario que ingrese los siguientes datos";
	Escribir "Ingrese el Nombre del aprendiz SENA";
	Leer nombre;
	Escribir "Por favor confirme el tipo de documento, si es C.C, T.I o C.E:";
	Leer tipo_documento;
	Escribir "Por favor digite el N° de documento del aprendiz:";
	Leer documento;
	Escribir "Confirmenos su género, si es (M/F):";
	Leer genero;
	Escribir "Confirme por favor el peso del aprendiz:";
	Leer peso;
	Escribir "Confirme la direccón de donde vive:";
	Leer direccion;
	Escribir "¿Qué estrato es?";
	Leer estrato;
	EScribir "¿El aprendiz actualmente esta activo en un curso del SENA?. Confirme con Verdadero o Falso:";
	Leer esta_activo;
	//SALIDA
	Escribir "El aprendiz ",nombre," con tipo de documento ",tipo_documento," y número de documento ",documento, " pesando ",peso,"K. La dirección de donde vive es: ",direccion," siendo estrato ",estrato;
	Escribir "";
	Escribir "¿El aprendiz se encuentra activo?",esta_activo;
	Escribir "";
	Escribir "Sus datos se han registrados, le indicamos estar pendientes a cualquier notificación";
FinProceso