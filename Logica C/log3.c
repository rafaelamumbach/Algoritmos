#include <stdio.h>

int main(void) {
  int valor;
  int i = 1;

  while (1) { //enquanto for verdadeiro, executa
    printf("Informe um valor inteiro p/ prosseguir ou um negativo p/ parar: ");
    scanf("%d", &valor);

    if (valor < 0) {
      break; //para o for quando o valor for 0
    }

    if (valor % 2 == 0) {
      printf("-> É um número par.\n");
    }

    i++; //executa novamente a estrutura de repetição
  }

  return 0;
}