Algoritmo ciclos5
	Definir C, cantidad, cantN, cantP, numCant como numero
	Repetir
		Mostrar "Ingrese el numero de cantidades" 
		Leer numCant;
		si numCant <= 0 Entonces
			Mostrar "Numero no valido"
		FinSi
	Hasta Que numCant > 0
	cantN <- 0;
	cantP <- 0;
	Para C <- 1 Hasta numCant Hacer
		Mostrar "Ingrese el valor de cantidad ", C;
		Leer cantidad;
		si cantidad > 0 Entonces
			cantP <- cantP + 1;
		SiNo
			cantN <- cantN + 1;
		FinSi
	FinPara
	Mostrar "Cantidad de valores mayores a 0: ", cantP
	Mostrar "Cantidad de valores menores o iguales a 0: ", cantN
FinAlgoritmo
