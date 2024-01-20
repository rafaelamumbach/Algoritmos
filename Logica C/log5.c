#include <stdio.h>

int main(void) {
  int N, i, cont1 = 0, cont2 = 0, cont3 = 0, cont4 = 0;

  printf("Informe 15 valores inteiros: ");

  for (i = 0; i < 15; i++) {
    scanf("%d", &N); // guarda o valor digitado pelo usuĆ�rio apĆ³s o inĆ­cio da estrutura de repetiĆ§Ć£o
    if (N > 0 && N <= 25) {
      cont1++;
    }
    if (N > 25 && N <= 50) {
      cont2++;
    }
    if (N > 50 && N <= 75) {
      cont3++;
    }
    if (N > 75 && N <= 100) {
      cont4++;
    }
  }

  printf("Foram informados %d valores no intervalo [0,25].\n", cont1);
  printf("Foram informados %d valores no intervalo [25,50].\n", cont2);
  printf("Foram informados %d valores no intervalo [50,75].\n", cont3);
  printf("Foram informados %d valores no intervalo [75,100].\n", cont4);

  return 0;
}