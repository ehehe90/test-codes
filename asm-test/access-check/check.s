.global _start

.equ EXIT, 60
.equ TARGET, 8
.equ ADDR1, 2
.equ ADDR2, 4
.equ ADDR3, 6
.equ ADDR4, 8

_exitProgram:
    movq $EXIT, %rax
    movq $0, %rdi
    syscall

_trap:
    movq $EXIT, %rax
    movq $0, %rdi
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

    # 1つ目の比較
    cmp %r11, %r15
    jle .+6

    # 2つめの比較
    cmp %r12, %r15
    jge .+19

    # trap
    nop
    movq $60, %rax
    movq $1, %rdi
    syscall

    # 3つめの比較
    cmp %r13, %r15
    jle .-20

    # 4つめの比較
    cmp %r14, %r15
    jge .-25


    call _exitProgram

    pop %rbp
