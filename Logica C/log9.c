#include <stdio.h>

int main() {
    int multiplicando = 0, multiplicador = 0;
    int soma = 0, cont = 0;

    printf("Informe o multiplicando: \n");
    scanf("%d", &multiplicando);

    printf("Informe o multiplicador: ");
    scanf("%d", &multiplicador);

    for (int i = 0; i < multiplicador; i++) {
        soma+= multiplicando; //soma = soma + multiplicando
      }

    printf("Resultado: %d\n", soma);

    return 0;
}