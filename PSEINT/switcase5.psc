Algoritmo switcase5
	Definir num1, num2, operacion como numero
	Mostrar "Ingrese el primer numero"
	Leer num1
	Mostrar "Ingrese el segundo numero"
	Leer num2
	Mostrar "Ingrese el numero de que operacion desea hacer"
	Mostrar "[1] = suma"
	Mostrar "[2] = resta"
	Mostrar "[3] = multiplicacion"
	Mostrar "[4] = division"
	Leer operacion
	Segun operacion Hacer
		1:
			resultado <- (num1 + num2)
			Mostrar "el resultado de la suma es: ",resultado
		2:
			resultado <- (num1 - num2)
			Mostrar "el resultado de la resta es: ",resultado
		3:
			resultado <- (num1 * num2)
			Mostrar "el resultado de la multiplicacion es: ",resultado
		4:
			si	num2 = 0 Entonces
				Mostrar "No se puede dividir por 0"
			SiNo
				resultado <- (num1 / num2)
				Mostrar "el resultado de la division es: ",resultado
			FinSi
	FinSegun
FinAlgoritmo
