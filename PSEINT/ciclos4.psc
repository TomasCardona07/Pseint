Algoritmo ciclos4
	Definir ahorro, suma, monto, C como numero
	suma <- 0;
	Para C <- 1 Hasta 12 Hacer
		Mostrar "Ingrese el monto del mes", C;
		Leer ahorro;
		suma <- suma + ahorro;
		si C < 12 Entonces
			Mostrar "ahorrado hasta el momento, mes ",C, ": ", suma, " pesos"; 
		SiNo
			Mostrar "has ahorrado ", suma,  " pesos a lo largo de todo el año";
		FinSi
	FinPara
FinAlgoritmo
