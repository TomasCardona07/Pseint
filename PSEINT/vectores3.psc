Algoritmo vectores3
	Definir suma, c ,num1, num2 como numero
	Dimensionar vector1[21]
	Dimensionar vector2[21]
	Dimensionar vector3[21]
	para c<-1 Hasta 20 Con Paso 1 Hacer
		suma <- 0;
		Repetir
			Mostrar "Ingrese el valor del vector 1 en la posicion: ",c;
			Leer num1;
			si (num1 <= 0) Entonces
				Mostrar "Numero ingresado no valido"
			FinSi
		Hasta Que (num1>0);
		
		vector1[c] = num1;
		
		Repetir
			Mostrar "Ingrese el valor del vector 2 en la posicion: ",c;
			Leer num2;
			si (num1 <= 0) Entonces
				Mostrar "Numero ingresado no valido"
			FinSi
		Hasta Que (num2 > 0);
		
		vector2[c] = num2;
		suma <- num1 + num2;
		vector3[c] = suma;
	FinPara
	
	Mostrar " RESULTADOS:"
	para c<-1 Hasta  20 Con Paso 1 Hacer
		Mostrar"posicion " c,": ", vector1[c], " + ", vector2[c], " = ", vector3[c]
	FinPara
FinAlgoritmo
