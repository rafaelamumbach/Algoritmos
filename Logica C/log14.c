#include <stdio.h>

int analisaNumero() {
    int operacao = 0;

    printf("--^-- Calculadora Simples --^--\n");
    printf("Escolha uma das operações abaixo:\n");
    printf("1 - Adição\n2 - Subtração\n3 - Multiplicação\n4 - Divisão\n");
    scanf("%d", &operacao);

    return operacao;
}

int main() {
    while (1) {
        int operacaoEscolhida = analisaNumero();
        float num1 = 0;
        float num2 = 0;
        float resultado = 0;
        int continuar;

        printf("Digite o primeiro número: ");
        scanf("%f", &num1);

        printf("Digite o segundo número: ");
        scanf("%f", &num2);

        switch (operacaoEscolhida) {
            case 1:
                resultado = num1 + num2;
                break;

            case 2:
                resultado = num1 - num2;
                break;

            case 3:
                resultado = num1 * num2;
                break;

            case 4:
                resultado = num1 / num2;
                break;
        }

        printf("Resultado: %.2f\n", resultado);

        printf("Deseja realizar outra operação?\n1 - SIM\n2 - NÃO\n");
        scanf("%d", &continuar);

        if (continuar == 2) {
            printf("Finalizando...");
            break;
        }
    }

    return 0;
}