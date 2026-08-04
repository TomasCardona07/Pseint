Algoritmo matrices6
	Definir n, f, c Como Entero
	Repetir
		Escribir "Ingrese el tamaño de las matrices cuadradas:"
		Leer n
		si n <= 0 Entonces
			Mostrar "numero ingresado no valido";
		FinSi
	Hasta Que n > 0
	Dimensionar  matriz1[n+1,n+1]
	Dimensionar  matriz2[n+1,n+1]
	Dimensionar matriz3[n+1,n+1]
	
	Escribir "Ingrese los valores de la matriz Matriz 1:"
	Para f <- 0 Hasta n-1 Con Paso 1 Hacer
		Para c <- 0 Hasta n-1 Con Paso 1 Hacer
			Escribir "ingrese numero en la fila ",f+1," y columna ",c+1
			Leer matriz1[f,c]
		FinPara
	FinPara
	Escribir "Ingrese los valores de la matriz Matriz 2:"
	Para f <- 0 Hasta n-1 Con Paso 1 Hacer
		Para c <- 0 Hasta n-1 Con Paso 1 Hacer
			Escribir "ingrese numero en la fila ",f+1," y columna ",c+1
			Leer matriz2[f,c]
		FinPara
	FinPara
	
	Para f <- 0 Hasta n-1 Hacer
		Para c <- 0 Hasta n-1 Hacer
			matriz3[f,c] <- matriz1[f,c] + matriz2[f,c]
		FinPara
	FinPara
	Escribir "MATRIZ 1"
	Para f <- 0 Hasta n-1 Hacer
		Para c <- 0 Hasta n-1 Hacer
			Escribir Sin Saltar matriz1[f,c], " "
		FinPara
		Escribir ""
	FinPara
	Escribir "MATRIZ 2"
	Para f <- 0 Hasta n-1 Hacer
		Para c <- 0 Hasta n-1 Hacer
			Escribir Sin Saltar matriz2[f,c], " "
		FinPara
		Escribir ""
	FinPara
	Escribir "MATRIZ 3 (SUMA)"
	Para f <- 0 Hasta n-1 Hacer
		Para c <- 0 Hasta n-1 Hacer
			Escribir Sin Saltar matriz3[f,c], " "
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo
