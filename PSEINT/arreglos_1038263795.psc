Algoritmo arreglos_1038263795
	Definir numTrabajadores,contador,edad,salario, horasPorDia, sumaHorasTrabajador, elegir, aux como numero
	Definir genero Como Caracter
	Definir continuar como logico
	Repetir
		Mostrar "Ingrese el numero de trabajadores"
		Leer numTrabajadores
		si(numTrabajadores < 1) Entonces
			Mostrar "Numero ingresado no valido"
		FinSi
	Hasta Que numTrabajadores >= 1
	
	Dimensionar vectorDocTra[numTrabajadores]
	Dimensionar vectorNomTra[numTrabajadores]
	Dimensionar vectorApeTra[numTrabajadores]
	Dimensionar vectorGenTra[numTrabajadores]
	Dimensionar vectorEdaTra[numTrabajadores]
	Dimensionar vectorSalMenTra[numTrabajadores]
	
	Dimensionar matrizHorTra[5,5]
	
	Dimensionar vectorHorMesTran[numTrabajadores]
	
	continuar <- Verdadero
	contador <- 0
	Mientras (continuar == Verdadero Y contador < numTrabajadores) Hacer
		Mostrar "Trabajador: ", contador + 1
		Mostrar "Ingrese el documento de identidad del trabajador"
		leer vectorDocTra[contador]
		Mostrar "Ingrese el nombre del trabajador"
		Leer vectorNomTra[contador]
		Mostrar "Ingrese el apellido del trabajador"
		Leer vectorApeTra[contador]
		
		Repetir
			Mostrar "Ingrese el genero del trabajador [M] masculino, [F] femenino, [B] binario (letra en mayuscula)"
			Leer genero
			si(genero <> "M" y genero <> "F" y genero <> "B") Entonces
				Mostrar "Genero no valido"
			FinSi
		Hasta Que genero == "M" o genero == "F" o genero == "B"
		vectorGenTra[contador] <- genero
		
		Repetir
			Mostrar "Ingrese la edad del trabajador"
			Leer edad
			si(edad < 18) Entonces
				Mostrar "Edad ingresada no valida"
			FinSi
		Hasta Que edad >= 18
		vectorEdaTra[contador] <- edad
		
		Repetir
			Mostrar "Ingrese el salario del trabajador, no puede ser menor que 1.750.905"
			Leer salario
			si(salario < 1750905) Entonces
				Mostrar "Salario ingresado no valido"
			FinSi
		Hasta Que salario >= 1750905
		vectorSalMenTra[contador] <- salario
		
		sumaHorasTrabajador <- 0
		Para c <- 0 Hasta 4 Hacer
			para f <- 0 Hasta 4 Hacer
				Repetir
					Mostrar "Ingrese las horas laboradas del dia " f+1, ", de la semana: ", c+1, " (Valores entre 0-12)"
					Leer horasPorDia
					si(horasPorDia > 12 O horasPorDia < 0) Entonces
						Mostrar "Numero de horas incorrecto"
					FinSi
				Hasta Que horasPorDia <= 12 Y horasPorDia >= 0
				sumaHorasTrabajador <- sumaHorasTrabajador + horasPorDia
				matrizHorTra[c,f] <- horasPorDia
			FinPara
		FinPara
		
		vectorHorMesTran[contador] <- sumaHorasTrabajador
		
		si(numTrabajadores > 1) Entonces
			Repetir
				Mostrar "¿Desea hacer mas registros? [1] SI    [2] NO"
				Leer elegir
				si(elegir <> 1 Y elegir <> 2) Entonces
					Mostrar "Numero incorrecto"
				FinSi
			Hasta Que elegir == 1 O elegir == 2
			Limpiar Pantalla
			si(elegir == 2) Entonces
				continuar <- Falso
				Mostrar "Has elegido terminar los registros"
			SiNo
				Mostrar "has elegido continuar los registros"
			FinSi
		FinSi
		contador <- contador + 1
	FinMientras
FinAlgoritmo

