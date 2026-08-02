Algoritmo vectores5
	Definir num, c,rango como numero
	Repetir
		Mostrar "Ingrese el rango determinado del vector";
		Leer rango;
		si(rango <= 0) Entonces
			Mostrar "Rango ingresado no válido";
		FinSi
	Hasta Que (rango > 0)
	Dimensionar vector[rango+1];
	para c<-1 Hasta rango Con Paso 1 Hacer
		Repetir
			Mostrar "Ingrese el ", c, " numero par";
			Leer num;
			si ( !num %  2 = 0) Entonces
				Mostrar "El nombre ingresado no es valido, debe ser par";
			FinSi
		Hasta Que (num % 2 = 0)
		vector[c] <- num;
	FinPara
	Mostrar "Numeros:"
	para c<- 1 Hasta  rango con paso 1 Hacer
		Mostrar Sin Saltar vector[c], " | ";
	FinPara
FinAlgoritmo
