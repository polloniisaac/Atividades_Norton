#include <stdio.h>


void fibonacci(int x, long long a, long long b) {
   
        return; 
    }
    printf("%lld ", a);
    
    fibonacci (x - 1, b, a + b);
}

int main() {
    int termos;
    
    printf("Quantos termos da sequencia de Fibonacci: \n");
    scanf("%d", &termos);
    
   
   fibonacci (termos, 0, 1);
    printf("\n");

    return 0;
}