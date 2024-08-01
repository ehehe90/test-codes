.global _start

.equ EXIT, 60
.equ TARGET, 9
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
    movq $1, %rdi
    syscall

.text

_start:
    movq %rsp, %rbp

    # init
    movq $ADDR1, %r11
    movq $ADDR2, %r12
    movq $ADDR3, %r13
    movq $ADDR4, %r14
    movq $TARGET, %r15

    # compare about addr1
    cmp %r11, %r15
    jl .+17

    # compare about addr4
    cmp %r14, %r15
    jg .+12

    # compare about addr2
    cmp %r12, %r15
    jl _trap
    #call _trap

    #compare about ADDR3
    cmp %r13, %r15
    jg _trap
    #call _trap

    call _exitProgram

    pop %rbp
