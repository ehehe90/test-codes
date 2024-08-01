.global _start

.equ EXIT, 60
.equ TARGET, 7
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
    movq $ADDR1, %r12
    movq $ADDR2, %r13
    movq $ADDR3, %r14
    movq $ADDR4, %r15
    movq $TARGET, %rbx

    # compare about addr1
    cmp %r12, %rbx
    jl .+17

    # compare about addr4
    cmp %r15, %rbx
    jg .+12

    # compare about addr2
    cmp %r13, %rbx
    jl _trap

    #compare about ADDR3
    cmp %r14, %rbx
    jg _trap

    call _exitProgram

    pop %rbp
