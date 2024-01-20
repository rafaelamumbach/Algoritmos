#include <stdio.h>

int main(void) {
  int valor, i, N;
  printf("-- Digite um N valor inteiro -- \n");
  scanf("%d" , &N);

  for (i = 0; i < N; i++) {
    printf("Digite o %do valor: ", i + 1);
    scanf("%d", &valor);

    if (valor % 2 == 0) {
      printf("-> É um número par.\n");
    } else {
      printf("-> É um número ímpar.\n");
    }
  }

  return 0;
}