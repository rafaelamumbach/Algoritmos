#include <stdio.h>

int CalculaFat(int n){
    int fat;
    for(fat=1; n> 1; n = n-1){
        fat = fat * n;
    }


    return fat;
}

int main(){
    int n;
    printf("CÃ¡lculo de fatorial\n");
    printf("Informe um nÃºmero: ");

    scanf("%d", &n);
    int fatorial = CalculaFat(n);

    printf("Fatorial de %d: %d", n, fatorial);
  

    return 0;
}