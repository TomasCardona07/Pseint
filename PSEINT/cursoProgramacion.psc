Algoritmo cursoProgramacion
	Definir nota,notaE, estudiante, promedio, suma como numero
	Para estudiante <- 1 Hasta 25 Con Paso 1 Hacer //Ciclo de los estudiantes
		suma <-0
		Para notaE <-1 Hasta 5 Con Paso 1 Hacer //Ciclo de las notas
			Mostrar "Ingrese la " notaE, " nota del estudiante ", estudiante
			Leer nota
			Mientras nota < 0 O nota > 5 Hacer
				Mostrar "Numero no valido. ingrese la nota ", notaE, " nuevamente"
				Leer nota
			FinMientras
			suma <- suma + nota
		FinPara
		promedio <- suma / 5
		Mostrar "El promedio del estudiante ", estudiante, " es: ", promedio
		si	promedio >= 3.5 Entonces
			Mostrar "Aprobado"
		SiNo
			Mostrar "Reprobado"
		FinSi
		Mostrar "Presione una tecla para continuar"
		Esperar Tecla
		Limpiar Pantalla
	Fin Para
FinAlgoritmo
