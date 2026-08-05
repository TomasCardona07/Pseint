Algoritmo matrices8
	Definir f, c,num Como Entero
	Dimensionar matriz[6,8]
	Para f <- 0 Hasta 5 Hacer
		Para c <- 0 Hasta 7 Hacer
			Escribir "Ingrese el valor en la fila  ",f+1, " y columna ", c+1
			Leer num
			matriz[f,c] <- num;
		FinPara
	FinPara
	Para f <- 0 Hasta 5 Hacer
		Para c <- 0 Hasta 7 Hacer
			Si matriz[f,c] < 0 Entonces
				Escribir ""
				Escribir "Elemento negativo encontrado: ", matriz[f,c]
				Escribir "Fila: ", f+1
				Escribir "Columna: ", c+1
			FinSi
		FinPara
	FinPara
FinAlgoritmo
