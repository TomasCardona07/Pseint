Algoritmo matrices2
	Definir numCeros, f,c,num como numero
	Dimensionar matriz[4,3];
	numCeros <- 0;
	para f<-0 Hasta 3 Con Paso 1 Hacer
		para c<-0 Hasta 2 Con Paso 1 Hacer
			Repetir
				Mostrar "Ingrese numero entre 0 y 9 para la fila ",f+1, " y columna ",c+1;
				Leer num;
				si(num < 0 O num > 9) Entonces
					Mostrar "Numero ingresado no valido"
				FinSi
			Hasta Que num >= 0 Y num <= 9
			si (num = 0) Entonces
				numCeros <- numCeros + 1;
			FinSi
			matriz[f,c] <- num;
		FinPara
	FinPara

	Mostrar "cantidad de 0 encontrados = ", numCeros;
	para f<-0 Hasta 3 con paso 1 Hacer
		Para c<-0 Hasta 2 Con Paso 1 Hacer
			Mostrar Sin Saltar matriz[f,c];
		FinPara
		Mostrar ""
	FinPara
FinAlgoritmo
