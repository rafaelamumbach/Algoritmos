#include <stdio.h>

int main(void) {
  int N, i, cont = 0;

  printf("Informe 15 valores inteiros: ");

  for (i = 0; i < 15; i++) {
    scanf("%d", &N); //guarda o valor digitado pelo usuário após o início da estrutura de repetição
    if (N >= 10 && N <= 20) {
      cont++;
    }
  }

  printf("Foram informados %d valores no intervalo de 10 a 20 especificado.\n", cont);

  return 0;
}