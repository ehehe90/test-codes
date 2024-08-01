	.file	"futex_send.c"
	.text
	.globl	sys_futex
	.type	sys_futex, @function
sys_futex:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movl	$202, %edi
	movl	$0, %eax
	call	syscall@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	sys_futex, .-sys_futex
	.section	.rodata
.LC0:
	.string	"Error: open"
.LC1:
	.string	"Error: ftruncate"
.LC2:
	.string	"Error: mmap"
	.text
	.globl	setup
	.type	setup, @function
setup:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$-1, -12(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$384, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L4
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	jmp	.L5
.L4:
	movl	$4, -16(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ftruncate@PLT
	testl	%eax, %eax
	je	.L6
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	jmp	.L5
.L6:
	movl	-16(%rbp), %eax
	cltq
	movl	-12(%rbp), %edx
	movl	$0, %r9d
	movl	%edx, %r8d
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	mmap@PLT
	movq	%rax, -8(%rbp)
	cmpq	$-1, -8(%rbp)
	jne	.L7
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movq	$0, -8(%rbp)
	jmp	.L5
.L7:
	movq	-8(%rbp), %rax
	jmp	.L8
.L5:
	cmpq	$0, -8(%rbp)
	je	.L9
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	munmap@PLT
.L9:
	cmpl	$0, -12(%rbp)
	js	.L10
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
.L10:
	movl	$0, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	setup, .-setup
	.section	.rodata
.LC3:
	.string	"FAILED"
.LC4:
	.string	"SUCCESS"
	.align 8
.LC5:
	.string	"futex(WAKE) returns unexpected error: "
	.text
	.globl	send
	.type	send, @function
send:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	sys_futex
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L12
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	jmp	.L15
.L12:
	cmpl	$1, -12(%rbp)
	jne	.L14
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	jmp	.L15
.L14:
	leaq	.LC5(%rip), %rdi
	call	perror@PLT
.L15:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	send, .-send
	.section	.rodata
.LC6:
	.string	"futex_test_shm"
.LC7:
	.string	"setup is failed."
	.text
	.globl	main
	.type	main, @function
main:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC6(%rip), %rdi
	call	setup
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L17
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %eax
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	send
	movl	$0, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
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
