Algoritmo matrices4
	Definir num,numMayor,numMenor, f,c, nMayorFila,nMayorColumna,nMenorFila,nMenorColumna como numero
	Dimensionar matric[5,5]
	numMayor<- -9999999999;
	numMenor <- 9999999999;
	Para f<-0 Hasta 4 Con Paso 1 Hacer
		Para c<-0 Hasta 4 con paso 1 Hacer
			Mostrar "Ingresa el numero de la fila: ," f+1, " y columna: ",c+1;
			Leer num;
			si (num > numMayor) Entonces
				numMayor <- num;
				nMayorFila <- f+1;
				nMayorColumna <- c+1;
			FinSi
			si (num < numMenor) Entonces
				numMenor <- num;
				nMenorFila <- f+1;
				nMenorColumna <- c+1;
			FinSi
		FinPara
	FinPara
	Mostrar "El numero mayor es: ", numMayor
	Mostrar "Esta en la fila: ",nMayorFila, " y en la columna: ", nMayorColumna;
	Mostrar "-----------------------";
	Mostrar "El numero menor es: ", numMenor
	Mostrar "Esta en la fila: ",nMenorFila, " y en la columna: ", nMenorColumna;
FinAlgoritmo
