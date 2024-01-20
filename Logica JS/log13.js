let outputElement = document.getElementById('output');

function compAdivinha() {
    let tentativas = 0;
    let limiteInferior = 1;
    let limiteSuperior = 100;
    let resposta;

    alert("O computador pode adivinhar um número! 🤖");
    alert("Pense em um número entre 1 e 100.");

    do {
        let tentativa = Math.floor((limiteInferior + limiteSuperior) / 2);
        resposta = parseInt(prompt("O número que você está pensando é " + tentativa + "?\nDigite 1 para sim ou 2 para não"));

        if (resposta === 1) {
            outputElement.innerHTML += "O computador acertou em " + tentativas + " tentativas.\nO número é " + tentativa + "!";
            break;
        } else if (resposta === 2) {
            resposta = parseInt(prompt("O número que você está pensando é maior (1) ou menor (2) do que " + tentativa + "?\nDigite 1 ou 2."));

            if (resposta === 2) {
                limiteSuperior = tentativa - 1;
            } else if (resposta === 1) {
                limiteInferior = tentativa + 1;
            } else {
                alert("Entrada inválida. Tente novamente.\n");
            }

            tentativas++;
        } else {
            alert("Entrada inválida. Tente novamente.\n");
        }
    } while (true);

    return 0;
}

compAdivinha();