#include <stdio.h>

int main(){
    int conta = 1;
    float lado1, lado2, lado3, maior = 0;
    char entrada[50];
    
    do{
        int opcao = 0;
        printf("\nOBS: Não tem válidação\n1 - Verificar triângulo\n2 - Sair\n\nO que deseja fazer? ");
        scanf(" %d", &opcao);
        if(opcao == 1){
            printf("\nInforme o 1° lado: ");
            scanf( "%f", &lado1);
            if(lado1 > maior)
              maior = lado1;
            printf("\nInforme o 2° lado: ");
            scanf(" %f", &lado2);
            if(lado2 > maior)
              maior = lado2;
            printf("\nInforme o 3° lado: ");
            scanf(" %f", &lado3);
            if(lado3 > maior)
              maior = lado3;
            printf("\nInforme o triângulo: ");
            scanf(" %s", entrada);

            if(lado1 == lado2 && lado2 == lado3){
                printf("\nEsse triângulo é equilatero!");  
                printf("\nUsuario Informou: %s", entrada);   
            }else if(maior >= (lado2 + lado3) || maior >= (lado1 + lado3) || maior >= (lado1 + lado2)){
                printf("\nNão é um triângulo! ");
                printf("\nUsuario Informou: %s", entrada);
            }else if(lado1 != lado2 && lado2 != lado3 && lado3 != lado1){            
                printf("\nEsse triângulo é escaleno!");
                printf("\nUsuario Informou: %s", entrada);
            }else if((lado1 == lado2 && lado1 != lado3) || (lado1 == lado3 && lado3 != lado2) || (lado3 == lado2 && lado3 != lado1)){
                printf("\nEssae triângulo é isoceles!");
                printf("\nUsuario Informou:  %s", entrada);
            
            }
        }else if(opcao == 2){
            printf("Obrigado!");
            conta = 2;
        }

    }while(conta == 1);
    return 0;
}



//Aluno: Porfirio Amaro De Araújo Júnior


