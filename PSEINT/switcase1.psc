Algoritmo switcase1
	Definir peso, zona como numero
	Mostrar "Ingrese el peso en kilos"
	Leer peso
	si ((peso <= 5) Y (peso > 0)) Entonces
		Mostrar "Elija a que zona desea enviar el paquete:"
		Mostrar "[1] America del norte"
		Mostrar "[2] America central"
		Mostrar "[3] America del sur"
		Mostrar "[4] Europa"
		Mostrar "[5] Asia"
		Leer zona
		gramos <- (peso * 1000)
		Segun zona Hacer
			1:
				costo <- (gramos * 11)
				Mostrar "El costo del paquete es de: ", costo, " pesos"
			2:
				costo <- (gramos * 10)
				Mostrar "El costo del paquete es de: ", costo, " pesos"
			3:
				costo <- (gramos * 12)
				Mostrar "El costo del paquete es de: ", costo, " pesos"
			4:
				costo <- (gramos * 24)
				Mostrar "El costo del paquete es de: ", costo, " pesos"
			5:
				costo <- (gramos * 27)
				Mostrar "El costo del paquete es de: ", costo, " pesos"
			De Otro Modo:
				Mostrar "Zona incorrecta"
		FinSegun
	sino
		Mostrar "Entrega rechazada, peso no válido"
	FinSi
FinAlgoritmo
