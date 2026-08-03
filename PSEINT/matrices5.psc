Algoritmo matrices5
	Definir sumaFilas,sumaColumnas, num,f,c como numero
	Dimensionar matriz[10,10];
	Dimensionar columnas[10];
	Dimensionar filas[10];
	
	para f<-0 Hasta 9 con paso 1 Hacer
		Para c<-0 Hasta 9 con paso 1 Hacer
			Repetir
				Mostrar "Ingrese el ",c+1," numero de la fila ",f+1," (tiene que ser de 0-50)";
				Leer num;
				si (num < 0 O num > 50) Entonces
					Mostrar "numero ingresado no valido"
				FinSi
			Hasta Que num >= 0 Y num <=50
			matriz[f,c] <- num;
		FinPara
	FinPara
	
	Para f<- 0 Hasta 9 con paso 1 Hacer
		sumaFilas <- 0;
		Para c<-0 Hasta 9 con paso 1 Hacer
			sumaFilas <- sumaFilas + matriz[f,c];
		FinPara
		filas[f] <- sumaFilas;
	FinPara
	
	Para c<- 0 Hasta 9 Con Paso 1 Hacer
		sumaColumnas  <- 0;
		Para f<- 0 Hasta 9 con paso 1 Hacer
			sumaColumnas <- sumaColumnas + matriz[f,c]
		FinPara
		columnas[c] <- sumaColumnas;
	FinPara
	
	Para f<-0 Hasta 9 Con Paso 1 Hacer
		Mostrar "la suma de la fila ",f, " es: ", filas[f]
	FinPara
	
	Para c<-0 Hasta 9 Con Paso 1 Hacer
		Mostrar "la suma de la columna ",c, " es: ", columnas[c]
	FinPara
FinAlgoritmo