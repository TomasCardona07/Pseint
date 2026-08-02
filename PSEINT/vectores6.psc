Algoritmo vectores6
	Definir num1,num2,c,c1,c2,suma, resultado, tamanio como numero
	Repetir
		Mostrar "Ingrese la longitud de los vectores";
		Leer tamanio  
		si (tamanio <= 0) Entonces
			Mostrar "Longitd de los vectores ingresada no valida";
		FinSi
	Hasta Que (tamanio > 0)
	Dimensionar vector1[tamanio+1];
	Dimensionar vector2[tamanio+1];
	Dimensionar vector3[tamanio+1];
	para c<-1 Hasta tamanio con paso 1 Hacer
		Mostrar "Ingresa el ", c, " valor para el vector 1";
		Leer num1;
		vector1[c] <- num1;
		Mostrar "Ingresa el ", c, " valor para el vector 2";
		Leer num2;
		vector2[c] <- num2;
	FinPara
	c2 <- tamanio;
	para  c1 <- 1 Hasta tamanio Con Paso 1 Hacer
		resultado <- (vector1[c1] + vector2[c2]);
		vector3[c1] <- resultado;
		Mostrar vector1[c1], " + ", vector2[c2], " = ", vector3[c1];
		c2 <- (c2 -1);
	FinPara
FinAlgoritmo
