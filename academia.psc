Algoritmo academia
	Definir descicion,numAsistencias,totalCursos,totalDias,totalGeneral,cursoMayorAsistencia,asistenciaCursos,asistenciaDia,aux,contador,contadorDescicion  como numero
	Dimensionar matriz[8,8];
	Dimensionar reportes[8];
	Dimensionar ordenar[8];
	Dimensionar consultar[8];
	Dimensionar asistentesCurso[8];
	Dimensionar asistentesDia[8];
	
	descicion <- 0;
	totalGeneral <- 0;
	contadorDescicion <- 0;
	Mientras descicion <> 5 Hacer
		Repetir
			Mostrar "INGRESE QUE DESEA HACER"
			Mostrar "[1] REGISTRAR ASISTENCIAS"
			Mostrar "[2] MOSTRAR REPORTES"
			Mostrar "[3] ORDENAR INFORMACION"
			Mostrar "[4] CONSULTAR INFORMACION"
			Mostrar "[5] SALIR"
			Leer descicion;
			si (descicion > 5 O descicion < 1 ) Entonces
				Mostrar "Numero no valido";
			FinSi
		Mientras Que descicion > 5 O descicion < 1
		Segun descicion Hacer
			1:
				si (contadorDescicion <> 1) Entonces
					Para dias <- 0 Hasta 7 Hacer
						para cursos <- 0 Hasta 7 Hacer
							Repetir
								Mostrar "Cuantas personas asistieron el dia ",dias+1," en el curso ", cursos+1;
								Leer numAsistencias;
								si numAsistencias < 0 Entonces
									Mostrar "Numero no valido";
								FinSi
							Hasta Que numAsistencias >= 0 //Se puede 0 porque puede existir cursos donde no fue nadie
							matriz[dias,cursos] <- numAsistencias;
							totalGeneral <-(totalGeneral + matriz[dias,cursos]);
						FinPara
					FinPara
					Mostrar "";
					contadorDescicion <- 1;
				SiNo
					Mostrar "ya has registrado, no se puede volver a registrar"
				FinSi
			2:
				si(contadorDescicion = 1 ) Entonces
					//mostrar matriz
					Mostrar ""
					Mostrar "dias son las filas y cursos son columnas, informacion registrada:"
					Para dias <- 0 Hasta 7 Hacer
						Para cursos<- 0 Hasta 7 Hacer
							Mostrar Sin Saltar matriz[dias,cursos], " | "
						FinPara
						Mostrar "";
					FinPara
					
					Mostrar ""
					Mostrar "ASISTENTES POR CURSO";
					Para cursos <- 0 Hasta 7 Hacer
						asistenciaCursos <- 0;
						Para dias<- 0 Hasta 7 Hacer
							asistenciaCursos <- asistenciaCursos + matriz[dias,cursos];
						FinPara
						asistentesCurso[cursos] <- asistenciaCursos;
						Mostrar "en el curso ", cursos+1," hubo ",asistentesCurso[cursos]," asistentes";
					FinPara
					Mostrar "";
					Mostrar "ASISTENTES POR DIA:";
					Para dias <- 0 Hasta 7 Hacer
						asistenciaDia <- 0;
						Para cursos<- 0 Hasta 7 Hacer
							asistenciaDia <- asistenciaDia + matriz[dias,cursos];
						FinPara
						asistentesDia[dias] <- asistenciaDia;
						Mostrar "en el dia ", dias+1," hubo ",asistentesDia[dias]," asistentes";
					FinPara
					
					Mostrar "";
					Mostrar "total general:";
					Mostrar "El total de asistencia en general fue: ",totalGeneral;
					Mostrar "";
					Mostrar "curso con mayor asistencia entre el primero y el ultimo:";
					cursoMayorAsistencia <- matriz[0,0]
					si(asistentesCurso[7] > asistentesCurso[0]) Entonces
						Mostrar " el ultimo curso tuvo mayor asistencia que el primero";
					SiNo
						si (asistentesCurso[7] = asistentesCurso[0]) Entonces
							Mostrar "ambos cursos tuvieron las misma asistencia";
						SiNo
							Mostrar "el primer curso tuvo mayor asistencia que el ultimo";
						FinSi
					FinSi
					Mostrar "";
				SiNo
					Mostrar "no has registrado en la matriz"
				FinSi
			3:
				si (contadorDescicion = 1) Entonces
					//metodo burbuja para ordenar de menor a mayor:
					para dias <- 0 Hasta 6 Hacer
						Para cursos<- 0 Hasta 6-dias Hacer
							si(asistentesCurso[cursos] > asistentesCurso[cursos+1]) Entonces
								aux <- asistentesCurso[cursos];
								asistentesCurso[cursos] <- asistentesCurso[cursos+1];
								asistentesCurso[cursos+1] <- aux;
							FinSi
						FinPara
					FinPara
					Mostrar "Lista orenada:"
					Para c<- 0 Hasta 7 Hacer
						Mostrar Sin Saltar asistentesCurso[c],", ";
					FinPara
					Mostrar "";
				SiNo
					Mostrar "no has registrado en la matriz"
				FinSi
				
			4:
				si(contadorDescicion = 1) Entonces
					Repetir
						Mostrar "Ingrese un numero para buscar total de asistencia "
						Leer buscarAsistencia;
						si(buscarAsistencia < 0 ) Entonces
							Mostrar "numero no valido";
						FinSi
					Hasta Que buscarAsistencia >= 0
					contador <- 0;
					Para dias<- 0 Hasta 7 Hacer
						para cursos<-0 Hasta 7 Hacer
							si(matriz[dias,cursos] = buscarAsistencia) Entonces
								Mostrar "asistencia encontrada, esta en la posicion: ", "[",dias,",",cursos,"]";
								contador <- contador +1;
							FinSi
						FinPara
					FinPara
					si (contador = 0) Entonces
						Mostrar "no se ha encontrado un numero con la asistencia ingresada";
					FinSi
				SiNo
					Mostrar "no has registrado en la matriz"
				FinSi
			De Otro Modo:
				Mostrar "gracias por usar el sistema :)"
				descicion <- 5;
		Fin Segun
	FinMientras
FinAlgoritmo
