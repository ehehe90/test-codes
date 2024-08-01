.section .data
hello: .string "hello world\n"
format_string: .string "%lu\n"

.section .text
.global _start

trap:
    movq $60, %rax
    movq $1, %rdi
    syscall

_start:
    movq    $1000, %rcx         # 繰り返し回数を1000回に設定

loop_start:
    # レジスタの設定
    movq    $10, %r12
    movq    $20, %r13
    movq    $30, %r14
    movq    $40, %r15
    movq    $41, %rbx
    # 一個目の計測
    rdtsc
    shlq    $32, %rdx
    orq     %rdx, %rax
    movq    %rax, %r11
    # 境界チェック命令群
    # 2個目の計測
    rdtsc
    shlq    $32, %rdx
    orq     %rdx, %rax
    # 計測結果の計算
    subq    %r11, %rax
    // push
    push %rcx
    # 計測結果の表示
    lea     format_string(%rip), %rdi
    mov     %rax, %rsi
    xor     %rax, %rax
    call    printf

    // pop
    pop %rcx
    
    // ループ処理
    dec %rcx                     # カウンタをデクリメント
    jnz loop_start               # カウンタが0でなければループを続行

    # 終了
    // mov     $60, %rax
    // xor     %rdi, %rdi
    // syscall
    xor     %rdi, %rdi
    call exit
