Algoritmo sistemaCalificacion
	Definir descicion, alumnos,id,nExamen,nTaller,nProyecto,intercambios,busqueda,totalAprobados,contAprobados,contReprobados como numero
	Repetir
		Mostrar "ingresa el numero de alumnos 3-20"
		leer numA;
		si numA < 3 O numA > 20 Entonces
			Mostrar "numero no valido"
		FinSi
	Hasta Que numA > 2 Y numA < 21;
	Dimensionar identificacion[numA];
	Dimensionar alumnos[numA];
	Dimensionar examen[numA];
	Dimensionar proyecto[numA];
	Dimensionar taller[numA];
	Dimensionar notaFinal[numA];
	descicion <- 0;
	Mientras descicion <> 6 Hacer
		Repetir
			Mostrar "ingrese que desea hacer";
			Mostrar "[1] REGISTRAR NOTAS";
			Mostrar "[2] MOSTRAR RESULTADOS";
			Mostrar "[3] ORDENAR ESTUDIANTES";
			Mostrar "[4] BUSCAR ESTUDIANTE";
			Mostrar "[5] ESTADISTICAS";
			Mostrar "[6] SALIR";
			Leer descicion;
			si descicion > 6 O descicion < 1 Entonces
				Mostrar "numero no valido";
			FinSi
		Hasta Que descicion < 7 Y descicion > 0
		Segun descicion Hacer
			1:
				contMayor4 <- 0;
				Para c<- 0 Hasta numA-1 Hacer
					Mostrar "ingrese el id del alumno ",c+1;
					Leer id;
					Repetir
						Mostrar "ingrese la nota del examen del alumno ",c+1;
						Leer nExamen
						si(nExamen > 5 O nExamen < 0) Entonces
							Mostrar "nota no valida"
						FinSi
					Hasta Que nExamen <= 5 Y nExamen >= 0
					Repetir
					Mostrar "ingrese la nota del taller del alumno ",c+1;
					Leer nTaller
						si(nTaller > 5 O nTaller < 0) Entonces
							Mostrar "nota no valida"
						FinSi
					Hasta Que nTaller <= 5 Y nTaller >= 0
					Repetir
						Mostrar "ingrese la nota del proyecto del alumno ",c+1;
						Leer nProyecto
						si(nProyecto > 5 O nProyecto < 0) Entonces
							Mostrar "nota no valida"
						FinSi
					Hasta Que nProyecto <= 5 Y nProyecto >= 0
					identificacion[c] <- id;
					examen[c] <- nExamen;
					taller[c] <- nTaller;
					proyecto[c] <- nProyecto;
					notaFinal[c] <- ((examen[c] * 0.40) + (taller[c] * 0.30) + (proyecto[c] *0.30));
					si (notaFinal[c] > 4) Entonces
						contMayor4 <- contMayor4 +1;
					FinSi
				FinPara
			2:
				contAprobados <-0;
				contReprobados <-0;
				promedio <- 0;
				Para c<- 0 Hasta numA-1 Hacer
					Mostrar "ID DEL ALUMNO ",c+1, ": ",identificacion[c];
					Mostrar "NOTA DE EXAMEN DEL ALUMNO ",c+1, ": ",examen[c];
					Mostrar "NOTA TALLER DEL ALUMNO ",c+1, ": ",taller[c];
					Mostrar "NOTA PROYECTO DEL ALUMNO ",c+1, ": ",proyecto[c];
					Mostrar " NOTA FINAL DEL ALUMNO ",c+1, ": ",notaFinal[c];
					promedio <- promedio + notaFinal[c];
					si(notaFinal[c] >= 3) Entonces
						Mostrar "ESTADO DEL ALUMNO ",c+1,": APROBADO";
						contAprobados <- contAprobados +1;
					SiNo
						Mostrar "ESTADO DEL ALUMNO ",c+1,": REPROBADO";
						contReprobados <- contReprobados +1;
					FinSi
					Mostrar "========================"
				FinPara
				promedio <- promedio / numA;
				totalAprobados <- (contAprobados / numA) * 100;
				totalReprobados <- (contReprobados / numA) * 100;
				Mostrar "PROMEDIO GENERAL: ",promedio;
				Mostrar "CANTIDAD DE ESTUDIANTES QUE APROBARON: ",contAprobados;
				Mostrar "CANTIDAD DE ESTUDIANTES QUE REPROBARON: ",contReprobados;
				Mostrar "EL PORCENTAJE DE ESTUDIANTES QUE APROBARON FUE: ",totalAprobados,"%"
			3:
				intercambios <- 0;
				para c<- 0 Hasta numA -2 Hacer
					para j<-0 Hasta (numA-2) - c Hacer
						//mayor a menor
						si(notaFinal[j] < notaFinal[j+1]) Entonces
							aux <- notaFinal[j];
							notaFinal[j] <- notaFinal[j+1];
							notaFinal[j+1] <- aux;
							//id
							aux <- identificacion[j]
							identificacion[j] <- identificacion[j+1]
							identificacion[j+1] <- aux;
							//examen
							aux <- examen[j]
							examen[j] <- examen[j+1]
							examen[j+1] <- aux;
							//proyecto
							aux <- proyecto[j]
							proyecto[j] <- proyecto[j+1]
							proyecto[j+1] <- aux;
							//taller
							aux <- taller[j]
							taller[j] <- taller[j+1]
							taller[j+1] <- aux;
							//intercambios
							intercambios <- intercambios +1;
						FinSi
					FinPara
				FinPara
				Para  c<- 0 Hasta numA-1 Hacer
					Mostrar c+1," ID: ",identificacion[c]," NOTA FINAL: ",notaFinal[c];
				FinPara
				Mostrar "cambios realizados: ",intercambios;
			4:
				Mostrar "ingrese el id de un estudiante para buscarlo";
				Leer busqueda;
				contBusqueda <- 0;
				Para c<- 0 Hasta numA -1 Hacer
					si(busqueda = identificacion[c]) Entonces
						Mostrar "nota del examen: ",examen[c];
						Mostrar "nota del proyecto: ",proyecto[c];
						Mostrar "nota del taller: ",taller[c];
						Mostrar "nota final: ",notaFinal[c];
						si(notaFinal[c] >= 3) Entonces
							Mostrar "ESTADO: APROBÓ"
						SiNo
							Mostrar "ESTADO: REPROBÓ"
						FinSi
						contBusqueda <- contBusqueda +1;
					FinSi
				FinPara
				si(contBusqueda = 0) Entonces
					Mostrar "no se encontró el alumno"
				FinSi
			5:
				//nota final mas alta
				Mostrar "el id del estudiante con la nota mas alta es: ",identificacion[0];
				//nota final mas baja
				Mostrar "el id del estudiante con la nota mas baja es: ",identificacion[numA-1];
				//cantidad superior a 4.0
				Mostrar "cantidad de estudiantes con la nota mayor a 4: ",contMayor4;
				//porcentaje reprobados
				Mostrar "el porcentaje de estudiantes reprobados son: ",totalReprobados,"%"
				Mostrar "rendimiento del grupo:"
				si(promedio > 0 Y promedio < 3) Entonces
					Mostrar "deficiente";
				SiNo
					si(promedio >= 3 Y promedio<4) Entonces
						Mostrar "regular";
					SiNo
						si(promedio >= 4 y promedio < 4.5) Entonces
							Mostrar "BUENO"
						SiNo
							Mostrar "EXCELENTE"
						FinSi
					FinSi
				FinSi
			6:
				Mostrar "gracias por usar el sistemas :)";
		FinSegun
	FinMientras
FinAlgoritmo
