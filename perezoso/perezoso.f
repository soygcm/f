> Este programa sirve para saber que tan desordenado es una persona

> Así es una pregunta
Pregunta ->
    pregunta -> Text,
    maximo aceptado para saber si / es perezoso -> Number,


> Las preguntas que vamos a hacer
preguntas = Pregunta List ->
    pregunta = "¿Cuántas veces al día dejas para después algo que tenías que hacer?",
    es perezoso = 3,
    pregunta = "¿Cuántas veces a la semana dejas ropa tirada en el cuarto hasta el día siguiente?"
    es perezoso = 1,
    pregunta =  "¿Cuántas veces a la semana no lavas los platos hasta el día siguiente?",
    es perezoso = 1,
    pregunta =  "¿Cuántas veces a la semana no barres?",
    es perezoso = 4,

> Algunas funciones que necesitamos
usando Ask y Pregunta <pregunta, es perezoso> /   
averiguar si es perezoso =
    respuesta = ask pregunta
    respuesta = respuesta as number
    respuesta > es perezoso

> Programa principal
f = 
    lista de / preguntas es perezoso = 
        filter map each pregunta in preguntas:
            usando <pregunta> / averiguar si es perezoso

    / total de cuantas / preguntas es perezoso = 
        sum each pregunta in preguntas es perezoso:
            pregunta equals to true

    if total de cuantas > 2:
        show "Eres una persona perezosa"
    else:
        show "No eres una persona perezosa"