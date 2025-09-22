section .data
    msg db "Hello, World!", 0xa  ; string + newline
    len equ $ - msg              ; string length

section .text
    global _start

_start:
    ; write(stdout, msg, len)
    mov rax, 1        ; sys_write
    mov rdi, 1        ; file descriptor: stdout
    mov rsi, msg      ; address of message
    mov rdx, len      ; length
    syscall

    ; exit(0)
    mov rax, 60       ; sys_exit
    xor rdi, rdi      ; return code 0
    syscall
