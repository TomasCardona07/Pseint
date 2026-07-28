Algoritmo promedios
	Definir edad, filas, columnas, promedioTotal,promedioFila1,promedioFila2,PromedioFila3 como numero
	promedioFila1 <- 0;
	promedioFila2 <-0;
	PromedioFila3 <- 0;
	promedioTotal <-0;
	Dimensionar edades[3,10]
	Para filas<-0 Hasta 2 Con Paso 1 Hacer
		Para columnas<-0 Hasta 9 Con Paso 1 Hacer
			Repetir
				Mostrar "Ingrese la edad, del ", columnas+1," aprendiz de la fila ", filas+1;
				Leer edad
				si edad <= 0 Entonces
					Mostrar "Edad Ingresada no valida"
				FinSi
			Hasta Que (edad > 0)
			edades[filas,columnas] <- edad
			si filas = 0 Entonces
				promedioFila1 <- promedioFila1 + edad;
				promedioTotal <- promedioTotal + edad
			SiNo
				si filas = 1 Entonces
					promedioFila2 <- promedioFila2 + edad;
					promedioTotal <- promedioTotal + edad
				SiNo
					PromedioFila3 <- PromedioFila3 + edad;
					promedioTotal <- promedioTotal + edad
				FinSi
			FinSi
		Fin Para
	Fin Para
	filas <- 0
	columnas <- 0
	Para filas<-0 Hasta 2 Con Paso 1 Hacer
		Mostrar "Edades de los aprendices de la fila ", filas+1
		Para columnas<-0 Hasta 9 Con Paso 1 Hacer
			Mostrar  "Edad del aprendiz ", columnas+1," es: " edades[filas,columnas];
		FinPara
		Mostrar ""
	FinPara
	
	promedioFila1 <- promedioFila1 / 10
	promedioFila2 <- promedioFila2 / 10
	PromedioFila3 <- PromedioFila3 / 10
	promedioTotal <- promedioTotal / 30
	
	Mostrar "Promedio de edades de la fila 1 es:",promedioFila1
	Mostrar "Promedio de edades de la fila 2 es:", promedioFila2 
	Mostrar "Promedio de edades de la fila 3 es:", PromedioFila3
	
	Mostrar "Promedio total de todas las filas es: ", promedioTotal
	
FinAlgoritmo
