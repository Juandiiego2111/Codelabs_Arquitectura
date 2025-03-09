.global _start

.text

_start:

       mov $0x3f, %al
       mov $0xF3, %ah

       # Salir al sistema
       mov $60, %rax
       xor %rdi, %rdi
       syscall
