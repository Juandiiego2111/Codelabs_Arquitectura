# Ejemplo de una funcion hecha en assembly

.text
.global sumar
.global restar
.global multiplicar
.global dividir

sumar: # En lenguaje c: resultado = sumar (int a, int b)
	add %rsi, %rdi
	mov %rdi, %rax
	ret

restar: # En lenguaje c: resultado = restar(int a, int b)
	sub %rsi, %rdi
	mov %rdi, %rax
	ret

multiplicar:
        imul %rsi, %rdi    # rdi = rdi * rsi
        mov %rdi, %rax     # resultado en rax (valor de retorno)
        ret

dividir:
        xor %rdx, %rdx     # limpiar rdx (parte alta para división)
        mov %rdi, %rax     # dividendo en rax
        div %rsi           # dividir rax por rsi (resultado en rax)
        ret
