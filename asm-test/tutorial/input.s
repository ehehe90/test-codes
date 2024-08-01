.global _start

.equ EXIT, 60
.text

.bss
    age: .skip 16

_exitProgram:
    movq $EXIT, %rax
    movq $0, %rdi
    syscall
    ret

_start:
    movq %rsp, %rbp

    call _exitProgram

    pop %rbp
