

//1- Qual o valor de y no final do programa? 
//Resposta: O valor final de y é 4.
#include <stdio.h>
main()
{
int y, *p, x;
y = 0;
p = &y;
x = *p;
x = 4;
++(*p);
x–;
(*p) += x++;
printf (“y = %d\n”, y);

/*

2-Teste e explique a diferença, caso exista, entre
a) p++; (*p)++; *(++p);

b) O que quer dizer *(p+10)?

Resposta: 
a)
p++: esta operação incrementa o endereço armazenado no ponteiro pois 
O ponteiro passa a apontar para a próxima posição de memória do mesmo tipo.

(*p)++: os parênteses forçam a prioridade para o conteúdo.
acessa primeiramente o valor onde p está apontando (*p). Depois, incrementamos esse valor.

*(++p):O ponteiro é movido para o próximo endereço (++p). 
Depois, o operador (*) acessa o valor nesse novo local.

Resposta:
b) *(p+10)
ele avança 10 posicoes na memória.

*/

 //3-Quais serão os valores de x, y e p ao final do trecho de código abaixo?
 
//x = 3, y = 4 e p= endereço de memoria de y (%y)

int x, y, *p;y = 0;  
p = &y;  
x = *p;  
x = 4;  
(*p)++;  
–x;  
(*p) += x;  

//4-Os programas (trechos de código) abaixo possuem erros. Qual(is)?Como deveriam ser?

/*
Resposta: O erro está na tentativa de atribuir um valor 
inteiro direto a um ponteiro, sem usar o operador de endereço (&x).
    void main() {
        int x, *p;
        x = 100;
        p = &x;
        printf("Valor de p: %d.\n", *p);
        
    }
*/

//a)
void main() {
int x, *p;
x = 100;
p = x;
printf(“Valor de p: %d.\n”, *p);
    
}


/*
Resposta:Na linha int *temp;, você declarou um ponteiro
para inteiro, mas não disse para onde ele deve apontar.

    void troca (int *i, int *j) {
    int temp;      
    temp = *i;     
    *i = *j;       
    *j = temp;
        
    }
*/

//b)
void troca (int *i, int *j) {
int *temp;
*temp = *i;
*i = *j;
*j = *temp;
    
}

/*
// Resposta: o erro esta na comparação de (a < b), onde deveria comparar caracteres
mas esta pegando os espaços da memória e comparando
-Usar strcmp para funcionar.

int main() {
    char *a, *b;
    a = "abacate";
    b = "uva";
    
    if (strcmp(a, b) < 0)
        printf("%s vem antes de %s no dicionario\n", a, b);
    else
        printf("%s vem depois de %s no dicionario\n", a, b);

    return 0;
}
*/

//c)
char *a, *b;  
a = “abacate”;  
b = “uva”;  
if (a < b)  
printf (“%s vem antes de %s no dicionário”, a, b);  
else  
printf (“%s vem depois de %s no dicionário”, a, b);  




/* 5 - Escreva uma função chamada troca que troca os valores dos
parâmetros recebidos. Sua assinatura deve ser:void troca(float *a, float *b);*/

void troca(float *a, float *b) {
    if (a != b) {
        *a = *a + *b;
        *b = *a - *b;
        *a = *a - *b;
}



