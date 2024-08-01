	.file	"test2.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	.cfi_offset 14, -24
	movabsq	$2199023255552, %rax
	movq	%rax, -24(%rbp)
	movabsq	$2201170739200, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
#APP
# 7 "test2.c" 1
	movq %rax, %r11
# 0 "" 2
#NO_APP
	movq	-16(%rbp), %rax
#APP
# 8 "test2.c" 1
	movq %rax, %r14
# 0 "" 2
#NO_APP
	movl	$0, %eax
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
