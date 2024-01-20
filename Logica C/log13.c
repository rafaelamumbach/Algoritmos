#include <stdio.h>
void main(){
    float num1, num2, soma = 0, subtracao = 0, divisao = 0, mult = 0, modo;
    scanf("%f", &num1);
    scanf("%f", &num2);
    
    printf("Soma - 1\n");
    printf("Subtracao - 2\n");
    printf("Divisao - 3\n");
    printf("Multiplicacao - 4\n");
    scanf("%f", &modo);
    
    if (modo == 1){
        soma = num1 + num2;
        printf("Res: %.2f", soma);
        
    }
    
    if (modo == 2){
        subtracao = num1 - num2;
        printf("Res: %.2f", subtracao);
        
    }
    
    if (modo == 3){
        divisao = num1 / num2;
        printf("Res: %.2f", divisao);
        
    }
    
    if (modo == 4){
        mult = num1 * num2;
        printf("Res: %.2f", mult);
        
    }

}