#include <stdio.h>

int main(void) {
    int valores;
    int soma = 0;

    printf("Digite 15 valores inteiros:\n");

    for (int i = 0; i < 15; i++) {
        printf("Valor %d: ", i + 1);
        scanf("%d", &valores);
        soma += valores;
    }

    printf("A soma dos valores digitados Ã©: %d\n", soma);

    return 0;
}