Algoritmo ciclos8
	Definir D, PH, SH, HT, SU como numero
	Mostrar "Ingrese el sueldo por hora"
	Leer PH
	SH <- 0
	Para D <- 1 Hasta 6 Hacer
		Mostrar "Ingrese las horas que trabajo el dia ", D
		Leer HT
		SH <- SH + HT;
	FinPara
	SU <- PH * SH;
	Mostrar "Las horas trabajadas en la semana: ", SH, " horas" 
	Mostrar "El sueldo semanal es: ", SU, " pesos"
FinAlgoritmo
