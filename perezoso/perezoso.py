# Este programa sirve para saber qué tan desordenada es una persona

# Clase para definir una pregunta
class Pregunta:
    def __init__(self, pregunta, maximo_aceptado):
        self.pregunta = pregunta
        self.maximo_aceptado = maximo_aceptado

# Lista de preguntas
preguntas = [
    Pregunta("¿Cuántas veces al día dejas para después algo que tenías que hacer?", 3),
    Pregunta("¿Cuántas veces a la semana dejas ropa tirada en el cuarto hasta el día siguiente?", 1),
    Pregunta("¿Cuántas veces a la semana no lavas los platos hasta el día siguiente?", 1),
    Pregunta("¿Cuántas veces a la semana no barres?", 4)
]

# Función para averiguar si es perezoso
def averiguar_si_es_perezoso(pregunta):
    respuesta = int(input(pregunta.pregunta))
    return respuesta > pregunta.maximo_aceptado

# Programa principal
def main():
    preguntas_es_perezoso = list(map(averiguar_si_es_perezoso, preguntas))
    total_perezosas = sum(preguntas_es_perezoso)

    if total_perezosas > 2:
        print("Eres una persona perezosa")
    else:
        print("No eres una persona perezosa")

# Ejecutar el programa principal
if __name__ == "__main__":
    main()