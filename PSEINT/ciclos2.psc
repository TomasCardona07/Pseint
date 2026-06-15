Algoritmo ciclos2
	Definir ED, PR, SU, NU, c como numero
	Mostrar "Ingrese el numero de alumnos"
	Leer NU
	//=========== CICLO WHILE ==========
	c <- 1;
	SU <- 0;
	Mientras c <= NU Hacer
	Mostrar "Ingrese la edad del alumno ", c;
		Leer ED;
		c <- c + 1;
		SU <- SU + ED;
	FinMientras
	PR <- (SU / NU);
	Mostrar "El promedio de los estudiantes es: ", PR, " años";
	
	
	// ==============	CICLO PARA ===============
	Para c <- 1 Hasta NU Con Paso 1 Hacer
		Mostrar "Ingrese la edad del alumno ", c;
		Leer ED;
		SU <- (SU + ED);
	FinPara
	PR <- SU /NU;
	Mostrar "El promedio de los estudiantes es: ", PR, " años";
	
	
	
	//======== CICLO HASTA QUE ==========;
	c <- 1
	Repetir
		Mostrar "Ingrese la edad del alumno ", c;
		Leer ED;
		SU <- SU + ED;
		c <- c + 1
	Hasta Que (c > NU)
	PR <- SU / NU
	Mostrar "El promedio de los estudiantes es: ", PR, " años";
FinAlgoritmo
