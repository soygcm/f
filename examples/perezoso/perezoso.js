const readline = require('readline');

// Este programa sirve para saber qué tan desordenada es una persona

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
    return new Promise((resolve) => {
        const rl = readline.createInterface({
            input: process.stdin,
            output: process.stdout
        });
        
        rl.question(pregunta.pregunta, (respuesta) => {
            rl.close();
            const respuestaNum = Number(respuesta);
            resolve(respuestaNum > pregunta.maximoAceptado);
        });
    });
}

// Programa principal
async function main() {
    const preguntasEsPerezoso = [];
    for (const pregunta of preguntas) {
        const esPerezoso = await averiguarSiEsPerezoso(pregunta);
        preguntasEsPerezoso.push(esPerezoso);
    }
    
    const totalPerezosas = preguntasEsPerezoso.filter((esPerezoso) => esPerezoso).length;
    
    if (totalPerezosas > 2) {
        console.log("Eres una persona perezosa");
    } else {
        console.log("No eres una persona perezosa");
    }
}

// Ejecutar el programa principal
main();