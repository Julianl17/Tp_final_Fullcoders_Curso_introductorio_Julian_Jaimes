Algoritmo SafeEater_VerificadorDeAlimentacion
	Escribir "Referencia"
	Escribir "1 porcion = 80g de cada alimento"
	Escribir "Consumo normal de frutas es entre 2 y 3 porciones al dia"
	Escribir "Consumo normal de verduras es entre 2 y 4 porciones al dia"
	Escribir "La alimentacion de cada persona dependera de varios factores como la edad, el peso y si realiza actividad fisica."
	Escribir "-----------------------------------------------------------------------------------------------------------------"
    Definir calorias, frutas, verduras, proteinas, azucar Como Entero
    Definir resultado Como Cadena
	
    Escribir "¡Bienvenido al verificador de alimentacion saludable!"
    Escribir "Por favor, responde las siguientes preguntas:"
	
    Escribir "¿Cuantas porciones de frutas consumes al dia?"
    Leer frutas
	
    Escribir "¿Cuantas porciones de verduras consumes al dia?"
    Leer verduras
	
    Escribir "¿Cuantas porciones de proteínas consumes al dia (Carnes Rojas,Pollo,Huevos,Pescados?"
    Leer proteinas
	
	Escribir "¿Consumes suficiente agua al dia? (1 = si, 0 = no)"
    Leer agua
	
	Escribir "¿Consumes comida rapida consumes al dia (1 = si, 0 = no)?"
	Leer comidaRapida
	
    Escribir "¿Consumes alimentos con alto contenido de azucar? (1 = si, 0 = no)"
    Leer azucar
	
	
    Si (frutas <= 2) Y (verduras <= 3) Y (proteinas <= 2) Y (agua=1) Y (comidaRapida = 0) Y (azucar = 0)  Entonces
        resultado <- "Estas comiendo de manera saludable. ¡Sigue asi!"
    Sino
		si (frutas < 2) O (verduras < 2) O (proteinas < 2) O (agua=0) Y (comidaRapida >= 1) Y (azucar = 1) Entonces
			
			resultado <- "Parece que tu alimentacion podria mejorar. Consulta a un nutricionista para obtener consejos."
		SiNo
			si (frutas >= 4) Y (verduras >= 4) Y (proteinas >= 3) Y (agua=1) Y (comidaRapida = 1) Y (azucar = 1)  Entonces
				resultado <- "Exceso de alimentacion. Consulta a un nutricionista para obtener consejos"
			FinSi
			
		FinSi
		
    FinSi
	
    Escribir resultado
FinAlgoritmo