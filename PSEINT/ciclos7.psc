Algoritmo ciclos7
	Definir elemento, elemento1, elemento2, sumaE, C como numero
	Mostrar "Ingrese el numero de elementos que desea imprimir"
	Leer elemento
	elemento1 <- 0
	elemento2 <- 1
	Para C <- 0 Hasta elemento Con Paso 1 Hacer
		si C = 0 Entonces
			Mostrar elemento1
			Mostrar elemento2
		FinSi
		sumaE <- elemento1 + elemento2
		elemento1 <- elemento2
		elemento2 <- sumaE
		Mostrar elemento2
	FinPara
FinAlgoritmo
