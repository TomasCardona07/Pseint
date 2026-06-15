Algoritmo ciclos9
	Definir I, P, T como numero
	P <- 10;
	T <- 0
	Para I <- 1 Hasta 20 hacer
		Mostrar "El monto que debe pagar el mes ", I, " es: ", P, " pesos"
		T <- T + P
		P <- P + P
	FinPara
	Mostrar "El total pagado despues de 20 meses es: ", T, " pesos"
FinAlgoritmo