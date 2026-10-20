Algoritmo sin_titulo
	Definir numBuscar, numIngresado, intentos como numero
	Definir encontrado Como Logico
	encontrado <- Falso;
	numBuscar <- Aleatorio(1,100)
	Mientras (!encontrado) Hacer
		Repetir
			Mostrar "Ingrese un numero entre 1-100";
			Leer numIngresado;
			si(numIngresado < 1 O numIngresado > 100) Entonces
				Mostrar "Numero no valido";
			FinSi
		Hasta Que (numIngresado >= 1 Y numIngresado <= 100)
		
		si(numIngresado > numBuscar) Entonces
			Mostrar "El numero a buscar es menor";
			intentos <- intentos + 1;
		SiNo
			si(numIngresado < numBuscar) Entonces
				Mostrar "EL numero a buscar es mayor"
				intentos <- intentos +1;
			SiNo
				Mostrar "Numero encontrado :D"
				Mostrar "Tuviste ", intentos," intentos";
				encontrado <- Verdadero;
			FinSi
		FinSi
	FinMientras
FinAlgoritmo
