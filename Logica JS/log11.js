let outputElement = document.getElementById('output');

function obterNivel() {
    let nivel;
    outputElement.innerHTML += "Adivinhe o número em Javascript!<br>";
    alert("Escolha um dos níveis de dificuldade a seguir.");
    alert("1 - Fácil (15 tentativas)");
    alert("2 - Médio (10 tentativas)");
    alert("3 - Difícil (5 tentativas)");

    nivel = parseInt(prompt("Qual nível?"));

    return nivel;
}

function gerarNumeroAleatorio() {
    return Math.floor(Math.random() * 100) + 1;
}

function jogarJogo(nivel) {
    let numeroSecreto = gerarNumeroAleatorio();
    let tentativa = 0;
    let maxTentativas = 0;
    let jogadorAcertou = false; // Adiciona esta variável

    switch (nivel) {
        case 1:
            maxTentativas = 15;
            break;
        case 2:
            maxTentativas = 10;
            break;
        case 3:
            maxTentativas = 5;
            break;
        default:
            outputElement.innerHTML += "Erro.<br>";
            break;
    }

    alert("Nível " + nivel + ". Boa sorte!");

    while (tentativa < maxTentativas && !jogadorAcertou) { // Modifica a condição do loop
        let chute;
        alert("Tentativa " + (tentativa + 1) + " de " + maxTentativas + "");
        chute = parseInt(prompt("Digite sua tentativa: "));
        tentativa++;

        if (chute == numeroSecreto) {
            alert("Parabéns! Você acertou o número secreto. Fim de jogo ✅");
            jogadorAcertou = true; // Define que o jogador acertou
        } else if (chute < numeroSecreto) {
            alert("Valor BAIXO! Tente novamente.");
        } else {
            alert("Valor ALTO! Tente novamente.");
        }
    }

    if (!jogadorAcertou) { // Adiciona esta condição para a mensagem correta
        alert("Você atingiu o limite de tentativas! Fim de jogo 😐");
        outputElement.innerHTML += "O número secreto era: " + numeroSecreto + "<br>";
    }
}


function principal() {
    alert("Adivinhe o número entre 1 e 100!");
}

principal();
let nivelEscolhido = obterNivel();
jogarJogo(nivelEscolhido);