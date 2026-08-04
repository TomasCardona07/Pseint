Algoritmo matrices10
	
	Definir f, c, sumaPrincipal, sumaSecundaria Como Entero
	Dimension matriz[8,8]
	sumaPrincipal <- 0
	sumaSecundaria <- 0
	Escribir "Ingrese los valores de la matriz:";
	Para f <- 0 Hasta 7 Hacer
		Para c <- 0 Hasta 7 Hacer
			Escribir "Ingrese el numero en la fila: ",f," y columna ", c;
			Leer matriz[f,c];
		FinPara
	FinPara
	Para f <- 0 Hasta 7 Hacer
		Para c <- 0 Hasta 7 Hacer
			Si f = c Entonces
				sumaPrincipal <- sumaPrincipal + matriz[f,c];
			FinSi
			Si f + c = 9 Entonces
				sumaSecundaria <- sumaSecundaria + matriz[f,c];
			FinSi
		FinPara
	FinPara
	Escribir "Suma diagonal principal: ", sumaPrincipal;
	Escribir "Suma diagonal secundaria: ", sumaSecundaria;
FinAlgoritmo