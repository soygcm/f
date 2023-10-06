; Este programa sirve para saber qué tan desordenada es una persona

; Definir una pregunta
(defn pregunta [texto maximo-aceptado]
  {:pregunta texto :maximo-aceptado maximo-aceptado})

; Lista de preguntas
(def preguntas
  [(pregunta "¿Cuántas veces al día dejas para después algo que tenías que hacer?" 3)
   (pregunta "¿Cuántas veces a la semana dejas ropa tirada en el cuarto hasta el día siguiente?" 1)
   (pregunta "¿Cuántas veces a la semana no lavas los platos hasta el día siguiente?" 1)
   (pregunta "¿Cuántas veces a la semana no barres?" 4)]
 )

; Función para averiguar si es perezoso
(defn averiguar-si-es-perezoso [pregunta]
  (println (:pregunta pregunta)) ; Print the question
  (let [respuesta (read-line)]
    (> (Integer. respuesta) (:maximo-aceptado pregunta))))

; Programa principal
(defn main []
  (let [preguntas-es-perezoso (map averiguar-si-es-perezoso preguntas)
        total-perezosas (count (filter true? preguntas-es-perezoso))]
    (if (> total-perezosas 2)
      (println "Eres una persona perezosa")
      (println "No eres una persona perezosa")
      )
    ))

;Ejecutar el programa principal
(main)