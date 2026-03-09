/* 3 - Crie um TAD que implemente o controle de uma conta bancaria, implemente funções
para inicializar, depositar, sacar e imprimir o saldo.
*/

#include <stdio.h>
#include <stdlib.h>

typedef struct {
    int numero;
    float saldo;
} Conta;

void inicializar(Conta *c, int numero) {
    c -> numero = numero;
    c -> saldo = 0;
}

void depositar(Conta *c, float valor) {
    c -> saldo += valor;
}

void sacar(Conta *c, float valor) {
    if(valor <= c->saldo) {
        c -> saldo -= valor;
    } else {
        printf("Saldo insuficiente\n");
    }
}

void imprimirSaldo(Conta *c) {
    printf("Saldo da conta: %.2f\n", c -> saldo);
}


/*4. Utilizando a alocação dinamica de memoria crie uma função para criar uma nova conta bancaria*/

Conta* criarConta(int numero) {

    Conta *c;

    c = (Conta*) malloc(sizeof(Conta));

    if(c != NULL) {
        c->numero = numero;
        c->saldo = 0;
    }

    return c;
}

int main() {

    Conta *c1;

    c1 = criarConta(1);

    depositar(c1, 1000);
    sacar(c1, 300);
    imprimirSaldo(c1);

    return 0;
}

