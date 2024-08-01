	.file	"poll.c"
	.text
	.section	.rodata
.LC0:
	.string	"poll"
.LC1:
	.string	"%d seconds elapsed.\n"
.LC2:
	.string	"stdin is readable"
.LC3:
	.string	"stdout is writable"
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
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -32(%rbp)
	movw	$1, -28(%rbp)
	movl	$1, -24(%rbp)
	movw	$4, -20(%rbp)
	leaq	-32(%rbp), %rax
	movl	$5000, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	poll@PLT
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	jne	.L2
	leaq	.LC0(%rip), %rdi
	call	perror@PLT
	movl	$1, %eax
	jmp	.L7
.L2:
	cmpl	$0, -36(%rbp)
	jne	.L4
	movl	$5, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L7
.L4:
	movzwl	-26(%rbp), %eax
	cwtl
	andl	$1, %eax
	testl	%eax, %eax
	je	.L5
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
.L5:
	movzwl	-18(%rbp), %eax
	cwtl
	andl	$4, %eax
	testl	%eax, %eax
	je	.L6
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
.L6:
	movl	$0, %eax
.L7:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
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
