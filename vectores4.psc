Algoritmo vectores4
	Definir edad,promedio,usuarios,c como numero
	Repetir
		Mostrar "Ingrese el numero de usuarios"
		Leer usuarios
		si(usuarios <= 0) Entonces
			Mostrar "numero ingresado no valido"
		FinSi
	Hasta Que (usuarios > 0)
	
	Dimensionar edades[usuarios+1]
	
	promedio <- 0;
	para c<-1 Hasta usuarios Con Paso 1 Hacer
		Repetir
			Mostrar "Ingrese la edad del usuario ", c;
			Leer edad
			si (edad <= 0) Entonces
				Mostrar "Edad no valida";
			FinSi
		Hasta Que (edad > 0)
		edades[c] <- edad;
		promedio <- (promedio + edad);
	FinPara
	
	promedio <- (promedio / usuarios);
	Mostrar "El promedio de las edades es: ", promedio;
FinAlgoritmo
