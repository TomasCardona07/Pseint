Algoritmo ciclos3
	Definir C, estatura, suma, promedio, numGrupo como numero
	Mostrar "Ingrese el numero de integrantes del grupo";
	Leer numGrupo;
	suma <- 0;
	Para C <- 1 Hasta numGrupo Hacer
		Repetir
			Mostrar "Ingrese la estatura del integrante ", C;
			Leer estatura;
			si estatura <= 0 Entonces
				Mostrar "Estatura incorrecta, tiene que ser valor positivo";
			FinSi
		Hasta Que (estatura > 0)
		suma <- (suma + estatura);
	FinPara
	promedio <- (suma / numGrupo);
	Mostrar "El promedio de estaturas del grupo es de: ", promedio;
FinAlgoritmo
