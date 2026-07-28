Algoritmo matriz
	numFilas <- 5;
	numColumnas <- 5;
	Dimensionar matrizCeros[numFilas,numColumnas]
	cuadratica = Verdadero
Para contadorFilas <- 0 Hasta numFilas-1 Con Paso 1 Hacer
	Para contadorColumnas <- 0 Hasta numColumnas-1 Con Paso 1 Hacer
		si numFilas = numColumnas Entonces
			si contadorFilas = contadorColumnas Entonces
				matrizCeros[contadorFilas,contadorColumnas] = 1;
			SiNo
				matrizCeros[contadorFilas,contadorColumnas] = 0;
			FinSi
			si (contadorColumnas + contadorFilas = numFilas-1) Entonces
				matrizCeros[contadorFilas,contadorColumnas] = 1;
			FinSi
			Mostrar Sin Saltar matrizCeros[contadorFilas,contadorColumnas], " "
		SiNo
			cuadratica = falso
		FinSi
	FinPara
	Mostrar ""
FinPara
si !cuadratica Entonces
	Mostrar "La raiz no es cuadrada"
FinSi
FinAlgoritmo
