let i = 1;
let outputElement = document.getElementById('output');

function verificarNumero() {

    while(1){
        let entradaUsuario = prompt("Informe um número (ou 0 para finalizar):");
        let valor = parseInt(entradaUsuario);

        if (isNaN(valor)) {
            outputElement.innerHTML += "Por favor, informe um valor válido.<br>";
            return;
        }

        if (valor === 0) {
            outputElement.innerHTML += "Finalizando...<br>";
            break;
        } else if (valor % 2 === 0) {
            outputElement.innerHTML += "-> É um número par.<br>";
        } else {
            outputElement.innerHTML += "-> É um número ímpar.<br>";
        }

        i++;
    }
}

verificarNumero();