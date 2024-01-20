let valor;
let i = 1;
let outputElement = document.getElementById('output');

while (true) {

    valor = prompt("Informe um valor inteiro p/ prosseguir ou um negativo para parar:");

    valor = parseInt(valor);

    if (valor < 0) {
        outputElement.innerHTML += "-> Finalizando...<br>";
        break;
    }

    if (valor % 2 === 0) {
        outputElement.innerHTML += "-> É um número par.<br>";
    }
    else{
        outputElement.innerHTML += "-> É um número ímpar.<br>";
    }

    i++;
}