Algoritmo sistemaTorneos
	Definir descicion,jornada,equipo,puntos,totalPuntos,aux,contadorCambios,cantPuntos como numero
	Definir contDescicion Como Logico
	Dimensionar matriz[8,8]
	Dimensionar puntosEquipo[8]
	Dimensionar puntosJornada[8];
	Dimensionar equiposOrdenado[8];
	contDesicion <- Verdadero;
	descicion <- 0;
	Mientras descicion <> 6 Hacer
		Repetir
			Mostrar "INGRESE QUE DESEA HACER";
			Mostrar "[1] REGISTRAR RESULTADOS";
			Mostrar "[2] MOSTRAR CLASIFICACION";
			Mostrar "[3] OREDENAR CLASIFICACION";
			Mostrar "[4] BUSCAR EQUIPO";
			Mostrar "[5] ESTADISTICAS";
			Mostrar "[6] SALIR";
			Leer descicion;
			si(descicion > 6 O descicion < 1) Entonces
				Mostrar "numero no valido";
			FinSi
		Hasta Que (descicion <= 6 Y descicion > 0)
		Segun descicion Hacer
			1:
				si(contDesicion) Entonces
					// REGISTRO DE PUNTOS Y SUMA DE VALORES
					totalPuntos <- 0;
					Para equipo <- 0 Hasta 7 Hacer
						contEquipos <- 0;
						para jornada <- 0 Hasta 7 Hacer
							Repetir
								Mostrar "Ingrese los puntos obtenidos en la J",jornada+1," del equipo: ",equipo+1;
								Leer puntos;
								si (puntos < 0 ) Entonces
									Mostrar "numero no valido";
								FinSi
							Hasta Que (puntos >= 0)
							matriz[equipo,jornada] <- puntos;
							totalPuntos <- (totalPuntos + puntos);
							contEquipos <- contEquipos + puntos;
						FinPara
						puntosEquipo[equipo] <- contEquipos;
						equiposOrdenado[equipo] <- contEquipos;
					FinPara
					
					// PUNTOS POR JORNADA:
					Para jornada <- 0 Hasta 7 Hacer
						puntosPorJornada <- 0;
						para equipo <- 0 Hasta 7 Hacer
							puntosPorJornada <- (puntosPorJornada + matriz[equipo,jornada]);
						FinPara
						puntosJornada[jornada] <- puntosPorJornada;
					FinPara
					
					//contador para entrar a registro:
					contDesicion <- Falso;
				SiNo
					Mostrar "no se puede registrar 2 veces";
				FinSi
			2:
				si(!contDesicion) Entonces
					Mostrar "";
					Mostrar "TODOS LOS RESULTADOS REGISTRADOS";
					Mostrar "LOS EQUIPOS SON FILAS Y JORNADAS LAS COLUMNAS";
					para equipo <- 0 Hasta 7 Hacer
						para jornada <- 0 Hasta 7 Hacer
							Mostrar Sin Saltar matriz[equipo,jornada],", ";
						FinPara
						Mostrar "";
					FinPara
					
					Mostrar "";
					Mostrar "TOTAL PUNTOS DE CADA EQUIPO";
					para c <-0 Hasta 7 Hacer
						Mostrar "puntos para el equipo ",c+1,": ",puntosEquipo[c];
					FinPara
					Mostrar "";
					Mostrar "PUNTOS POR CADA JORNADA";
					para c<-0 Hasta 7 Hacer
						Mostrar "PUNTOS EN LA JORNADA: ",c+1," = ",puntosJornada[c];
					FinPara
					Mostrar "";
					Mostrar "PUNTOS TOTALES = ",totalPuntos;
					si(puntosEquipo[0] > puntosEquipo[7]) Entonces
						Mostrar "el primero equipo tuvo mas puntos que el ultimo"
					sino
						si(puntosEquipo[0] < puntosEquipo[7]) Entonces
							Mostrar "el ultimo equipo tuvo mas puntos que el primero"
						SiNo
							Mostrar "EL PRIMER EQUIPO Y EL ULTIMO TUVIERON LOS MISMOS PUNTOS";
						FinSi
					FinSi
				SiNo
					Mostrar "NO HAS REGISTRADO AUN";
				FinSi
			3:
				si(!contDesicion) Entonces
					contadorCambios <- 0;
					para c <- 0 Hasta 6 Hacer
						Para j <- 0 Hasta 6-c Hacer
							si(equiposOrdenado[j] > equiposOrdenado[j+1]) Entonces
								aux <- equiposOrdenado[j];
								equiposOrdenado[j] <- equiposOrdenado[j+1]
								equiposOrdenado[j+1] <- aux;
								contadorCambios <- contadorCambios +1;
							FinSi
						FinPara
					FinPara
					Mostrar "equipos ORDENADOS"
					para c<- 0 Hasta 7 Hacer
						Mostrar Sin Saltar equiposOrdenado[c],"; "
					FinPara
				SiNo
					Mostrar "NO HAS REGISTRADO AUN";
				FinSi
			4:
				si(!contDesicion) Entonces
					Mostrar "ingrese cantidad de puntos y le indico si hay un equipo que tenga esos puntos"
					Leer cantPuntos
					contadorPuntos <- 0;
					para c<- 0 Hasta 7 Hacer
						si (puntosEquipo[c] = cantPuntos) Entonces
							Mostrar "el equipo ",c+1," tiene esa cantidad de puntos";
							contadorPuntos <- contadorPuntos +1
						FinSi
					FinPara
					si(contadorPuntos = 0) Entonces
						Mostrar "no hay equipos con esa cantidad total de puntos";
					FinSi
				SiNo
					Mostrar "NO HAS REGISTRADO AUN";
				FinSi
			5:
				si(!contDesicion) Entonces
					equipoMenorPuntos <- puntosEquipo[0];
					equipoMayorPuntos <- puntosEquipo[0];
					jornadaMayorPuntos <- puntosJornada[0];
					jornadaMenorPuntos <- puntosJornada[0];
					indiceMayorEquipo <- 0
					indiceMenorEquipo <- 0;
					indiceMayorJornada <- 0;
					indiceMenorJornada <- 0;
					Para c <- 0 Hasta 7 Hacer
						si puntosEquipo[c] > equipoMayorPuntos Entonces
							equipoMayorPuntos <- puntosEquipo[c];
							indiceMayorEquipo <- c;
						FinSi
						si puntosEquipo[c] < equipoMenorPuntos Entonces
							equipoMenorPuntos <- puntosEquipo[c];
							indiceMenorEquipo <- c;
						FinSi
						si puntosJornada[c] > jornadaMayorPuntos Entonces
							jornadaMayorPuntos <- puntosJornada[c];
							indiceMayorJornada <- c;
						FinSi
						si puntosJornada[c] < jornadaMenorPuntos Entonces
							jornadaMenorPuntos <- puntosJornada[c];
							indiceMenorJornada <- c;
						FinSi
					FinPara
					Mostrar "EQUIPO CON MAYOR CANTIDAD DE PUNTOS, FUE EL EQUIPO: ",indiceMayorEquipo+1;
					Mostrar "EQUIPO CON MENOR CANTIDAD DE PUNTOS, FUE EL EQUIPO: " indiceMenorEquipo+1;
					Mostrar "JORNADA CON MAYOR CANTIDAD DE PUNTOS, FUE LA JORNADA: " indiceMayorJornada+1;
					Mostrar "JORNADA CON MENOR CANTIDAD DE PUNTOS, FUE LA JORNADA: " indiceMenorJornada+1;
					Mostrar "PROMEDIO DE PUNTOS DEL TORNEO: ",(totalPuntos / 64);
				SiNo
					Mostrar "NO HAS REGISTRADO AUN";
				FinSi
			6:
				descicion <- 6;
				Mostrar "gracias por usar el sistema :)";
		FinSegun
	FinMientras
	// 48/100
FinAlgoritmo
