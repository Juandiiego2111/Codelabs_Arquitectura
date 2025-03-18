// Programa que muestra las llamadas a funciones hechas en assembly
#include<stdio.h>
#include<stdlib.h>

// rax     rdx, rsi
int sumar(int, int);
int restar(int, int);
int multiplicar(int, int);
int dividir(int, int);

int main(int numeroParametros, char ** argumentos){

	int resultadoSuma;
	int resultadoResta;
	int resultadoMultiplicacion;
	int resultadoDivision;
	int num1 = 10;
	int num2 = 5;

	printf("El numero de parametros en la linea de comandos fue %d\n", numeroParametros);

	resultadoSuma = sumar(num1, num2);
	printf("La suma de %d y %d es: %d\n", num1, num2, resultadoSuma);

	resultadoResta = restar(num1, num2);
	printf("La resta de %d y %d es: %d\n", num1, num2, resultadoResta);

	resultadoMultiplicacion = multiplicar(num1, num2);
	printf("El resultado de multiplicar %d por %d es: %d\n", num1, num2, resultadoMultiplicacion);

	resultadoDivision = dividir(num1, num2);
	printf("El resultado de dividir %d entre %d es: %d\n", num1, num2, resultadoDivision);

	return(EXIT_SUCCESS);
}

