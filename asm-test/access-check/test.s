.global _start

.equ EXIT, 60
.equ TARGET, 1
.equ ADDR1, 2
.equ ADDR2, 3
.equ ADDR3, 4
.equ ADDR4, 5

_exitProgram:
    movq $EXIT, %rax
    movq $0, %rdi
    syscall

_trap:
    movq $EXIT, %rax
    movq $1, %rdi
    syscall

.text

_start:
    movq %rsp, %rbp

    # 初期化
    movq $ADDR1, %r11
    movq $ADDR2, %r12
    movq $ADDR3, %r13
    movq $ADDR4, %r14
    movq $TARGET, %r15

    cmp %r11, %r15
    jle .-3

    cmp %r12, %r15

    call _exitProgram

    pop %rbp
