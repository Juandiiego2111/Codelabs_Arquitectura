#include <stdio.h>
#include <stdlib.h>

float suma_float(float, float);

int main(int numArgumentos, char **argumentos) {
    float numero1 = 0.56f;
    float numero2 = 0.44f;
    float resultado;

    resultado = suma_float(numero1, numero2);
    printf("\r\n%f + %f = %f \r\n", numero1, numero2, resultado);

    exit(EXIT_SUCCESS);
}
