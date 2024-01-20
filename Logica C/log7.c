#include <stdio.h>

int main() {
    int valores;
    int soma = 0;

    printf("Digite 15 valores inteiros:\n");

    for (int i = 0; i < 15; i++) {
        printf("Valor %d: ", i + 1);
        scanf("%d", &valores);
      if (valores % 2 == 0){
        soma += valores;
      }
    }

    printf("A soma dos valores pares digitados é: %d\n", soma);

    return 0;
}