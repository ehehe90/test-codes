.global _start

.hello.str:
    .ascii "12345678\n"

.equ STDOUT, 1
.equ WRITE, 1
.equ EXIT, 60

_writeHello:
     # write hello world
    movq $WRITE, %rax
    movq $STDOUT, %rdi
    leaq .hello.str, %rsi
    movq $9, %rdx
    syscall

_exitProgram:
    # exit
    movq $EXIT, %rax
    movq $0, %rdi
    syscall

.text

_start:
    movq %rsp, %rbp

    call _writeHello
    call _exitProgram
    

    pop %rbp
