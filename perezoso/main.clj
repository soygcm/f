(defn pregunta [texto maximo-aceptado]
  {:pregunta texto :maximo-aceptado maximo-aceptado})

(def preguntas
  [(pregunta "¿Cuántas veces al día dejas para después algo que tenías que hacer?" 3)
   (pregunta "¿Cuántas veces a la semana dejas ropa tirada en el cuarto hasta el día siguiente?" 1)
   (pregunta "¿Cuántas veces a la semana no lavas los platos hasta el día siguiente?" 1)
   (pregunta "¿Cuántas veces a la semana no barres?" 4)])

(defn averiguar-si-es-perezoso [pregunta]
  (let [respuesta (read-line)]
    (> (Integer. respuesta) (:maximo-aceptado pregunta))))

(defn main []
  (let [preguntas-es-perezoso (map averiguar-si-es-perezoso preguntas)
        total-perezosas (count (filter true? preguntas-es-perezoso))]
    (if (> total-perezosas 2)
      (println "Eres una persona perezosa")
      (println "No eres una persona perezosa"))))

(main)