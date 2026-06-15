Algoritmo ciclos10
	Definir numEmpleados, C, horas, salarioHora,totalPagado, sueldoEmpleado como numero
	Mostrar "Ingrese el numero de trabajadores"
	Leer numEmpleados
	totalPagado <- 0;
	Para C <- 1 Hasta numEmpleados Hacer
		Mostrar "Ingrese las horas trabajadas del empleado " , C
		Leer horas
		Mostrar "Ingrese el salario por hora del empleado ", C
		Leer salarioHora
		sueldoEmpleado <- salarioHora * horas;
		totalPagado <- totalPagado + sueldoEmpleado;
		Mostrar "El salario del trabajador ", C,  " es de: ", (sueldoEmpleado), " pesos";
	FinPara
	Mostrar "El total pagado a los trabajadores es: ", totalPagado, " pesos"
FinAlgoritmo
