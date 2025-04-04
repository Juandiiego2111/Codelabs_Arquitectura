
section .data
    mensaje asciz "%d\n" # Mensaje de formato para imprimir un número entero con salto de línea

section .text
    global main
    extern printf

main:
_start:
    mov rsi, 1          # Inicializamos el contador en 1

loop:
    cmp rsi, 11         # Comparamos si el contador llegó a 11
    jge salir           # Si es mayor o igual a 11, salimos del bucle

    mov rdi, mensaje    # Dirección del mensaje de formato
    mov rdx, rsi        # Pasamos el número a imprimir
    xor rax, rax        # Limpiamos rax para printf (0 registros flotantes)
    call printf

    inc rsi             # Incrementamos el contador
    jmp loop            # Volvemos al inicio del bucle

salir:
    mov rax, 60         # Código de salida para syscall exit
    xor rdi, rdi        # Código de salida 0
    syscall             # Llamamos a syscall para salir

