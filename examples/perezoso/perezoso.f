> Este programa sirve para saber que tan desordenado es una persona

> Así es una pregunta
Pregunta =
    pregunta = Text,
    maximo aceptado para saber si / es perezoso = Number,

> Las preguntas que vamos a hacer
preguntas = <Pregunta> List
    _ "¿Cuántas veces al día dejas para después algo que tenías que hacer?", 3,
    _ "¿Cuántas veces a la semana dejas ropa tirada en el cuarto hasta el día siguiente?", 1,
    _ "¿Cuántas veces a la semana no lavas los platos hasta el día siguiente?", 1,
    _ "¿Cuántas veces a la semana no barres?", 4,

> Algunas funciones que necesitamos
usando Ask y Pregunta <pregunta, es perezoso> /   
averiguar si es perezoso =
    respuesta = ask pregunta _ as number
    return respuesta > es perezoso

> Programa principal
f = 
    lista de / respuestas es perezoso = 
        filter each pregunta in preguntas:
            averiguar si es perezoso 

    / total de cuantas / respuestas es perezoso = sum respuestas es perezoso

    if total de cuantas > 2:
        show "Eres una persona perezosa"
    else:
        show "No eres una persona perezosa"