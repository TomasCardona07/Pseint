Algoritmo ciclos1
	Definir codigo, nombre, apellido, genero como texto
	Definir edad, salario,empleado, departamento,mayorEdad,menorEdad  como numero
	//Asignación de valores a las variables
	mayorEdad <- -99999999;
	menorEdad <- 99999999;
	promSalarioCont <- 0; 
	promSalarioSis <- 0;
	promSalarioNom <- 0;
	promSalarioProd <- 0;
	promSalarioComp <- 0;
	promEdadCont <- 0;
	promEdadSis <- 0;
	promEdadNom <-0;
	promEdadProd <- 0;
	promEdadComp <- 0;
	promSalarioMuj <- 0;
	promSalarioHomb <- 0;
	contadorCont <- 0;
	contadorSis <- 0;
	contadorNom <- 0;
	contadorProd<- 0;
	contadorComp <- 0;
	mayorSalarioSis <- -9999999999999;
	menorSalarioSis <- 99999999999999;
	contadorHomb <- 0;
	contadorMuj <- 0;
	//Proceso;
	Para empleado <- 1 Hasta 21 Con Paso 1 Hacer
		Mostrar "Empleado ", empleado;
		Mostrar "ingrese su nombre";
		Leer nombre;
		Mostrar "Ingrese su apellido";
		Leer apellido;
		Mostrar "Ingrese su codigo"
		Leer codigo;
		Mostrar "Ingrese su edad";
		Leer edad;
		Mientras edad < 18 Hacer
			Mostrar "Edad incorrecta, no puede ser menor a 18"
			Mostrar "Ingrese su edad nuevamente";
			Leer edad;
		FinMientras
		si (edad > mayorEdad) Entonces
			mayorEdad <- edad;
		FinSi
		si (edad < menorEdad) Entonces
			menorEdad <- edad;
		FinSi
		Mostrar "Ingrese su genero f = femenino O, m = masculino";
		Leer genero;
		Mientras (genero <> "F" Y genero <> "f" Y genero <> "m" Y genero <> "M") Hacer
			Mostrar "Genero incorrecto, ingrese nuevamente";
			Leer genero;
		FinMientras
		Mostrar "Ingrese su salario";
		Leer salario;
		Mientras (salario < 2500000) Hacer
			Mostrar "El salario por prestacion no puede ser menor a 2.500.000";
			Mostrar "Ingrese el salario nuevamente";
			Leer salario;
		FinMientras
		si ((genero = "m") O (genero = "M")) Entonces
			contadorHomb <- (contadorHomb + 1)
			promSalarioHomb <- (promSalarioHomb + salario);
		SiNo
			contadorMuj <- (contadorMuj +1)
			promSalarioMuj <- (promSalarioMuj + salario);
		FinSi
		Mostrar "Ingrese su departamento laboral:";
		Mostrar "[1] = Contabilidad";
		Mostrar "[2] = Sistemas";
		Mostrar "[3] = Nomina";
		Mostrar "[4] = Produccion";
		Mostrar "[5] = Compras";
		Leer departamento;
		Segun departamento Hacer
			1:
				contadorCont <- (contadorCont + 1)
				promSalarioCont <- (promSalarioCont + salario);
				promEdadCont <- (promEdadCont + edad);
			2:
				si (salario > mayorSalarioSis) Entonces
					mayorSalarioSis <- salario;
					nombreMayorSalarioSis <- nombre;
					apellidoMayorSalarioSis <- apellido;
					codigoMayorSalarioSis <- codigo;
					edadMayorSalarioSis <- edad;
					generoMayorSalarioSis <- genero;
					salarioMayorSalarioSis <- salario;
				FinSi
				si (salario < menorSalarioSis) Entonces
					menorSalarioSis <- salario;
					nombreMenorSalarioSis <- nombre;
					apellidoMenorSalarioSis <- apellido;
					codigoMenorSalarioSis <- codigo;
					edadMenorSalarioSis <- edad;
					generoMenorSalarioSis <- genero;
					salarioMenorSalarioSis <- salario;
				FinSi
				contadorSis <- (contadorSis + 1)
				promSalarioSis <- (promSalarioSis + salario);
				promEdadSis <- (promEdadSis + edad);
			3:
				contadorNom <- (contadorNom + 1)
				promSalarioNom <- (promSalarioNom + salario);
				promEdadNom <- (promEdadNom + edad);
			4:
				contadorProd <- (contadorProd + 1)
				promSalarioProd <- (promSalarioProd + salario);
				promEdadProd <- (promEdadProd + edad);
			5:
				contadorComp <- (contadorComp + 1)
				promSalarioComp <- (promSalarioComp + salario);
				promEdadComp<- (promEdadComp + edad);
			De Otro Modo:
				Mostrar "Departamento no valido"
		FinSegun
	Fin Para
	//Asignacion a los promedios de edad:
	promEdadCont <- (promEdadCont / contadorCont);
	promEdadSis <- (promEdadSis / contadorSis);
	promEdadNom <- (promEdadNom / contadorNom);
	promEdadProd <- (promEdadProd / contadorProd);
	promEdadComp <- (promEdadComp / contadorComp);
	
	//Asiganción a promedio de salarios:
	promSalarioCont <- (promSalarioCont / contadorCont);
	promSalarioSis <- (promSalarioSis / contadorSis);
	promSalarioNom <- (promSalarioNom / contadorNom);
	promSalarioProd <- (promSalarioProd / contadorProd);
	promSalarioComp <- (promSalarioComp / contadorComp);
	
	//Asigancion a promedio de salarios mujeres y hombres:
	promSalarioHomb <- (promSalarioHomb / contadorHomb);
	promSalarioMuj <- (promSalarioMuj / contadorMuj);
	
	//Mayor y menor edad de la empresa:
	Mostrar "La mayor edad de la empresa es: ", mayorEdad;
	Mostrar "La menor edad de la empresa es: ", menorEdad;
	
	//Promedio de edad por departamento:
	Mostrar "El promedio de edad del departamento de Contabilidad es: ", promEdadCont
	Mostrar "El promedio de edad del departamento de Sistemas es: ", promEdadSis
	Mostrar "El promedio de edad del departamento de Nómina es: ", promEdadNom
	Mostrar "El promedio de edad del departamento de Producción es: ", promEdadProd
	Mostrar "El promedio de edad del departamento de Compras es: ", promEdadComp
	
	//Promedio de salario mujeres y hombres:
	Mostrar "El salario promedio de las mujeres es: ", promSalarioMuj;
	Mostrar "El salario promedio de los Hombres es: ", promSalarioHomb;
	
	//Salario promedio por departamento
	Mostrar "El salario promedio del departamento de contabilidad es: ", promSalarioCont;
	Mostrar "El salario promedio del departamento de Sistemas es: ", promSalarioSis;
	Mostrar "El salario promedio del departamento de Nomina es: ", promSalarioNom;
	Mostrar "El salario promedio del departamento de Producción es: ", promSalarioProd;
	Mostrar "El salario promedio del departamento de Compras es: ", promSalarioComp;
	
	//Datos del mayor salario de sistemas
	Mostrar "Nombre del mayor salario de sistemas: ", nombreMayorSalarioSis;
	Mostrar "Apellido del mayor salario de sistemas: ", apellidoMayorSalarioSis;
	Mostrar "Codigo del Mayor salario de sistemas: ", codigoMayorSalarioSis;
	Mostrar "Edad del mayor salario de sistemas: ", edadMayorSalarioSis;
	Mostrar "genero del mayor salario de sistemas: ", generoMayorSalarioSis;
	Mostrar "Salario del mayor salario de sistemas: ,", salarioMayorSalarioSis;
	
	//Datos del menor salario de sistemas
	Mostrar "Nombre del menor salario de sistemas: ", nombreMenorSalarioSis;
	Mostrar "Apellido del menor salario de sistemas: ", apellidoMenorSalarioSis;
	Mostrar "Codigo del menor salario de sistemas: ", codigoMenorSalarioSis;
	Mostrar "Edad del menor salario de sistemas: ", edadMenorSalarioSis;
	Mostrar "genero del menor salario de sistemas: ", generoMenorSalarioSis;
	Mostrar "Salario del menor salario de sistemas: ", salarioMenorSalarioSis;
FinAlgoritmo
