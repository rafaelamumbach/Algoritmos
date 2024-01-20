#include <stdio.h>

int main() {
    int valores;
    int soma = 0, cont = 0;
    float media = 0;

    printf("Digite 15 valores inteiros:\n");

    for (int i = 0; i < 15; i++) {
        printf("Valor %d: ", i + 1);
        scanf("%d", &valores);
      if (valores % 2 != 0){
        soma += valores; //incremente variÃ¡vel
        cont++; //conta quantos nÃºmeros pares foram digitados
        media = soma / cont; //calcula mÃ©dia (soma/nÃºmero de nÃºmeros pares)
      }
    }

    printf("A mÃ©dia dos valores digitados Ã©: %.2f\n", media);

    return 0;
}