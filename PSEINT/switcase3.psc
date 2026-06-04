Algoritmo switcase3
	Definir nota como numero
	Mostrar "Ingrese la nota de 1-10"
	Leer nota
	si ((nota < 11) Y (nota > 0)) Entonces
		Segun nota Hacer
			10:
				Mostrar "Su calificacion es A"
			9:
				Mostrar "Su calificacion es B"
			8:
				Mostrar "Su calificacion es C"
			7:
				Mostrar "Su calificacion es D"
			6:
				Mostrar "Su calificacion es E"
			De Otro Modo:
				Mostrar "Su calificacion es F"
			FinSegun
	SiNo
		Mostrar "Numero ingresado no valido"
	FinSi
FinAlgoritmo
