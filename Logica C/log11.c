#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int obterNivel() {
    int nivel;
    printf("Escolha o nível de dificuldade:\n");
    printf("1 - Fácil (15 tentativas)\n");
    printf("2 - Médio (10 tentativas)\n");
    printf("3 - Difícil (5 tentativas)\n");
    scanf("%d", &nivel);
    return nivel;
}

void jogarJogo(int nivel) {
    int numeroSecreto = rand() % 100 + 1;
    int tentativa = 0;
    int maxTentativas;

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
            printf("Nível inválido. Encerrando o jogo.\n");
            return;
    }

    printf("\nVocê escolheu o nível %d. Boa sorte!\n", nivel);

    while (tentativa < maxTentativas) {
        int chute;
        printf("Tentativa %d de %d!\n", tentativa + 1, maxTentativas);
        printf("Digite sua tentativa: ");
        scanf("%d", &chute);
        tentativa++;

        if (chute == numeroSecreto) {
            printf("Parabéns! Você acertou o número secreto. 😊\n -- Fim de jogo --\n");
            return;
        } else if (chute < numeroSecreto) {
            printf("Valor BAIXO! Tente novamente.\n");
        } else {
            printf("Valor ALTO! Tente novamente.\n");
        }
    }

    printf("Você atingiu o limite de tentativas! 😐\n");
    printf("O número secreto era: %d\n -- Fim de jogo --\n", numeroSecreto);
}

int main(void) {
    srand((unsigned int)time(NULL));

    printf(" ** Adivinhe o número entre 1 e 100! **\n");

    int nivelEscolhido = obterNivel();
    jogarJogo(nivelEscolhido);

    return 0;
}