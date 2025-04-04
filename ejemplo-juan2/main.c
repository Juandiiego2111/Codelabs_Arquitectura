#include <stdio.h>

// Declaración de la función externa en ensamblador
extern double calcular_seno(double angle);

int main() {
    double angulo;
    printf("Ingrese un ángulo en grados: ");
    scanf("%lf", &angulo);

    double resultado = calcular_seno(angulo);
    printf("El seno de %.2f° es aproximadamente %.6f\n", angulo, resultado);
    return 0;
}
