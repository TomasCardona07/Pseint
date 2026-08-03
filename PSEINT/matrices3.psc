Algoritmo matrices3
	Definir filas, columnas, num como numero
	Repetir
		Mostrar "Ingresa la longitud de filas"
		Leer filas
		si filas <= 0 Entonces
			Mostrar "numero de filas no valido"
		FinSi
	Hasta Que filas > 0
	Repetir
		Mostrar "Ingresa la longitud de columnas"
		Leer columnas
		si columnas <= 0 Entonces
			Mostrar "numero de columnas no valido"
		FinSi
	Hasta Que columnas > 0
	Dimensionar matriz[filas,columnas]
	
	Para f<-0 Hasta filas-1 Hacer
		Para c<-0 Hasta columnas-1 Hacer
			matriz[f,c] <- Azar(51);
			Mostrar Sin Saltar matriz[f,c], " | " ;
		FinPara
		Mostrar ""
	FinPara
FinAlgoritmo
