Algoritmo consumoEnergia
	Definir departamento, mes,descicion,consumoPorMes,consumoPorApartamento,consumoGeneral, cIntercambio,aux,c1,c2,num,contadorNum como numero
	Definir contadorDesic Como Logico
	Dimensionar matriz[8,8];
	Dimensionar consumoAprt[8];
	Dimensionar consumoMes[8];
	descicion <- 0;
	contadorDesic <- Verdadero;
	consumoGeneral <- 0;
	Mientras descicion <> 5 Hacer
		Repetir
			Mostrar "INGRESE QUE DESEA HACER"
			Mostrar "[1] REGISTRAR INFORMACION"
			Mostrar "[2] MOSTRAR REPORTES"
			Mostrar "[3] MOSTRAR CONSUMO DE APARTAMENTOS (ORDENADOS)"
			Mostrar "[4] BUSCAR CONSUMO"
			Mostrar "[5] SALIR"
			Leer descicion;
			si(descicion > 5 O descicion < 1) Entonces
				Mostrar "numero no valido"
			FinSi
		Hasta Que descicion > 0 Y descicion < 6
		Segun descicion Hacer
			1:
				si(contadorDesic) Entonces
					Para departamento <- 0 Hasta 7 Hacer
						consumoPorApartamento <- 0;
						Para mes<- 0 Hasta 7 Hacer
							Repetir
								Mostrar "INGRESE EL CONSUMO DEL DEPARTAMENTO ", departamento+1," Y MES: ",mes+1;
								Leer matriz[departamento,mes];
								si(matriz[departamento,mes] < 0) Entonces
									Mostrar "numero no valido";
								FinSi
							Hasta Que matriz[departamento,mes] >= 0
							consumoPorApartamento <- (consumoPorApartamento + matriz[departamento,mes]);
							consumoGeneral <- consumoGeneral + matriz[departamento,mes];
						FinPara
						consumoAprt[departamento] <- consumoPorApartamento;
					FinPara
					Mostrar "";
					Para  mes <- 0 Hasta 7 Hacer
						consumoPorMes <- 0;
						Para departamento <- 0 Hasta  7 Hacer
							consumoPorMes <- consumoPorMes + matriz[departamento,mes];
						FinPara
						consumoMes[mes] <- consumoPorMes;
					FinPara
					Mostrar "";
					cIntercambio <- 0;
					Para c1 <- 0 Hasta 6 Hacer
						Para c2 <- 0 Hasta 6 - c1 Hacer
							si(consumoAprt[c2] > consumoAprt[c2+1]) Entonces
								aux <- consumoAprt[c2]
								consumoAprt[c2] <- consumoAprt[c2+1]
								consumoAprt[c2+1] <- aux
								cIntercambio <- cIntercambio +1;
							FinSi
						FinPara
					FinPara
					contadorDesic <- Falso;
				SiNo
					Mostrar "ya se ha registrado, no se puede volver a registrar";
				FinSi
			2:
				si !contadorDesic Entonces
					Mostrar "DEPARTAMENTOS SON FILAS Y MESES SON LAS COLUMNAS:"
					Para departamento<-0 Hasta 7 Hacer
						Para mes<- 0 Hasta 7 Hacer
							Mostrar Sin Saltar matriz[departamento,mes];
						FinPara
						Mostrar "";
					FinPara
					
					Mostrar "CONSUMO POR APARTAMENTO"
					Para c<- 0 Hasta 7 Hacer
						Mostrar c+1,": ",consumoAprt[c]
					FinPara
					
					Mostrar "";
					Mostrar "CONSUMO POR MES"
					Para c<-0 Hasta 7 Hacer
						Mostrar c+1,": ",consumoMes[c];
					FinPara
					
					Mostrar "";
					Mostrar "CONSUMO GENERAL:";
					Mostrar consumoGeneral;
					Mostrar "";
					si(matriz[7,7] > consumoAprt[7]) Entonces
						Mostrar "el ultimo departamento tuvo mayor consumo"
					SiNo
						si(matriz[0,0] > consumoAprt[7]) Entonces
							Mostrar "el primer apartamento tuvo mayor consumo"
						SiNo
							Mostrar "ni el primer ni el ultimo apartamento tuvieron el mayor consumo"
						FinSi
					FinSi
				SiNo
					Mostrar "NO HAS REGISTRADO PRIMERO"
				FinSi
			3:
				si !contadorDesic Entonces
					Mostrar "CONSUMOS DE LOS APARTAMENTOS ORDENADOS DE MENOR A MAYOR:"
					para c<- 0 Hasta 7 Hacer
						Mostrar Sin Saltar consumoAprt[c],", ";
					FinPara
					Mostrar "";
					Mostrar "cambios que se realizaron en el ordenamiento: ",cIntercambio;
				SiNo
					Mostrar "tienes que registrar primero"
				FinSi
			4:
				si !contadorDesic Entonces
					Mostrar "Ingresa un numero para buscar algun consumo por departamento"
					leer num;
					contadorNum <- 0;
					para c <- 0 Hasta 7 Hacer
						si(consumoAprt[c] = num) Entonces
							Mostrar "El numero coincide en el apartamento ",c+1;
							contadorNum <- contadorNum + 1;
						FinSi
						si(contadorNum = 0) Entonces
							Mostrar "no hubo coincidencias con el numero ingresado"
						FinSi
					FinPara
				SiNo
					Mostrar "REGISTRA PRIMERO";
				FinSi
			De Otro Modo:
				descicion <- 5;
				Mostrar "GRACIAS POR USAR EL PROGRAMA :)"
		FinSegun
	FinMientras
FinAlgoritmo
