.globl _start

_start:
    movl $1, %eax    # システムコール番号 1 は exit() を示します
    movl $5, %ebx    # exit のステータスコードとして 5 を設定します
    int $0x80        # システムコールを発行します
