Algoritmo controlProduccion
	Definir numMaquinas,numDias,descicion,contMaquinas,contDias,producGeneral,aux,busqueda,contBusqueda como numero
	Definir contDescicion Como Logico
	Repetir
		Mostrar "ingrese le numero de maquinas 3-20"
		Leer numMaquinas;
		si numMaquinas < 3 O numMaquinas > 20 Entonces
			Mostrar "numero no valido"
		FinSi
	Hasta Que numMaquinas >= 3 Y numMaquinas <= 20
	Repetir
		Mostrar "ingrese le numero de dias 3-20"
		Leer numDias;
		si numDias < 3 O numDias > 20 Entonces
			Mostrar "numero no valido"
		FinSi
	Hasta Que numDias >= 3 Y numDias <= 20
	
	Dimensionar matriz[numDias,numMaquinas];
	Dimensionar totalMaquina[numMaquinas];
	Dimensionar totalDias[numDias];
	Dimensionar codigo[numMaquinas]
	Dimensionar indiceM[numMaquinas]
	Dimensionar indiceDias[numDias];
	
	contDescicion <- Falso
	descicion <- 0;
	
	Mientras descicion <> 7 Hacer
		Repetir
			Mostrar "[1] REGISTRAR PRODUCCION";
			Mostrar "[2] MOSTRAR REPORTE";
			Mostrar "[3] ORDENAR MAQUINAS";
			Mostrar "[4] BUSACAR MAQUINA";
			Mostrar "[5] ESTADISTICAS";
			Mostrar "[6] ANALISIS DE PRODUCCION";
			Mostrar "[7] SALIR";
			Leer descicion;
			si (descicion < 1 O descicion > 7) Entonces
				Mostrar "numero no valido";
			FinSi
		Hasta Que descicion >= 1 Y descicion <= 7
		Segun descicion Hacer
			1:
				contMas1Unidad <- 0;
				producGeneral <- 0;
				Para maquinas <- 0 Hasta numMaquinas-1 Hacer
					contMaquinas <- 0;
					Para dias <- 0 Hasta numDias-1 Hacer
						Repetir
							Mostrar "ingrese producto de la maquina ",maquinas+1," y del dia ",dias+1;
							Leer matriz[maquinas,dias];
							si(matriz[maquinas,dias] < 0 ) Entonces
								Mostrar "numero no valido";
							FinSi
						Hasta Que matriz[maquinas,dias] >= 0
						contMaquinas<- (contMaquinas + matriz[maquinas,dias]);
						producGeneral <- producGeneral + matriz[maquinas,dias];
					FinPara
					Mostrar "ingrese el codigo de la maquina ",c+1;
					Leer codigo[c];
					indiceM[c] <- c+1;
					totalMaquina[maquinas] <- contMaquinas;
					si totalMaquina[c] > 0 Entonces
						contMas1Unidad <- contMas1Unidad +1;
					FinSi
				FinPara
				contDescicion <- Verdadero;
			2:
				si contDescicion Entonces
					Mostrar "MATRIZ COMPLETA"
					para c <- 0 Hasta numMaquinas-1 Hacer
						para j <- 0 Hasta numMaquinas -1 Hacer
							Mostrar Sin Saltar matriz[c,j],", ";
						FinPara
						Mostrar "";
					FinPara
				FinSi
				para c<- 0 Hasta numMaquinas-1 Hacer
					Mostrar "maquina ",c+1," produccion total: ",totalMaquina[c];
				FinPara
				Mostrar "";
				para c<- 0 Hasta numDias-1 Hacer
					Mostrar "dia ",c+1," produccion total: ",totalDias[c];
				FinPara
				Mostrar "produccion general: ",producGeneral;
				si totalMaquina[numMaquinas-1] > totalMaquina[0] Entonces
					Mostrar "la ultima maquina produjo mas que la primera";
				SiNo
					si totalMaquina[numMaquinas-1] < totalMaquina[0] entonces
						Mostrar "la primera maquina produjo mas que la ultima";
					SiNo
						Mostrar "la primera maquina produjo lo mismo que la ultima";
					FinSi
				FinSi
			3:
				intercambios <- 0;
				para c <- 0 Hasta numMaquinas -2 Hacer
					para j<- 0 Hasta (numMaquinas -2) -c Hacer
						si totalMaquina[j] < totalMaquina[j+1] Entonces
							aux <- totalMaquina[j];
							totalMaquina[j] <- totalMaquina[j+1];
							totalMaquina[j+1] <- aux;
							
							//indice
							aux <- indiceM[j];
							indiceM[j] <- indiceM[j+1];
							indiceM[j+1] <- aux;
							
							//codigo
							aux <- codigo[j];
							codigo[j] <- codigo[j+1];
							codigo[j+1] <- aux;
							intercambios <- intercambios +1;
						FinSi
					FinPara
				FinPara
				Mostrar "";
				para c <- 0 Hasta numMaquinas-1 Hacer
					Mostrar c+1, " total vendido: ",totalMaquina[c], "codigo: ",codigo[c];
				FinPara
				Mostrar "cambios realizados: ",intercambios; 
				para c <- 0 Hasta numDias -2 Hacer
					para j<- 0 Hasta (numDias -2) - c Hacer
						si totalDias[j] < totalDias[j+1] Entonces
							aux <- indiceDias[j];
							indiceDias[j] <- indiceDias[j+1];
							indiceDias[j+1] <- aux;
						FinSi
					FinPara
				FinPara
			4:
				Mostrar "ingrese el codigo de una maquina";
				Leer busqueda;
				contBusqueda <- 0;
				promedioProduc <- producGeneral / numMaquinas
				contMayorProm <- 0;
				para c<- 0 Hasta  numMaquinas -1 Hacer
					si busqueda = codigo[c] Entonces
						Mostrar "MAQUINA ENCONTRADA"
						Mostrar "codigo: ",codigo[c];
						Mostrar "produccion total: ",totalMaquina[c];
						promedioMaquina <- totalMaquina[c] / numDias;
						si totalMaquina[c] > promedioProduc Entonces
							contMayorProm <- contMayorProm + 1;
						FinSi
						Mostrar "promedio por dia: ",promedioMaquina;
						contBusqueda <- 1;
					FinSi
				FinPara
				porcUnidad <- (contMas1Unidad / numMaquinas) * 100;
				si contBusqueda = 0 Entonces
					Mostrar "maquina no encontrada";
				FinSi
			5:
				Mostrar "maquina con mayor produccion: ",codigo[0];
				Mostrar "maquina con menor produccion: ",codigo[numMaquinas-1];
				Mostrar "dia con menor produccion: ", indiceDias[numDias-1] 
				Mostrar "dia con mayor produccion: ", indiceDias[0]; 
				Mostrar "cantidad de maquinas cuya produccion supera al promedio: ",contMayorProm;
				Mostrar "porcentaje de maquinas que produjeron mas de una unidad: ",porcUnidad,"%";
				Mostrar "promedio general: ",promedioProduc;
			6:
				para c <- 0 Hasta numMaquinas -1 Hacer
					si totalMaquina[c] < 5 Entonces
						Mostrar "la maquina ",codigo[c]," tuvo bajo rendimiento";
					SiNo
						Mostrar "la maquina ",codigo[c]," tuvo APTA";
					FinSi
				FinPara
			7:
				Mostrar "gracias por usar el sistema "
		FinSegun
	FinMientras
	
	//49/100 perdido
FinAlgoritmo