Proceso Ejemplo06
	//En un hospital se requiere un algoritmo que solicite al usuario los siguientes datos: nombre del paciente, edad, tipo de sangre, estatura y género. Mostrar todos los datos al final.
	Definir nombre_paciente,tipo_sangre,genero como cadena;
	Definir edad_paciente,estatura Como Real;
	//ENTRADA DATOS
	Escribir "Buen día, para continuar con el ingreso del paciente, Digite los siguientes Datos:";
	Escribir "Digite el nombre del paciente a ingresar";
	Leer nombre_paciente;
	Escribir "Digite la edad que tiene el paciente";
	Leer edad_paciente;
	Escribir "Digite la estatura que tiene el paciente";
	Leer estatura;
	Escribir "Digite el tipo de sangre del paciente";
	Leer tipo_sangre;
	Escribir "Confirme por favor el género del paciente";
	Leer genero;
	//SALIDA DATOS
	Escribir "Datos confirmados:";
	Escribir "El nombre del paciente es: ",nombre_paciente,", la edad del paciente es: ",edad_paciente,", con una estatura de: ",estatura,"m, el tipo de sangre que tiene el paciente es: ",tipo_sangre,", paciente se identifica como: ",genero;
FinProceso