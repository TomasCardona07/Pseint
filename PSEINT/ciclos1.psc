Algoritmo ciclos1
	Definir c, vA, sU, num como numero
	
	// ========= SOLUCION BUCLE MIENTRAS===========
	c <- 1;
	sU <- 0;
	Mientras c <= 10 Hacer
		Mostrar "Ingrese el ",c, " Numero";
		Leer vA;
		sU <- (sU + vA);
		c <- c + 1;
	FinMientras
	Mostrar "La suma de los valores es: ",sU;
	
	
	//========== SOLUCION BUCLE PARA ============
	sU <- 0;
	Para c <- 1 Hasta 10 Con Paso 1 Hacer
		Mostrar "Ingrese el ", c, " numero"
		Leer vA
		sU <- sU + vA
	FinPara
	Mostrar "La suma de valores es: ", sU
	
	
	
	
	//============= SOLUCION BUCLE Hasta Que =========
	c <- 1;
	sU <- 0;
	Repetir
		Mostrar "Ingrese el ", c, "Numero"
		Leer vA;
		sU <- (sU + vA)
		c <- c + 1;
	Hasta Que (c > 10)
	Mostrar "El resultado de la suma de los valores es: ",sU
FinAlgoritmo
