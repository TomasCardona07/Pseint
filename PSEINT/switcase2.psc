Algoritmo switcase2
	Definir numt como numero
    Escribir "ingrese su numero de tarjetas"
    Leer numt
    Si numt > 0 Entonces
        Si numt = 1 Entonces
            Escribir "cual es el tipo de tarjeta"
            Leer tart
			
            Si tart <= 0 Entonces 
                Escribir "numero no valido"
            SiNo
                Escribir "ingrese su cupo"
                Leer cup
				
                Segun tart Hacer
                    1:
                        desc = cup * 1.25
                        Escribir "su cupo total es:", desc
						
                    2:
                        desc = cup * 1.35
                        Escribir "su cupo total es:", desc
						
                    3:
                        desc = cup * 1.40
                        Escribir "su cupo total es:", desc
						
                    De Otro Modo:
                        desc = cup * 1.50
                        Escribir "su cupo total es:", desc
                Fin Segun
            Fin Si
        SiNo
			Escribir"ingresa el cupo"
			leer cup
			Escribir"¿Desea elegir la categoria de la tarjeta? s o n"
			leer rp
			Si rp="s" Entonces
				Escribir "elija el numero de categoria a la cual desea agregarle el aumento"
				Leer tart
				si tart > 0 Entonces
					Segun tart Hacer
						1:
							desc = cup * 1.25
							Escribir "su cupo total es:", desc
							
						2:
							desc = cup * 1.35
							Escribir "su cupo total es:", desc
							
						3:
							desc = cup * 1.40
							Escribir "su cupo total es:", desc
							
						De Otro Modo:
							desc = cup * 1.50
							Escribir "su cupo total es:", desc
					Fin Segun
				SiNo
					Escribir "numero no valido"
				FinSi
			SiNo
				Escribir "el sistema asignara el aumento a la tarjeta con mayor categoria"
				Si tart == 1 Entonces
					desc = cup * 1.25
					Escribir "su cupo total es:", desc
				SiNo
					si tart == 2 Entonces
						desc = cup * 1.35
						Escribir "su cupo total es:", desc
					SiNo
						si tart == 3 Entonces
							desc = cup * 1.40
							Escribir "su cupo total es:", desc
						sino 
							desc = cup * 1.50
							Escribir "su cupo total es:", desc
						FinSi
					FinSi
				FinSi
			FinSi
        FinSi
    SiNo
        Escribir "numero no valido"
    FinSi
FinAlgoritmo
