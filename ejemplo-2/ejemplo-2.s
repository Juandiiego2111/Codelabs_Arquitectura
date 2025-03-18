
.data
mensaje: .asciz "%ld \n"


.text
.global main
.extern printf   # Indico que quiero utilizar la funcion printf de la libc

main:
  subq $8, %rsp   # Alineacion de datos

  mov $4, %rax    # rax=4
  mov $15, %rbx    # rbx=5
  add %rbx, %rax  # rax=rax+rbx
 
  # Bloque de impresion
  # printf("%ld \n", rax);
  #          rdi   , rsi

  movq  $mensaje, %rdi
  movq  %rax, %rsi
  xorq %rax, %rax # rax=0
  call printf
 
  addq $8, %rsp   # Alineacion de datos original

  # Salir al sistema
  mov $60, %rax   # Indico que vamos a usar la funcion exit
  mov $0,  %rdi   # Indico que el argumento tiene un valor de 0
  syscall         # No es parte de ensamblador pero llama a las funciones del sistema
