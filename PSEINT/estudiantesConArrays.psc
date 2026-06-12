Algoritmo estudiantesConArrays
	Definir nota, nA, suma, promedioNota, i como numero
	Definir novedad como texto
	
	//Numero de aprendices
	Mostrar "Ingrese el numero de aprendices"
	Leer nA
	Mientras nA <= 0 Hacer
		Mostrar "No valido, ingrese nuevamente"
		Leer nA
	FinMientras
	
	Dimensionar novedad[nA];
	Dimensionar promedio[nA];
	Para i <- 0 Hasta nA-1 Con Paso 1 Hacer //Estudiantes
		suma <- 0;
		Para contador <- 1 Hasta 5 con paso 1 Hacer //Notas del estudiante
			Mostrar "Ingrese la ", contador, " Nota del ", i+1, " Alumno"
			Leer nota
			Mientras ((nota < 0) O (nota > 5)) Hacer
				Mostrar "Nota no valida"
				Mostrar "Ingrese la ", contador, " Nota del ", i+1, " Alumno nuevamente"
				Leer nota
			FinMientras
			suma <- suma + nota
			si (suma / 5 > 3.5) Entonces
				detalle<- "Aprobo"
			SiNo
				detalle <- "reprobo"
			FinSi
		FinPara
		promedioNota <- suma / 5
		promedio[i] <- promedioNota;
		novedad[i] <- detalle;
	FinPara
	
	//Mostrar Datos
	Para i <- 0 Hasta nA-1 Con Paso 1 Hacer
		Mostrar "el alumno ", i+1," " novedad[i]
		Mostrar "Con el promedio: ", promedio[i]
		Mostrar "--------------"
	FinPara
FinAlgoritmo
