// Este programa sirve para saber que tan desordenado es una persona

// Definir una pregunta
function Pregunta(pregunta, maximoAceptado) {
    this.pregunta = pregunta;
    this.maximoAceptado = maximoAceptado;
  }
  
  // Lista de preguntas
  const preguntas = [
    new Pregunta("¿Cuántas veces al día dejas para después algo que tenías que hacer?", 3),
    new Pregunta("¿Cuántas veces a la semana dejas ropa tirada en el cuarto hasta el día siguiente?", 1),
    new Pregunta("¿Cuántas veces a la semana no lavas los platos hasta el día siguiente?", 1),
    new Pregunta("¿Cuántas veces a la semana no barres?", 4)
  ];
  
  // Función para averiguar si es perezoso
  function averiguarSiEsPerezoso(pregunta) {
    const respuesta = Number(prompt(pregunta.pregunta));
    return respuesta > pregunta.maximoAceptado;
  }
  
  // Programa principal
  function main() {
    const preguntasEsPerezoso = preguntas.map(pregunta => averiguarSiEsPerezoso(pregunta));
    const totalPerezosas = preguntasEsPerezoso.filter(esPerezoso => esPerezoso).length;
  
    if (totalPerezosas > 2) {
      console.log("Eres una persona perezosa");
    } else {
      console.log("No eres una persona perezosa");
    }
  }
  
  // Ejecutar el programa principal
  main();