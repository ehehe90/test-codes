	.file	"u_openssl_vpn.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"u_openssl_vpn.c"
.LC1:
	.string	"%s:%s:%i: error: "
.LC2:
	.string	"ENV_CIPHER_CTX_reset"
.LC3:
	.string	"ENV_EncryptInit_ex"
.LC4:
	.string	"EVP_EncryptUpdate failed"
.LC5:
	.string	"EVP_EncryptFinal_ex failed"
.LC6:
	.string	"Failed to get GCM tag"
.LC7:
	.string	"a"
	.text
	.p2align 4
	.globl	nfc_cb
	.type	nfc_cb, @function
nfc_cb:
.LVL0:
.LFB382:
	.file 1 "u_openssl_vpn.c"
	.loc 1 159 37 view -0
	.cfi_startproc
	.loc 1 159 37 is_stmt 0 view .LVU1
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 159 37 view .LVU2
	// R5
	leaq	8(%rsp), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	%rdi, 8(%rsp)
	// R5
	leaq	4(%rsp), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movl	%esi, 4(%rsp)
	// R5
	RDFSBASE	%rbx
	add		$40, %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	%fs:40, %rax
	// R5
	leaq	40(%rsp), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	.loc 1 161 3 is_stmt 1 view .LVU3
	.loc 1 162 3 view .LVU4
	.loc 1 163 3 view .LVU5
.LVL1:
	.loc 1 164 3 view .LVU6
	.loc 1 165 3 view .LVU7
	.loc 1 166 3 view .LVU8
	.loc 1 167 3 view .LVU9
	.loc 1 168 3 view .LVU10
	.loc 1 169 3 view .LVU11
	.loc 1 171 3 view .LVU12
	.loc 1 171 10 is_stmt 0 view .LVU13
	// omit
	// R3
	leaq	12(%rdi), %rbx
	cmp		%r13, %rbx
	jg		.+7
	jmp		trap
	cmp		%r14, %rbx
	jl		.+7
	jmp		trap
	movzwl	12(%rdi), %eax
.LVL2:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/byteswap.h"
	.loc 2 37 3 is_stmt 1 view .LVU14
	.loc 1 171 6 is_stmt 0 view .LVU15
	cmpw	$8, %ax
	je	.L2
	.loc 1 184 10 is_stmt 1 view .LVU16
.LVL3:
	.loc 2 37 3 view .LVU17
	.loc 1 184 13 is_stmt 0 view .LVU18
	cmpw	$-8826, %ax
	.loc 1 203 12 view .LVU19
	movl	%esi, %edx
	movq	%rdi, %rax
	.loc 1 184 13 view .LVU20
	jne	.L4
	.loc 1 185 5 is_stmt 1 view .LVU21
.LVL4:
	.loc 1 186 5 view .LVU22
	.loc 1 210 10 view .LVU23
	.loc 1 211 5 view .LVU24
	.loc 1 211 13 is_stmt 0 view .LVU25
	leaq	-54(%rdi), %rbp
.LVL5:
.L5:
	.loc 1 214 3 is_stmt 1 view .LVU26
	.loc 1 215 3 view .LVU27
	.loc 1 217 3 view .LVU28
.LBB230:
.LBI230:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 3 31 1 view .LVU29
.LBB231:
	.loc 3 34 3 view .LVU30
	.loc 3 34 10 is_stmt 0 view .LVU31
	// R5
	leaq	new_eth_body(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	new_eth_body(%rip), %rax
.LBE231:
.LBE230:
.LBB233:
.LBB234:
	.loc 1 54 18 view .LVU32
	pxor	%xmm1, %xmm1
.LBE234:
.LBE233:
.LBB237:
.LBB232:
	.loc 3 34 10 view .LVU33
	// R3
	leaq	0(%rbp), %rbx
	cmp		%r13, %rbx
	jg		.+7
	jmp		trap
	leaq	7(%rbp), %rbx
	cmp		%r14, %rbx
	jl		.+7
	jmp		trap
	movq	%rax, 0(%rbp)
	// R5
	leaq	8+new_eth_body(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movl	8+new_eth_body(%rip), %eax
	// R3
	leaq	8(%rbp), %rbx
	cmp		%r13, %rbx
	jg		.+7
	jmp		trap
	leaq	11(%rbp), %rbx
	cmp		%r14, %rbx
	jl		.+7
	jmp		trap
	movl	%eax, 8(%rbp)
	// R5
	leaq	12+new_eth_body(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movzwl	12+new_eth_body(%rip), %eax
	// R3
	leaq	12(%rbp), %rbx
	cmp		%r13, %rbx
	jg		.+7
	jmp		trap
	leaq	13(%rbp), %rbx
	cmp		%r14, %rbx
	jl		.+7
	jmp		trap
	movw	%ax, 12(%rbp)
.LVL6:
	.loc 3 34 10 view .LVU34
.LBE232:
.LBE237:
	.loc 1 219 3 is_stmt 1 view .LVU35
	.loc 1 219 29 is_stmt 0 view .LVU36
	// R5
	leaq	4(%rsp), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movzwl	4(%rsp), %eax
.LBB238:
.LBB235:
	.loc 1 54 18 view .LVU37
	// R5
	leaq	16+new_ip_body(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movzwl	16+new_ip_body(%rip), %edx
.LBE235:
.LBE238:
	.loc 1 219 29 view .LVU38
	addl	$20, %eax
	// R5
	leaq	2+new_ip_body(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movw	%ax, 2+new_ip_body(%rip)
	.loc 1 220 3 is_stmt 1 view .LVU39
.LVL7:
.LBB239:
.LBI233:
	.loc 1 50 12 view .LVU40
.LBB236:
	.loc 1 53 11 view .LVU41
	.loc 1 54 9 view .LVU42
	.loc 1 54 18 is_stmt 0 view .LVU43
	// R5
	leaq	new_ip_body(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movdqu	new_ip_body(%rip), %xmm0
	// R5
	leaq	18+new_ip_body(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movzwl	18+new_ip_body(%rip), %eax
	movdqa	%xmm0, %xmm2
	punpcklwd	%xmm1, %xmm0
	punpckhwd	%xmm1, %xmm2
	.loc 1 54 15 view .LVU44
	addl	%eax, %edx
	paddd	%xmm2, %xmm0
	.loc 1 55 9 is_stmt 1 view .LVU45
	.loc 1 53 11 view .LVU46
	movdqa	%xmm0, %xmm1
	psrldq	$8, %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
.LVL8:
	.loc 1 54 9 view .LVU47
	.loc 1 55 9 view .LVU48
	.loc 1 53 11 view .LVU49
	.loc 1 54 9 view .LVU50
	.loc 1 54 15 is_stmt 0 view .LVU51
	paddd	%xmm1, %xmm0
.LVL9:
	.loc 1 54 15 view .LVU52
	movd	%xmm0, %eax
	addl	%eax, %edx
.LVL10:
	.loc 1 55 9 is_stmt 1 view .LVU53
	.loc 1 53 11 view .LVU54
	.loc 1 58 5 view .LVU55
	.loc 1 62 5 view .LVU56
	.loc 1 62 20 is_stmt 0 view .LVU57
	movl	%edx, %eax
	.loc 1 62 36 view .LVU58
	movzwl	%dx, %edx
.LVL11:
	.loc 1 62 20 view .LVU59
	shrl	$16, %eax
.LVL12:
	.loc 1 62 11 view .LVU60
	addl	%edx, %eax
.LVL13:
	.loc 1 63 5 is_stmt 1 view .LVU61
	.loc 1 63 21 is_stmt 0 view .LVU62
	movl	%eax, %edx
	shrl	$16, %edx
.LVL14:
	.loc 1 65 5 is_stmt 1 view .LVU63
	.loc 1 63 11 is_stmt 0 view .LVU64
	addl	%edx, %eax
	.loc 1 65 12 view .LVU65
	notl	%eax
	// R5
	leaq	10+new_ip_body(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movw	%ax, 10+new_ip_body(%rip)
.LBE236:
.LBE239:
	.loc 1 221 3 is_stmt 1 view .LVU66
.LVL15:
.LBB240:
.LBI240:
	.loc 3 31 1 view .LVU67
.LBB241:
	.loc 3 34 3 view .LVU68
	.loc 3 34 10 is_stmt 0 view .LVU69
	// R5
	leaq	new_ip_body(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movdqu	new_ip_body(%rip), %xmm3
	// R3
	leaq	14(%rbp), %rbx
	cmp		%r13, %rbx
	jg		.+7
	jmp		trap
	leaq	29(%rbp), %rbx
	cmp		%r14, %rbx
	jl		.+7
	jmp		trap
	movups	%xmm3, 14(%rbp)
	// R5
	leaq	16+new_ip_body(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movl	16+new_ip_body(%rip), %eax
.LBE241:
.LBE240:
	.loc 1 226 7 view .LVU70
	// R5
	leaq	ctx(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	ctx(%rip), %rdi
.LVL16:
.LBB243:
.LBB242:
	.loc 3 34 10 view .LVU71
	// R3
	leaq	30(%rbp), %rbx
	cmp		%r13, %rbx
	jg		.+7
	jmp		trap
	leaq	33(%rbp), %rbx
	cmp		%r14, %rbx
	jl		.+7
	jmp		trap
	movl	%eax, 30(%rbp)
.LVL17:
	.loc 3 34 10 view .LVU72
.LBE242:
.LBE243:
	.loc 1 224 3 is_stmt 1 view .LVU73
	.loc 1 226 3 view .LVU74
	.loc 1 226 7 is_stmt 0 view .LVU75
	// arg 1
	cmp		%r15, %rdi
	jg		.+7
	jmp		trap
	call	EVP_CIPHER_CTX_reset@PLT
.LVL18:
	.loc 1 226 6 view .LVU76
	cmpl	$1, %eax
	je	.L6
	.loc 1 227 5 is_stmt 1 view .LVU77
	.loc 1 227 5 view .LVU78
.LVL19:
.LBB244:
.LBI244:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 4 98 1 view .LVU79
.LBB245:
	.loc 4 100 3 view .LVU80
	.loc 4 100 10 is_stmt 0 view .LVU81
	// R5
	leaq	stderr(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	stderr(%rip), %rdi
	movl	$227, %r9d
	xorl	%eax, %eax
	leaq	__func__.11046(%rip), %r8
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	movl	$1, %esi
	call	__fprintf_chk@PLT
.LVL20:
	.loc 4 100 10 view .LVU82
.LBE245:
.LBE244:
	.loc 1 227 5 is_stmt 1 view .LVU83
.LBB246:
.LBI246:
	.loc 4 98 1 view .LVU84
.LBB247:
	.loc 4 100 3 view .LVU85
	.loc 4 100 10 is_stmt 0 view .LVU86
	movl	$1, %esi
	movl	$20, %edx
	// R5
	leaq	stderr(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	stderr(%rip), %rcx
	leaq	.LC2(%rip), %rdi
	call	fwrite@PLT
.LVL21:
	.loc 4 100 10 view .LVU87
.LBE247:
.LBE246:
	.loc 1 227 5 is_stmt 1 view .LVU88
.LBB248:
.LBI248:
	.loc 4 98 1 view .LVU89
.LBB249:
	.loc 4 100 3 view .LVU90
	.loc 4 100 10 is_stmt 0 view .LVU91
	// R5
	leaq	stderr(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	stderr(%rip), %rsi
	movl	$10, %edi
	call	fputc@PLT
.LVL22:
.L6:
	.loc 4 100 10 view .LVU92
.LBE249:
.LBE248:
	.loc 1 227 5 is_stmt 1 discriminator 1 view .LVU93
	.loc 1 229 3 discriminator 1 view .LVU94
	.loc 1 229 7 is_stmt 0 discriminator 1 view .LVU95
	// R5
	leaq	iv(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	iv(%rip), %r8
	// R5
	leaq	key(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	key(%rip), %rcx
	// R5
	leaq	24(%rsp), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	%r8, 24(%rsp)
	// R5
	leaq	16(%rsp), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	%rcx, 16(%rsp)
	call	EVP_aes_256_gcm@PLT
.LVL23:
	// R5
	leaq	24(%rsp), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	24(%rsp), %r8
	// R5
	leaq	16(%rsp), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	16(%rsp), %rcx
	xorl	%edx, %edx
	// R5
	leaq	ctx(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	ctx(%rip), %rdi
	movq	%rax, %rsi
	// arg 1
	cmp		%r15, %rdi
	jg		.+7
	jmp		trap
	// arg 2
	cmp		%r15, %rsi
	jg		.+7
	jmp		trap
	// arg 4
	cmp		%r15, %rcx
	jg		.+7
	jmp		trap
	// arg 5
	cmp		%r15, %r8
	jg		.+7
	jmp		trap
	call	EVP_EncryptInit_ex@PLT
.LVL24:
	.loc 1 229 6 discriminator 1 view .LVU96
	cmpl	$1, %eax
	je	.L7
	.loc 1 230 5 is_stmt 1 view .LVU97
	.loc 1 230 5 view .LVU98
.LVL25:
.LBB250:
.LBI250:
	.loc 4 98 1 view .LVU99
.LBB251:
	.loc 4 100 3 view .LVU100
	.loc 4 100 10 is_stmt 0 view .LVU101
	// R5
	leaq	stderr(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	stderr(%rip), %rdi
	movl	$230, %r9d
	xorl	%eax, %eax
	leaq	__func__.11046(%rip), %r8
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	movl	$1, %esi
	call	__fprintf_chk@PLT
.LVL26:
	.loc 4 100 10 view .LVU102
.LBE251:
.LBE250:
	.loc 1 230 5 is_stmt 1 view .LVU103
.LBB252:
.LBI252:
	.loc 4 98 1 view .LVU104
.LBB253:
	.loc 4 100 3 view .LVU105
	.loc 4 100 10 is_stmt 0 view .LVU106
	movl	$1, %esi
	movl	$18, %edx
	// R5
	leaq	stderr(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	stderr(%rip), %rcx
	leaq	.LC3(%rip), %rdi
	call	fwrite@PLT
.LVL27:
	.loc 4 100 10 view .LVU107
.LBE253:
.LBE252:
	.loc 1 230 5 is_stmt 1 view .LVU108
.LBB254:
.LBI254:
	.loc 4 98 1 view .LVU109
.LBB255:
	.loc 4 100 3 view .LVU110
	.loc 4 100 10 is_stmt 0 view .LVU111
	// R5
	leaq	stderr(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	stderr(%rip), %rsi
	movl	$10, %edi
	call	fputc@PLT
.LVL28:
.L7:
	.loc 4 100 10 view .LVU112
.LBE255:
.LBE254:
	.loc 1 230 5 is_stmt 1 discriminator 1 view .LVU113
	.loc 1 232 3 discriminator 1 view .LVU114
	.loc 1 232 7 is_stmt 0 discriminator 1 view .LVU115
	// R5
	leaq	8(%rsp), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	8(%rsp), %rcx
	// R5
	leaq	4(%rsp), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movl	4(%rsp), %r8d
	// R5
	leaq	32(%rsp), %rdx
	// R5
	leaq	ctx(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	ctx(%rip), %rdi
	movq	%rcx, %rsi
	// arg 1
	cmp		%r15, %rdi
	jg		.+7
	jmp		trap
	// arg 2
	movq	%rsi, %rbx
	cmp		%r15, %rbx
	jg		.+30
	cmp		%r13, %rbx
	jl		.+15
	addq	%r8, %rbx
	cmp		%r14, %rbx
	jl		.+17
	jmp		trap
	cmp		%r12, %rbx
	jl		.+7
	jmp		trap
	// arg 3
	cmp		%r15, %rdx
	jg		.+7
	jmp		trap
	// arg 4
	movq	%rcx, %rbx
	cmp		%r15, %rbx
	jg		.+30
	cmp		%r13, %rbx
	jl		.+15
	addq	%r8, %rbx
	cmp		%r14, %rbx
	jl		.+17
	jmp		trap
	cmp		%r12, %rbx
	jl		.+7
	jmp		trap
	call	EVP_EncryptUpdate@PLT
.LVL29:
	.loc 1 232 6 discriminator 1 view .LVU116
	cmpl	$1, %eax
	je	.L8
	.loc 1 233 5 is_stmt 1 view .LVU117
	.loc 1 233 5 view .LVU118
.LVL30:
.LBB256:
.LBI256:
	.loc 4 98 1 view .LVU119
.LBB257:
	.loc 4 100 3 view .LVU120
	.loc 4 100 10 is_stmt 0 view .LVU121
	// R5
	leaq	stderr(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	stderr(%rip), %rdi
	movl	$233, %r9d
	xorl	%eax, %eax
	leaq	__func__.11046(%rip), %r8
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	movl	$1, %esi
	call	__fprintf_chk@PLT
.LVL31:
	.loc 4 100 10 view .LVU122
.LBE257:
.LBE256:
	.loc 1 233 5 is_stmt 1 view .LVU123
.LBB258:
.LBI258:
	.loc 4 98 1 view .LVU124
.LBB259:
	.loc 4 100 3 view .LVU125
	.loc 4 100 10 is_stmt 0 view .LVU126
	movl	$1, %esi
	movl	$24, %edx
	// R5
	leaq	stderr(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	stderr(%rip), %rcx
	leaq	.LC4(%rip), %rdi
	call	fwrite@PLT
.LVL32:
	.loc 4 100 10 view .LVU127
.LBE259:
.LBE258:
	.loc 1 233 5 is_stmt 1 view .LVU128
.LBB260:
.LBI260:
	.loc 4 98 1 view .LVU129
.LBB261:
	.loc 4 100 3 view .LVU130
	.loc 4 100 10 is_stmt 0 view .LVU131
	// R5
	leaq	stderr(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	stderr(%rip), %rsi
	movl	$10, %edi
	call	fputc@PLT
.LVL33:
.L8:
	.loc 4 100 10 view .LVU132
.LBE261:
.LBE260:
	.loc 1 233 5 is_stmt 1 discriminator 1 view .LVU133
	.loc 1 235 3 discriminator 1 view .LVU134
	.loc 1 235 7 is_stmt 0 discriminator 1 view .LVU135
	// R5
	leaq	ctx(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	ctx(%rip), %rdi
	// R5
	leaq	32(%rsp), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movslq	32(%rsp), %rsi
	leaq	36(%rsp), %rdx
	.loc 1 235 36 discriminator 1 view .LVU136
	// R5
	leaq	8(%rsp), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	addq	8(%rsp), %rsi
	.loc 1 235 7 discriminator 1 view .LVU137
	// arg 1
	cmp		%r15, %rdi
	jg		.+7
	jmp		trap
	// arg 2
	movq	%rsi, %rbx
	cmp		%r15, %rbx
	jg		.+31
	cmp		%r13, %rbx
	jl		.+16
	addq	$16, %rbx
	cmp		%r14, %rbx
	jl		.+17
	jmp		trap
	cmp		%r12, %rbx
	jl		.+7
	jmp		trap
	// arg 3
	cmp		%r15, %rdx
	jg		.+7
	jmp		trap
	call	EVP_EncryptFinal_ex@PLT
.LVL34:
	.loc 1 235 6 discriminator 1 view .LVU138
	cmpl	$1, %eax
	je	.L9
	.loc 1 236 5 is_stmt 1 view .LVU139
	.loc 1 236 5 view .LVU140
.LVL35:
.LBB262:
.LBI262:
	.loc 4 98 1 view .LVU141
.LBB263:
	.loc 4 100 3 view .LVU142
	.loc 4 100 10 is_stmt 0 view .LVU143
	// R5
	leaq	stderr(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	stderr(%rip), %rdi
	movl	$236, %r9d
	xorl	%eax, %eax
	leaq	__func__.11046(%rip), %r8
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	movl	$1, %esi
	call	__fprintf_chk@PLT
.LVL36:
	.loc 4 100 10 view .LVU144
.LBE263:
.LBE262:
	.loc 1 236 5 is_stmt 1 view .LVU145
.LBB264:
.LBI264:
	.loc 4 98 1 view .LVU146
.LBB265:
	.loc 4 100 3 view .LVU147
	.loc 4 100 10 is_stmt 0 view .LVU148
	movl	$1, %esi
	movl	$26, %edx
	// R5
	leaq	stderr(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	stderr(%rip), %rcx
	leaq	.LC5(%rip), %rdi
	call	fwrite@PLT
.LVL37:
	.loc 4 100 10 view .LVU149
.LBE265:
.LBE264:
	.loc 1 236 5 is_stmt 1 view .LVU150
.LBB266:
.LBI266:
	.loc 4 98 1 view .LVU151
.LBB267:
	.loc 4 100 3 view .LVU152
	.loc 4 100 10 is_stmt 0 view .LVU153
	// R5
	leaq	stderr(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	stderr(%rip), %rsi
	movl	$10, %edi
	call	fputc@PLT
.LVL38:
.L9:
	.loc 4 100 10 view .LVU154
.LBE267:
.LBE266:
	.loc 1 236 5 is_stmt 1 discriminator 1 view .LVU155
	.loc 1 238 3 discriminator 1 view .LVU156
	.loc 1 238 7 is_stmt 0 discriminator 1 view .LVU157
	// R5
	leaq	tag_len(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movl	tag_len(%rip), %edx
	// R5
	leaq	ctx(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	ctx(%rip), %rdi
	movl	$16, %esi
	leaq	tag(%rip), %rcx
	// arg 1
	cmp		%r15, %rdi
	jg		.+7
	jmp		trap
	// arg 4
	cmp		%r15, %rcx
	jg		.+7
	jmp		trap
	call	EVP_CIPHER_CTX_ctrl@PLT
.LVL39:
	.loc 1 238 6 discriminator 1 view .LVU158
	cmpl	$1, %eax
	je	.L10
	.loc 1 239 5 is_stmt 1 view .LVU159
	.loc 1 239 5 view .LVU160
.LVL40:
.LBB268:
.LBI268:
	.loc 4 98 1 view .LVU161
.LBB269:
	.loc 4 100 3 view .LVU162
	.loc 4 100 10 is_stmt 0 view .LVU163
	// R5
	leaq	stderr(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	stderr(%rip), %rdi
	movl	$239, %r9d
	xorl	%eax, %eax
	leaq	__func__.11046(%rip), %r8
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	movl	$1, %esi
	call	__fprintf_chk@PLT
.LVL41:
	.loc 4 100 10 view .LVU164
.LBE269:
.LBE268:
	.loc 1 239 5 is_stmt 1 view .LVU165
.LBB270:
.LBI270:
	.loc 4 98 1 view .LVU166
.LBB271:
	.loc 4 100 3 view .LVU167
	.loc 4 100 10 is_stmt 0 view .LVU168
	movl	$1, %esi
	movl	$21, %edx
	// R5
	leaq	stderr(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	stderr(%rip), %rcx
	leaq	.LC6(%rip), %rdi
	call	fwrite@PLT
.LVL42:
	.loc 4 100 10 view .LVU169
.LBE271:
.LBE270:
	.loc 1 239 5 is_stmt 1 view .LVU170
.LBB272:
.LBI272:
	.loc 4 98 1 view .LVU171
.LBB273:
	.loc 4 100 3 view .LVU172
	.loc 4 100 10 is_stmt 0 view .LVU173
	// R5
	leaq	stderr(%rip), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	stderr(%rip), %rsi
	movl	$10, %edi
	call	fputc@PLT
.LVL43:
.L10:
	.loc 4 100 10 view .LVU174
.LBE273:
.LBE272:
	.loc 1 239 5 is_stmt 1 discriminator 1 view .LVU175
	.loc 1 243 3 discriminator 1 view .LVU176
	.loc 1 244 3 discriminator 1 view .LVU177
	.loc 1 246 3 discriminator 1 view .LVU178
	.loc 1 244 25 is_stmt 0 discriminator 1 view .LVU179
	// R5
	leaq	36(%rsp), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movl	36(%rsp), %edx
	// R5
	leaq	32(%rsp), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	addl	32(%rsp), %edx
	.loc 1 244 61 discriminator 1 view .LVU180
	leal	34(%rdx), %eax
	// R5
	leaq	4(%rsp), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movl	%eax, 4(%rsp)
.LVL44:
	.loc 1 246 3 discriminator 1 view .LVU181
#APP
# 246 "u_openssl_vpn.c" 1
	# BEGIN_INTERESTING_SECTION
# 0 "" 2
	.loc 1 247 3 is_stmt 1 discriminator 1 view .LVU182
.LVL45:
#NO_APP
.LBB274:
.LBI274:
	.loc 4 105 1 discriminator 1 view .LVU183
.LBB275:
	.loc 4 107 3 discriminator 1 view .LVU184
	.loc 4 107 10 is_stmt 0 discriminator 1 view .LVU185
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
.LVL46:
	.loc 4 107 10 discriminator 1 view .LVU186
.LBE275:
.LBE274:
	.loc 1 248 3 is_stmt 1 discriminator 1 view .LVU187
#APP
# 248 "u_openssl_vpn.c" 1
	# END_INTERESTING_SECTION
# 0 "" 2
	.loc 1 250 3 discriminator 1 view .LVU188
	.loc 1 250 10 is_stmt 0 discriminator 1 view .LVU189
#NO_APP
	// omit?
	// R5
	leaq	4(%rsp), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movl	4(%rsp), %edx
	movq	%rbp, %rax
.LVL47:
.L4:
	.loc 1 251 1 view .LVU190
	// R5
	leaq	40(%rsp), %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	movq	40(%rsp), %rdi
	RDFSBASE	%rbx
	add		$40, %rbx
	cmp		%r15, %rbx
	jg		.+7
	jmp		trap
	xorq	%fs:40, %rdi
	jne	.L29
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.LVL48:
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	.loc 1 172 5 is_stmt 1 view .LVU191
	.loc 1 173 5 view .LVU192
	.loc 1 207 3 view .LVU193
	.loc 1 208 3 view .LVU194
	.loc 1 209 5 view .LVU195
	.loc 1 209 13 is_stmt 0 view .LVU196
	leaq	-34(%rdi), %rbp
.LVL49:
	.loc 1 209 13 view .LVU197
	jmp	.L5
.LVL50:
.L29:
	.loc 1 251 1 view .LVU198
	call	__stack_chk_fail@PLT
.LVL51:
	.cfi_endproc
.LFE382:
	.size	nfc_cb, .-nfc_cb
	.section	.rodata.str1.1
.LC8:
	.string	"%x:%x:%x:%x:%x:%x"
	.text
	.p2align 4
	.globl	convert_mac
	.type	convert_mac, @function
convert_mac:
.LVL52:
.LFB376:
	.loc 1 31 67 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 31 67 is_stmt 0 view .LVU200
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp
	.loc 1 33 14 view .LVU201
	leaq	.LC8(%rip), %rsi
.LVL53:
	.loc 1 31 67 view .LVU202
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 31 67 view .LVU203
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 32 5 is_stmt 1 view .LVU204
	.loc 1 33 5 view .LVU205
	.loc 1 33 14 is_stmt 0 view .LVU206
	leaq	20(%rsp), %rax
	movq	%rsp, %rdx
	leaq	4(%rsp), %rcx
	pushq	%rax
	.cfi_def_cfa_offset 56
	leaq	24(%rsp), %rax
	pushq	%rax
	.cfi_def_cfa_offset 64
	xorl	%eax, %eax
	leaq	28(%rsp), %r9
	leaq	24(%rsp), %r8
	call	__isoc99_sscanf@PLT
.LVL54:
	.loc 1 33 8 view .LVU207
	popq	%rdx
	.cfi_def_cfa_offset 56
	popq	%rcx
	.cfi_def_cfa_offset 48
	cmpl	$6, %eax
	jne	.L33
.LVL55:
.LBB277:
	.loc 1 35 13 is_stmt 1 view .LVU208
	.loc 1 35 28 is_stmt 0 view .LVU209
	movl	(%rsp), %eax
	movb	%al, 0(%rbp)
	.loc 1 34 32 is_stmt 1 view .LVU210
.LVL56:
	.loc 1 34 25 view .LVU211
	.loc 1 35 13 view .LVU212
	.loc 1 35 28 is_stmt 0 view .LVU213
	movl	4(%rsp), %eax
	movb	%al, 1(%rbp)
	.loc 1 34 32 is_stmt 1 view .LVU214
.LVL57:
	.loc 1 34 25 view .LVU215
	.loc 1 35 13 view .LVU216
	.loc 1 35 28 is_stmt 0 view .LVU217
	movl	8(%rsp), %eax
	movb	%al, 2(%rbp)
	.loc 1 34 32 is_stmt 1 view .LVU218
.LVL58:
	.loc 1 34 25 view .LVU219
	.loc 1 35 13 view .LVU220
	.loc 1 35 28 is_stmt 0 view .LVU221
	movl	12(%rsp), %eax
	movb	%al, 3(%rbp)
	.loc 1 34 32 is_stmt 1 view .LVU222
.LVL59:
	.loc 1 34 25 view .LVU223
	.loc 1 35 13 view .LVU224
	.loc 1 35 28 is_stmt 0 view .LVU225
	movl	16(%rsp), %eax
	movb	%al, 4(%rbp)
	.loc 1 34 32 is_stmt 1 view .LVU226
.LVL60:
	.loc 1 34 25 view .LVU227
	.loc 1 35 13 view .LVU228
	.loc 1 35 28 is_stmt 0 view .LVU229
	movl	20(%rsp), %eax
	movb	%al, 5(%rbp)
	.loc 1 34 32 is_stmt 1 view .LVU230
.LVL61:
	.loc 1 34 25 view .LVU231
.LBE277:
	.loc 1 37 16 is_stmt 0 view .LVU232
	xorl	%eax, %eax
.LVL62:
.L30:
	.loc 1 40 1 view .LVU233
	movq	24(%rsp), %rdx
	xorq	%fs:40, %rdx
	jne	.L35
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL63:
	.loc 1 40 1 view .LVU234
	ret
.LVL64:
	.p2align 4,,10
	.p2align 3
.L33:
	.cfi_restore_state
	.loc 1 39 12 view .LVU235
	movl	$-1, %eax
	jmp	.L30
.L35:
	.loc 1 40 1 view .LVU236
	call	__stack_chk_fail@PLT
.LVL65:
	.cfi_endproc
.LFE376:
	.size	convert_mac, .-convert_mac
	.p2align 4
	.globl	convert_ip
	.type	convert_ip, @function
convert_ip:
.LVL66:
.LFB377:
	.loc 1 42 44 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 42 44 is_stmt 0 view .LVU238
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 42 44 view .LVU239
	movq	%rdi, %rsi
	.loc 1 44 9 view .LVU240
	movl	$2, %edi
.LVL67:
	.loc 1 42 44 view .LVU241
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	.loc 1 43 5 is_stmt 1 view .LVU242
	.loc 1 44 5 view .LVU243
	.loc 1 44 9 is_stmt 0 view .LVU244
	leaq	4(%rsp), %rdx
	call	inet_pton@PLT
.LVL68:
	.loc 1 47 16 view .LVU245
	cmpl	$1, %eax
	movl	$0, %eax
	cmove	4(%rsp), %eax
	.loc 1 48 1 view .LVU246
	movq	8(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L41
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L41:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL69:
	.cfi_endproc
.LFE377:
	.size	convert_ip, .-convert_ip
	.section	.rodata.str1.1
.LC9:
	.string	"80:61:5f:06:94:c4"
.LC10:
	.string	"cannot set source_mac"
.LC11:
	.string	"00:25:90:7e:45:da"
.LC12:
	.string	"10.0.0.109"
.LC13:
	.string	"cannot set source ip"
.LC14:
	.string	"10.0.1.201"
.LC15:
	.string	"cannot set dest ip"
.LC16:
	.string	"0123456789abcdef"
.LC17:
	.string	"Failed to allocate IV"
.LC18:
	.string	"Failed to generate random IV"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC19:
	.string	"Failed to create ENV_CIPHER_CTX"
	.section	.rodata.str1.1
.LC20:
	.string	"EVP_EncrptInit_ex failed"
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"Failed to set IV length for GCM"
	.align 8
.LC22:
	.string	"Failed to initialize key and IV for GCM"
	.text
	.p2align 4
	.globl	setup_new_hdr
	.type	setup_new_hdr, @function
setup_new_hdr:
.LFB379:
	.loc 1 69 1 is_stmt 1 view -0
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
.LBB348:
.LBB349:
	.loc 1 33 14 is_stmt 0 view .LVU248
	leaq	.LC9(%rip), %rdi
	leaq	.LC8(%rip), %rsi
.LBE349:
.LBE348:
	.loc 1 69 1 view .LVU249
	subq	$96, %rsp
	.cfi_def_cfa_offset 112
	.loc 1 69 1 view .LVU250
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	.loc 1 71 3 is_stmt 1 view .LVU251
.LVL70:
	.loc 1 72 3 view .LVU252
	.loc 1 77 3 view .LVU253
	.loc 1 78 3 view .LVU254
	.loc 1 80 3 view .LVU255
.LBB356:
.LBI348:
	.loc 1 31 5 view .LVU256
.LBB353:
	.loc 1 32 5 view .LVU257
	.loc 1 33 5 view .LVU258
	.loc 1 33 14 is_stmt 0 view .LVU259
	leaq	84(%rsp), %r10
	leaq	76(%rsp), %r9
	leaq	68(%rsp), %rcx
	leaq	72(%rsp), %r8
	leaq	64(%rsp), %rbp
	pushq	%r10
	.cfi_def_cfa_offset 120
	movq	%rbp, %rdx
	leaq	88(%rsp), %r11
	movq	%r10, 48(%rsp)
	pushq	%r11
	.cfi_def_cfa_offset 128
	movq	%r11, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%r8, 32(%rsp)
	call	__isoc99_sscanf@PLT
.LVL71:
	.loc 1 33 8 view .LVU260
	popq	%rdi
	.cfi_def_cfa_offset 120
	popq	%r8
	.cfi_def_cfa_offset 112
	cmpl	$6, %eax
	movq	8(%rsp), %rcx
	movq	16(%rsp), %r8
	movq	24(%rsp), %r9
	movq	32(%rsp), %r11
	movq	40(%rsp), %r10
	jne	.L62
.LVL72:
.LBB350:
	.loc 1 35 13 is_stmt 1 view .LVU261
	.loc 1 35 28 is_stmt 0 view .LVU262
	movl	64(%rsp), %eax
.LBE350:
.LBE353:
.LBE356:
.LBB357:
.LBB358:
	.loc 1 33 14 view .LVU263
	leaq	.LC8(%rip), %rsi
	movq	%rbp, %rdx
	leaq	.LC11(%rip), %rdi
.LBE358:
.LBE357:
.LBB364:
.LBB354:
.LBB351:
	.loc 1 35 28 view .LVU264
	movb	%al, 6+new_eth_body(%rip)
	.loc 1 34 32 is_stmt 1 view .LVU265
.LVL73:
	.loc 1 34 25 view .LVU266
	.loc 1 35 13 view .LVU267
	.loc 1 35 28 is_stmt 0 view .LVU268
	movl	68(%rsp), %eax
	movb	%al, 7+new_eth_body(%rip)
	.loc 1 34 32 is_stmt 1 view .LVU269
.LVL74:
	.loc 1 34 25 view .LVU270
	.loc 1 35 13 view .LVU271
	.loc 1 35 28 is_stmt 0 view .LVU272
	movl	72(%rsp), %eax
	movb	%al, 8+new_eth_body(%rip)
	.loc 1 34 32 is_stmt 1 view .LVU273
.LVL75:
	.loc 1 34 25 view .LVU274
	.loc 1 35 13 view .LVU275
	.loc 1 35 28 is_stmt 0 view .LVU276
	movl	76(%rsp), %eax
	movb	%al, 9+new_eth_body(%rip)
	.loc 1 34 32 is_stmt 1 view .LVU277
.LVL76:
	.loc 1 34 25 view .LVU278
	.loc 1 35 13 view .LVU279
	.loc 1 35 28 is_stmt 0 view .LVU280
	movl	80(%rsp), %eax
	movb	%al, 10+new_eth_body(%rip)
	.loc 1 34 32 is_stmt 1 view .LVU281
.LVL77:
	.loc 1 34 25 view .LVU282
	.loc 1 35 13 view .LVU283
	.loc 1 35 28 is_stmt 0 view .LVU284
	movl	84(%rsp), %eax
.LBE351:
.LBE354:
.LBE364:
.LBB365:
.LBB361:
	.loc 1 33 14 view .LVU285
	pushq	%r10
	.cfi_def_cfa_offset 120
	pushq	%r11
	.cfi_def_cfa_offset 128
.LBE361:
.LBE365:
.LBB366:
.LBB355:
.LBB352:
	.loc 1 35 28 view .LVU286
	movb	%al, 11+new_eth_body(%rip)
	.loc 1 34 32 is_stmt 1 view .LVU287
.LVL78:
	.loc 1 34 25 view .LVU288
	.loc 1 34 25 is_stmt 0 view .LVU289
.LBE352:
.LBE355:
.LBE366:
	.loc 1 84 3 is_stmt 1 view .LVU290
.LBB367:
.LBI357:
	.loc 1 31 5 view .LVU291
.LBB362:
	.loc 1 32 5 view .LVU292
	.loc 1 33 5 view .LVU293
	.loc 1 33 14 is_stmt 0 view .LVU294
	xorl	%eax, %eax
	call	__isoc99_sscanf@PLT
.LVL79:
	.loc 1 33 8 view .LVU295
	popq	%rcx
	.cfi_def_cfa_offset 120
	popq	%rsi
	.cfi_def_cfa_offset 112
	cmpl	$6, %eax
	jne	.L63
.LVL80:
.LBB359:
	.loc 1 35 13 is_stmt 1 view .LVU296
	.loc 1 35 28 is_stmt 0 view .LVU297
	movl	64(%rsp), %eax
.LBE359:
.LBE362:
.LBE367:
	.loc 1 91 19 view .LVU298
	movl	$69, %edx
.LBB368:
.LBB369:
	.loc 1 44 9 view .LVU299
	leaq	60(%rsp), %rbp
	leaq	.LC12(%rip), %rsi
.LBE369:
.LBE368:
	.loc 1 91 19 view .LVU300
	movw	%dx, new_ip_body(%rip)
.LBB372:
.LBB370:
	.loc 1 44 9 view .LVU301
	movl	$2, %edi
	movq	%rbp, %rdx
.LBE370:
.LBE372:
.LBB373:
.LBB363:
.LBB360:
	.loc 1 35 28 view .LVU302
	movb	%al, new_eth_body(%rip)
	.loc 1 34 32 is_stmt 1 view .LVU303
.LVL81:
	.loc 1 34 25 view .LVU304
	.loc 1 35 13 view .LVU305
	.loc 1 35 28 is_stmt 0 view .LVU306
	movl	68(%rsp), %eax
	movb	%al, 1+new_eth_body(%rip)
	.loc 1 34 32 is_stmt 1 view .LVU307
.LVL82:
	.loc 1 34 25 view .LVU308
	.loc 1 35 13 view .LVU309
	.loc 1 35 28 is_stmt 0 view .LVU310
	movl	72(%rsp), %eax
	movb	%al, 2+new_eth_body(%rip)
	.loc 1 34 32 is_stmt 1 view .LVU311
.LVL83:
	.loc 1 34 25 view .LVU312
	.loc 1 35 13 view .LVU313
	.loc 1 35 28 is_stmt 0 view .LVU314
	movl	76(%rsp), %eax
	movb	%al, 3+new_eth_body(%rip)
	.loc 1 34 32 is_stmt 1 view .LVU315
.LVL84:
	.loc 1 34 25 view .LVU316
	.loc 1 35 13 view .LVU317
	.loc 1 35 28 is_stmt 0 view .LVU318
	movl	80(%rsp), %eax
	movb	%al, 4+new_eth_body(%rip)
	.loc 1 34 32 is_stmt 1 view .LVU319
.LVL85:
	.loc 1 34 25 view .LVU320
	.loc 1 35 13 view .LVU321
	.loc 1 35 28 is_stmt 0 view .LVU322
	movl	84(%rsp), %eax
	movb	%al, 5+new_eth_body(%rip)
	.loc 1 34 32 is_stmt 1 view .LVU323
.LVL86:
	.loc 1 34 25 view .LVU324
	.loc 1 34 25 is_stmt 0 view .LVU325
.LBE360:
.LBE363:
.LBE373:
	.loc 1 88 3 is_stmt 1 view .LVU326
	.loc 2 37 3 view .LVU327
	.loc 1 88 24 is_stmt 0 view .LVU328
	movl	$8, %eax
	movw	%ax, 12+new_eth_body(%rip)
	.loc 1 90 3 is_stmt 1 view .LVU329
	.loc 1 91 3 view .LVU330
	.loc 1 92 3 view .LVU331
	.loc 1 94 3 view .LVU332
.LVL87:
	.loc 2 37 3 view .LVU333
	.loc 1 95 3 view .LVU334
	.loc 2 37 3 view .LVU335
	.loc 1 96 3 view .LVU336
	.loc 1 97 3 view .LVU337
	.loc 1 98 3 view .LVU338
	.loc 1 94 18 is_stmt 0 view .LVU339
	movabsq	$18966579773440, %rax
	movq	%rax, 4+new_ip_body(%rip)
	.loc 1 99 3 is_stmt 1 view .LVU340
.LVL88:
.LBB374:
.LBI368:
	.loc 1 42 10 view .LVU341
.LBB371:
	.loc 1 43 5 view .LVU342
	.loc 1 44 5 view .LVU343
	.loc 1 44 9 is_stmt 0 view .LVU344
	call	inet_pton@PLT
.LVL89:
	.loc 1 44 8 view .LVU345
	cmpl	$1, %eax
	jne	.L64
	.loc 1 47 5 is_stmt 1 view .LVU346
	.loc 1 47 16 is_stmt 0 view .LVU347
	movl	60(%rsp), %eax
.LVL90:
	.loc 1 47 16 view .LVU348
.LBE371:
.LBE374:
	.loc 1 99 21 view .LVU349
	movl	%eax, 12+new_ip_body(%rip)
	.loc 1 100 3 is_stmt 1 view .LVU350
	.loc 1 100 6 is_stmt 0 view .LVU351
	testl	%eax, %eax
	je	.L47
	.loc 1 104 3 is_stmt 1 view .LVU352
.LVL91:
.LBB375:
.LBI375:
	.loc 1 42 10 view .LVU353
.LBB376:
	.loc 1 43 5 view .LVU354
	.loc 1 44 5 view .LVU355
	.loc 1 44 9 is_stmt 0 view .LVU356
	movq	%rbp, %rdx
	leaq	.LC14(%rip), %rsi
	movl	$2, %edi
	call	inet_pton@PLT
.LVL92:
	.loc 1 44 8 view .LVU357
	cmpl	$1, %eax
	je	.L49
.LVL93:
	.loc 1 44 8 view .LVU358
.LBE376:
.LBE375:
	.loc 1 104 21 view .LVU359
	movl	$0, 16+new_ip_body(%rip)
	.loc 1 105 3 is_stmt 1 view .LVU360
.L50:
	.loc 1 106 5 view .LVU361
	.loc 1 106 5 view .LVU362
.LVL94:
.LBB378:
.LBI378:
	.loc 4 98 1 view .LVU363
.LBB379:
	.loc 4 100 3 view .LVU364
	.loc 4 100 10 is_stmt 0 view .LVU365
	movq	stderr(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	movl	$106, %r9d
	leaq	__func__.11012(%rip), %r8
	call	__fprintf_chk@PLT
.LVL95:
	.loc 4 100 10 view .LVU366
.LBE379:
.LBE378:
	.loc 1 106 5 is_stmt 1 view .LVU367
.LBB380:
.LBI380:
	.loc 4 98 1 view .LVU368
.LBB381:
	.loc 4 100 3 view .LVU369
	.loc 4 100 10 is_stmt 0 view .LVU370
	movl	$18, %edx
	movq	stderr(%rip), %rcx
	movl	$1, %esi
	leaq	.LC15(%rip), %rdi
.LVL96:
	.p2align 4,,10
	.p2align 3
.L60:
	.loc 4 100 10 view .LVU371
.LBE381:
.LBE380:
.LBB382:
.LBB383:
	call	fwrite@PLT
.LVL97:
.LBE383:
.LBE382:
	.loc 1 135 5 is_stmt 1 view .LVU372
.LBB385:
.LBI385:
	.loc 4 98 1 view .LVU373
.LBB386:
	.loc 4 100 3 view .LVU374
	.loc 4 100 10 is_stmt 0 view .LVU375
	movq	stderr(%rip), %rsi
	movl	$10, %edi
	call	fputc@PLT
.LVL98:
	.loc 4 100 10 view .LVU376
.LBE386:
.LBE385:
	.loc 1 135 5 is_stmt 1 view .LVU377
	.loc 1 136 5 view .LVU378
	.loc 1 136 12 is_stmt 0 view .LVU379
	movl	$-1, %eax
.L42:
	.loc 1 139 1 view .LVU380
	movq	88(%rsp), %rdx
	xorq	%fs:40, %rdx
	jne	.L65
	addq	$96, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.LVL99:
	.p2align 4,,10
	.p2align 3
.L64:
	.cfi_restore_state
	.loc 1 99 21 view .LVU381
	movl	$0, 12+new_ip_body(%rip)
	.loc 1 100 3 is_stmt 1 view .LVU382
.L47:
	.loc 1 101 5 view .LVU383
	.loc 1 101 5 view .LVU384
.LVL100:
.LBB387:
.LBI387:
	.loc 4 98 1 view .LVU385
.LBB388:
	.loc 4 100 3 view .LVU386
	.loc 4 100 10 is_stmt 0 view .LVU387
	movq	stderr(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	movl	$101, %r9d
	leaq	__func__.11012(%rip), %r8
	call	__fprintf_chk@PLT
.LVL101:
	.loc 4 100 10 view .LVU388
.LBE388:
.LBE387:
	.loc 1 101 5 is_stmt 1 view .LVU389
.LBB389:
.LBI389:
	.loc 4 98 1 view .LVU390
.LBB390:
	.loc 4 100 3 view .LVU391
	.loc 4 100 10 is_stmt 0 view .LVU392
	movl	$20, %edx
	movq	stderr(%rip), %rcx
	movl	$1, %esi
	leaq	.LC13(%rip), %rdi
	jmp	.L60
.LVL102:
	.p2align 4,,10
	.p2align 3
.L49:
	.loc 4 100 10 view .LVU393
.LBE390:
.LBE389:
.LBB391:
.LBB377:
	.loc 1 47 5 is_stmt 1 view .LVU394
	.loc 1 47 16 is_stmt 0 view .LVU395
	movl	60(%rsp), %eax
.LVL103:
	.loc 1 47 16 view .LVU396
.LBE377:
.LBE391:
	.loc 1 104 21 view .LVU397
	movl	%eax, 16+new_ip_body(%rip)
	.loc 1 105 3 is_stmt 1 view .LVU398
	.loc 1 105 6 is_stmt 0 view .LVU399
	testl	%eax, %eax
	je	.L50
	.loc 1 110 3 is_stmt 1 view .LVU400
	.loc 1 112 25 is_stmt 0 view .LVU401
	movslq	iv_len(%rip), %rdi
	.loc 1 110 7 view .LVU402
	leaq	.LC16(%rip), %rax
	movq	%rax, key(%rip)
	.loc 1 112 3 is_stmt 1 view .LVU403
	.loc 1 112 25 is_stmt 0 view .LVU404
	movq	%rdi, %rbp
	call	malloc@PLT
.LVL104:
	.loc 1 112 6 view .LVU405
	movq	%rax, iv(%rip)
	.loc 1 113 3 is_stmt 1 view .LVU406
	.loc 1 112 25 is_stmt 0 view .LVU407
	movq	%rax, %rdi
	.loc 1 113 6 view .LVU408
	testq	%rax, %rax
	je	.L66
	.loc 1 117 3 is_stmt 1 view .LVU409
	.loc 1 117 7 is_stmt 0 view .LVU410
	movl	%ebp, %esi
	call	RAND_bytes@PLT
.LVL105:
	.loc 1 117 6 view .LVU411
	cmpl	$1, %eax
	jne	.L67
	.loc 1 121 3 is_stmt 1 view .LVU412
	.loc 1 121 9 is_stmt 0 view .LVU413
	call	EVP_CIPHER_CTX_new@PLT
.LVL106:
	.loc 1 121 7 view .LVU414
	movq	%rax, ctx(%rip)
	.loc 1 122 3 is_stmt 1 view .LVU415
	.loc 1 122 6 is_stmt 0 view .LVU416
	testq	%rax, %rax
	je	.L68
	.loc 1 126 3 is_stmt 1 view .LVU417
	.loc 1 126 7 is_stmt 0 view .LVU418
	call	EVP_aes_128_gcm@PLT
.LVL107:
	movq	ctx(%rip), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%rax, %rsi
	call	EVP_EncryptInit_ex@PLT
.LVL108:
	.loc 1 126 6 view .LVU419
	cmpl	$1, %eax
	jne	.L69
	.loc 1 130 3 is_stmt 1 view .LVU420
	.loc 1 130 7 is_stmt 0 view .LVU421
	movl	iv_len(%rip), %edx
	movq	ctx(%rip), %rdi
	xorl	%ecx, %ecx
	movl	$9, %esi
	call	EVP_CIPHER_CTX_ctrl@PLT
.LVL109:
	.loc 1 130 6 view .LVU422
	cmpl	$1, %eax
	jne	.L70
	.loc 1 134 3 is_stmt 1 view .LVU423
	.loc 1 134 7 is_stmt 0 view .LVU424
	movq	iv(%rip), %r8
	movq	key(%rip), %rcx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	ctx(%rip), %rdi
	call	EVP_EncryptInit_ex@PLT
.LVL110:
	.loc 1 134 6 view .LVU425
	cmpl	$1, %eax
	jne	.L71
	.loc 1 138 10 view .LVU426
	xorl	%eax, %eax
	jmp	.L42
.LVL111:
	.p2align 4,,10
	.p2align 3
.L62:
	.loc 1 81 5 is_stmt 1 view .LVU427
	.loc 1 81 5 view .LVU428
.LBB392:
.LBI392:
	.loc 4 98 1 view .LVU429
.LBB393:
	.loc 4 100 3 view .LVU430
	.loc 4 100 10 is_stmt 0 view .LVU431
	movl	$81, %r9d
.LVL112:
.L61:
	.loc 4 100 10 view .LVU432
.LBE393:
.LBE392:
.LBB394:
.LBB395:
	movq	stderr(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	movl	$1, %esi
	leaq	__func__.11012(%rip), %r8
	call	__fprintf_chk@PLT
.LVL113:
.LBE395:
.LBE394:
	.loc 1 85 5 is_stmt 1 view .LVU433
.LBB397:
.LBI397:
	.loc 4 98 1 view .LVU434
.LBB398:
	.loc 4 100 3 view .LVU435
	.loc 4 100 10 is_stmt 0 view .LVU436
	movl	$21, %edx
	movq	stderr(%rip), %rcx
	movl	$1, %esi
	leaq	.LC10(%rip), %rdi
	jmp	.L60
.LVL114:
	.p2align 4,,10
	.p2align 3
.L63:
	.loc 4 100 10 view .LVU437
.LBE398:
.LBE397:
	.loc 1 85 5 is_stmt 1 view .LVU438
	.loc 1 85 5 view .LVU439
.LBB399:
.LBI394:
	.loc 4 98 1 view .LVU440
.LBB396:
	.loc 4 100 3 view .LVU441
	.loc 4 100 10 is_stmt 0 view .LVU442
	movl	$85, %r9d
	jmp	.L61
.LVL115:
	.p2align 4,,10
	.p2align 3
.L67:
	.loc 4 100 10 view .LVU443
.LBE396:
.LBE399:
	.loc 1 118 5 is_stmt 1 view .LVU444
	.loc 1 118 5 view .LVU445
.LBB400:
.LBI400:
	.loc 4 98 1 view .LVU446
.LBB401:
	.loc 4 100 3 view .LVU447
	.loc 4 100 10 is_stmt 0 view .LVU448
	movq	stderr(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	movl	$118, %r9d
	leaq	__func__.11012(%rip), %r8
	call	__fprintf_chk@PLT
.LVL116:
	.loc 4 100 10 view .LVU449
.LBE401:
.LBE400:
	.loc 1 118 5 is_stmt 1 view .LVU450
.LBB402:
.LBI402:
	.loc 4 98 1 view .LVU451
.LBB403:
	.loc 4 100 3 view .LVU452
	.loc 4 100 10 is_stmt 0 view .LVU453
	movl	$28, %edx
	movq	stderr(%rip), %rcx
	movl	$1, %esi
	leaq	.LC18(%rip), %rdi
	jmp	.L60
.LVL117:
	.p2align 4,,10
	.p2align 3
.L69:
	.loc 4 100 10 view .LVU454
.LBE403:
.LBE402:
	.loc 1 127 5 is_stmt 1 view .LVU455
	.loc 1 127 5 view .LVU456
.LBB404:
.LBI404:
	.loc 4 98 1 view .LVU457
.LBB405:
	.loc 4 100 3 view .LVU458
	.loc 4 100 10 is_stmt 0 view .LVU459
	movq	stderr(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	movl	$127, %r9d
	leaq	__func__.11012(%rip), %r8
	call	__fprintf_chk@PLT
.LVL118:
	.loc 4 100 10 view .LVU460
.LBE405:
.LBE404:
	.loc 1 127 5 is_stmt 1 view .LVU461
.LBB406:
.LBI406:
	.loc 4 98 1 view .LVU462
.LBB407:
	.loc 4 100 3 view .LVU463
	.loc 4 100 10 is_stmt 0 view .LVU464
	movl	$24, %edx
	movq	stderr(%rip), %rcx
	movl	$1, %esi
	leaq	.LC20(%rip), %rdi
	jmp	.L60
.LVL119:
	.p2align 4,,10
	.p2align 3
.L70:
	.loc 4 100 10 view .LVU465
.LBE407:
.LBE406:
	.loc 1 131 5 is_stmt 1 view .LVU466
	.loc 1 131 5 view .LVU467
.LBB408:
.LBI408:
	.loc 4 98 1 view .LVU468
.LBB409:
	.loc 4 100 3 view .LVU469
	.loc 4 100 10 is_stmt 0 view .LVU470
	movq	stderr(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	movl	$131, %r9d
	leaq	__func__.11012(%rip), %r8
	call	__fprintf_chk@PLT
.LVL120:
	.loc 4 100 10 view .LVU471
.LBE409:
.LBE408:
	.loc 1 131 5 is_stmt 1 view .LVU472
.LBB410:
.LBI410:
	.loc 4 98 1 view .LVU473
.LBB411:
	.loc 4 100 3 view .LVU474
	.loc 4 100 10 is_stmt 0 view .LVU475
	movl	$31, %edx
	movq	stderr(%rip), %rcx
	movl	$1, %esi
	leaq	.LC21(%rip), %rdi
	jmp	.L60
.LVL121:
.L71:
	.loc 4 100 10 view .LVU476
.LBE411:
.LBE410:
	.loc 1 135 5 is_stmt 1 view .LVU477
	.loc 1 135 5 view .LVU478
.LBB412:
.LBI412:
	.loc 4 98 1 view .LVU479
.LBB413:
	.loc 4 100 3 view .LVU480
	.loc 4 100 10 is_stmt 0 view .LVU481
	movq	stderr(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	movl	$135, %r9d
	leaq	__func__.11012(%rip), %r8
	call	__fprintf_chk@PLT
.LVL122:
	.loc 4 100 10 view .LVU482
.LBE413:
.LBE412:
	.loc 1 135 5 is_stmt 1 view .LVU483
.LBB414:
.LBI382:
	.loc 4 98 1 view .LVU484
.LBB384:
	.loc 4 100 3 view .LVU485
	.loc 4 100 10 is_stmt 0 view .LVU486
	movl	$39, %edx
	movq	stderr(%rip), %rcx
	movl	$1, %esi
	leaq	.LC22(%rip), %rdi
	jmp	.L60
.LVL123:
.L68:
	.loc 4 100 10 view .LVU487
.LBE384:
.LBE414:
	.loc 1 123 5 is_stmt 1 view .LVU488
	.loc 1 123 5 view .LVU489
.LBB415:
.LBI415:
	.loc 4 98 1 view .LVU490
.LBB416:
	.loc 4 100 3 view .LVU491
	.loc 4 100 10 is_stmt 0 view .LVU492
	movq	stderr(%rip), %rdi
	movl	$1, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	movl	$123, %r9d
	leaq	__func__.11012(%rip), %r8
	call	__fprintf_chk@PLT
.LVL124:
	.loc 4 100 10 view .LVU493
.LBE416:
.LBE415:
	.loc 1 123 5 is_stmt 1 view .LVU494
.LBB417:
.LBI417:
	.loc 4 98 1 view .LVU495
.LBB418:
	.loc 4 100 3 view .LVU496
	.loc 4 100 10 is_stmt 0 view .LVU497
	movl	$31, %edx
	movq	stderr(%rip), %rcx
	movl	$1, %esi
	leaq	.LC19(%rip), %rdi
	jmp	.L60
.LVL125:
.L66:
	.loc 4 100 10 view .LVU498
.LBE418:
.LBE417:
	.loc 1 114 5 is_stmt 1 view .LVU499
	.loc 1 114 5 view .LVU500
.LBB419:
.LBI419:
	.loc 4 98 1 view .LVU501
.LBB420:
	.loc 4 100 3 view .LVU502
	.loc 4 100 10 is_stmt 0 view .LVU503
	movq	stderr(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	movl	$114, %r9d
	leaq	__func__.11012(%rip), %r8
	call	__fprintf_chk@PLT
.LVL126:
	.loc 4 100 10 view .LVU504
.LBE420:
.LBE419:
	.loc 1 114 5 is_stmt 1 view .LVU505
.LBB421:
.LBI421:
	.loc 4 98 1 view .LVU506
.LBB422:
	.loc 4 100 3 view .LVU507
	.loc 4 100 10 is_stmt 0 view .LVU508
	movl	$21, %edx
	movq	stderr(%rip), %rcx
	movl	$1, %esi
	leaq	.LC17(%rip), %rdi
	jmp	.L60
.LVL127:
.L65:
	.loc 4 100 10 view .LVU509
.LBE422:
.LBE421:
	.loc 1 139 1 view .LVU510
	call	__stack_chk_fail@PLT
.LVL128:
	.cfi_endproc
.LFE379:
	.size	setup_new_hdr, .-setup_new_hdr
	.section	.rodata.str1.1
.LC23:
	.string	"trap!"
	.text
	.p2align 4
	.globl	trap
	.type	trap, @function
trap:
.LFB380:
	.loc 1 141 13 is_stmt 1 view -0
	.cfi_startproc
	endbr64
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	.cfi_def_cfa_offset 8
	.loc 1 142 3 view .LVU512
.LVL129:
.LBB423:
.LBI423:
	.loc 4 105 1 view .LVU513
.LBB424:
	.loc 4 107 3 view .LVU514
	.loc 4 107 10 is_stmt 0 view .LVU515
	leaq	.LC23(%rip), %rdi
.LBE424:
.LBE423:
	.loc 1 141 13 view .LVU516
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.LBB426:
.LBB425:
	.loc 4 107 10 view .LVU517
	call	puts@PLT
.LVL130:
	.loc 4 107 10 view .LVU518
.LBE425:
.LBE426:
	.loc 1 143 3 is_stmt 1 view .LVU519
	movl	$1, %edi
	call	exit@PLT
.LVL131:
	.cfi_endproc
.LFE380:
	.size	trap, .-trap
	.section	.rodata.str1.1
.LC24:
	.string	"cannot setup new header"
.LC25:
	.string	"%s:%s:%i: debug: "
.LC26:
	.string	"Start"
.LC27:
	.string	"nfc_run: %d"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB381:
	.loc 1 146 12 view -0
	.cfi_startproc
	endbr64
	.loc 1 147 3 view .LVU521
	.loc 1 148 3 view .LVU522
	.loc 1 146 12 is_stmt 0 view .LVU523
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.loc 1 148 7 view .LVU524
	xorl	%eax, %eax
	call	setup_new_hdr
.LVL132:
	.loc 1 148 6 view .LVU525
	testl	%eax, %eax
	js	.L78
	.loc 1 152 3 is_stmt 1 view .LVU526
	.loc 1 152 3 view .LVU527
.LVL133:
.LBB427:
.LBI427:
	.loc 4 98 1 view .LVU528
.LBB428:
	.loc 4 100 3 view .LVU529
	.loc 4 100 10 is_stmt 0 view .LVU530
	movq	stderr(%rip), %rdi
	movl	$152, %r9d
	xorl	%eax, %eax
	leaq	__func__.11018(%rip), %r8
	leaq	.LC0(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	movl	$1, %esi
	call	__fprintf_chk@PLT
.LVL134:
	.loc 4 100 10 view .LVU531
.LBE428:
.LBE427:
	.loc 1 152 3 is_stmt 1 view .LVU532
.LBB429:
.LBI429:
	.loc 4 98 1 view .LVU533
.LBB430:
	.loc 4 100 3 view .LVU534
	.loc 4 100 10 is_stmt 0 view .LVU535
	movl	$5, %edx
	movq	stderr(%rip), %rcx
	movl	$1, %esi
	leaq	.LC26(%rip), %rdi
	call	fwrite@PLT
.LVL135:
	.loc 4 100 10 view .LVU536
.LBE430:
.LBE429:
	.loc 1 152 3 is_stmt 1 view .LVU537
.LBB431:
.LBI431:
	.loc 4 98 1 view .LVU538
.LBB432:
	.loc 4 100 3 view .LVU539
	.loc 4 100 10 is_stmt 0 view .LVU540
	movq	stderr(%rip), %rsi
	movl	$10, %edi
	call	fputc@PLT
.LVL136:
	.loc 4 100 10 view .LVU541
.LBE432:
.LBE431:
	.loc 1 152 3 is_stmt 1 view .LVU542
	.loc 1 153 3 view .LVU543
	call	nfc_create_poll_thread@PLT
.LVL137:
	.loc 1 154 3 view .LVU544
	.loc 1 154 9 is_stmt 0 view .LVU545
	leaq	nfc_cb(%rip), %rdi
	call	nfc_run@PLT
.LVL138:
.LBB433:
.LBB434:
	.loc 4 100 10 view .LVU546
	movl	$155, %r9d
	movq	stderr(%rip), %rdi
	leaq	__func__.11018(%rip), %r8
.LBE434:
.LBE433:
	.loc 1 154 9 view .LVU547
	movl	%eax, %ebp
.LVL139:
	.loc 1 155 3 is_stmt 1 view .LVU548
	.loc 1 155 3 view .LVU549
.LBB436:
.LBI433:
	.loc 4 98 1 view .LVU550
.LBB435:
	.loc 4 100 3 view .LVU551
	.loc 4 100 10 is_stmt 0 view .LVU552
	leaq	.LC0(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	xorl	%eax, %eax
.LVL140:
	.loc 4 100 10 view .LVU553
	movl	$1, %esi
	call	__fprintf_chk@PLT
.LVL141:
	.loc 4 100 10 view .LVU554
.LBE435:
.LBE436:
	.loc 1 155 3 is_stmt 1 view .LVU555
.LBB437:
.LBI437:
	.loc 4 98 1 view .LVU556
.LBB438:
	.loc 4 100 3 view .LVU557
	.loc 4 100 10 is_stmt 0 view .LVU558
	movq	stderr(%rip), %rdi
	movl	%ebp, %ecx
	xorl	%eax, %eax
	leaq	.LC27(%rip), %rdx
	movl	$1, %esi
	call	__fprintf_chk@PLT
.LVL142:
	.loc 4 100 10 view .LVU559
.LBE438:
.LBE437:
	.loc 1 155 3 is_stmt 1 view .LVU560
.LBB439:
.LBI439:
	.loc 4 98 1 view .LVU561
.LBB440:
	.loc 4 100 3 view .LVU562
	.loc 4 100 10 is_stmt 0 view .LVU563
	movq	stderr(%rip), %rsi
	movl	$10, %edi
	call	fputc@PLT
.LVL143:
	.loc 4 100 10 view .LVU564
.LBE440:
.LBE439:
	.loc 1 155 3 is_stmt 1 view .LVU565
	.loc 1 156 3 view .LVU566
	.loc 1 156 10 is_stmt 0 view .LVU567
	xorl	%eax, %eax
	.loc 1 157 1 view .LVU568
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL144:
	.loc 1 157 1 view .LVU569
	ret
.L78:
	.cfi_restore_state
	.loc 1 149 5 is_stmt 1 view .LVU570
	.loc 1 149 5 view .LVU571
.LVL145:
.LBB441:
.LBI441:
	.loc 4 98 1 view .LVU572
.LBB442:
	.loc 4 100 3 view .LVU573
	.loc 4 100 10 is_stmt 0 view .LVU574
	movq	stderr(%rip), %rdi
	movl	$149, %r9d
	xorl	%eax, %eax
	leaq	__func__.11018(%rip), %r8
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	movl	$1, %esi
	call	__fprintf_chk@PLT
.LVL146:
	.loc 4 100 10 view .LVU575
.LBE442:
.LBE441:
	.loc 1 149 5 is_stmt 1 view .LVU576
.LBB443:
.LBI443:
	.loc 4 98 1 view .LVU577
.LBB444:
	.loc 4 100 3 view .LVU578
	.loc 4 100 10 is_stmt 0 view .LVU579
	movl	$23, %edx
	movq	stderr(%rip), %rcx
	movl	$1, %esi
	leaq	.LC24(%rip), %rdi
	call	fwrite@PLT
.LVL147:
	.loc 4 100 10 view .LVU580
.LBE444:
.LBE443:
	.loc 1 149 5 is_stmt 1 view .LVU581
.LBB445:
.LBI445:
	.loc 4 98 1 view .LVU582
.LBB446:
	.loc 4 100 3 view .LVU583
	.loc 4 100 10 is_stmt 0 view .LVU584
	movq	stderr(%rip), %rsi
	movl	$10, %edi
	call	fputc@PLT
.LVL148:
	.loc 4 100 10 view .LVU585
.LBE446:
.LBE445:
	.loc 1 149 5 is_stmt 1 view .LVU586
	.loc 1 150 5 view .LVU587
	.loc 1 150 12 is_stmt 0 view .LVU588
	movl	$1, %eax
	.loc 1 157 1 view .LVU589
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE381:
	.size	main, .-main
	.section	.rodata
	.type	__func__.11046, @object
	.size	__func__.11046, 7
__func__.11046:
	.string	"nfc_cb"
	.type	__func__.11018, @object
	.size	__func__.11018, 5
__func__.11018:
	.string	"main"
	.align 8
	.type	__func__.11012, @object
	.size	__func__.11012, 14
__func__.11012:
	.string	"setup_new_hdr"
	.globl	tmp3
	.bss
	.align 4
	.type	tmp3, @object
	.size	tmp3, 4
tmp3:
	.zero	4
	.globl	tag_len
	.data
	.align 4
	.type	tag_len, @object
	.size	tag_len, 4
tag_len:
	.long	16
	.comm	tag,16,16
	.globl	iv_len
	.align 4
	.type	iv_len, @object
	.size	iv_len, 4
iv_len:
	.long	12
	.comm	iv,8,8
	.comm	key,8,8
	.comm	ctx,8,8
	.comm	new_ip_body,20,16
	.comm	new_eth_body,14,8
	.text
.Letext0:
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 8 "/usr/include/asm-generic/int-ll64.h"
	.file 9 "/usr/include/linux/types.h"
	.file 10 "/usr/include/linux/if_ether.h"
	.file 11 "/usr/include/linux/ip.h"
	.file 12 "/usr/include/linux/in6.h"
	.file 13 "/usr/include/linux/ipv6.h"
	.file 14 "/usr/include/linux/udp.h"
	.file 15 "/usr/include/linux/tcp.h"
	.file 16 "/usr/include/linux/icmp.h"
	.file 17 "/usr/include/linux/icmpv6.h"
	.file 18 "/usr/include/netinet/in.h"
	.file 19 "/usr/include/openssl/ossl_typ.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 21 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 22 "/usr/include/stdio.h"
	.file 23 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 24 "/usr/include/time.h"
	.file 25 "/usr/include/openssl/asn1.h"
	.file 26 "../../../../src/include/nf/user/nfc.h"
	.file 27 "<built-in>"
	.file 28 "/usr/include/openssl/evp.h"
	.file 29 "/usr/include/stdlib.h"
	.file 30 "/usr/include/arpa/inet.h"
	.file 31 "/usr/include/openssl/rand.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2800
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF261
	.byte	0xc
	.long	.LASF262
	.long	.LASF263
	.long	.Ldebug_ranges0+0x2e0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x5
	.byte	0xd1
	.byte	0x17
	.long	0x35
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.long	0x61
	.uleb128 0x6
	.long	0x4a
	.uleb128 0x7
	.long	0x4a
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x6
	.long	0x5a
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x6
	.byte	0x28
	.byte	0x1c
	.long	0x3c
	.uleb128 0x2
	.long	.LASF9
	.byte	0x6
	.byte	0x2a
	.byte	0x16
	.long	0x6d
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.long	.LASF11
	.byte	0x6
	.byte	0x98
	.byte	0x19
	.long	0x9a
	.uleb128 0x2
	.long	.LASF12
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0x9a
	.uleb128 0x8
	.byte	0x8
	.uleb128 0x7
	.long	0xb9
	.uleb128 0x5
	.byte	0x8
	.long	0x5a
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF14
	.uleb128 0x2
	.long	.LASF15
	.byte	0x7
	.byte	0x1a
	.byte	0x14
	.long	0x8e
	.uleb128 0x2
	.long	.LASF16
	.byte	0x8
	.byte	0x15
	.byte	0x17
	.long	0x66
	.uleb128 0x2
	.long	.LASF17
	.byte	0x8
	.byte	0x18
	.byte	0x18
	.long	0x3c
	.uleb128 0x2
	.long	.LASF18
	.byte	0x8
	.byte	0x1b
	.byte	0x16
	.long	0x6d
	.uleb128 0x2
	.long	.LASF19
	.byte	0x9
	.byte	0x19
	.byte	0x19
	.long	0xec
	.uleb128 0x2
	.long	.LASF20
	.byte	0x9
	.byte	0x1b
	.byte	0x19
	.long	0xf8
	.uleb128 0x2
	.long	.LASF21
	.byte	0x9
	.byte	0x1f
	.byte	0x19
	.long	0xec
	.uleb128 0x9
	.long	.LASF25
	.byte	0xe
	.byte	0xa
	.byte	0xa4
	.byte	0x8
	.long	0x15d
	.uleb128 0xa
	.long	.LASF22
	.byte	0xa
	.byte	0xa5
	.byte	0x10
	.long	0x15d
	.byte	0
	.uleb128 0xa
	.long	.LASF23
	.byte	0xa
	.byte	0xa6
	.byte	0x10
	.long	0x15d
	.byte	0x6
	.uleb128 0xa
	.long	.LASF24
	.byte	0xa
	.byte	0xa7
	.byte	0xa
	.long	0x104
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	0x66
	.long	0x16d
	.uleb128 0xc
	.long	0x35
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.long	.LASF26
	.byte	0x14
	.byte	0xb
	.byte	0x56
	.byte	0x8
	.long	0x20f
	.uleb128 0xd
	.string	"ihl"
	.byte	0xb
	.byte	0x58
	.byte	0x7
	.long	0xe0
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.long	.LASF27
	.byte	0xb
	.byte	0x59
	.byte	0x3
	.long	0xe0
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"tos"
	.byte	0xb
	.byte	0x60
	.byte	0x7
	.long	0xe0
	.byte	0x1
	.uleb128 0xa
	.long	.LASF28
	.byte	0xb
	.byte	0x61
	.byte	0x9
	.long	0x104
	.byte	0x2
	.uleb128 0xf
	.string	"id"
	.byte	0xb
	.byte	0x62
	.byte	0x9
	.long	0x104
	.byte	0x4
	.uleb128 0xa
	.long	.LASF29
	.byte	0xb
	.byte	0x63
	.byte	0x9
	.long	0x104
	.byte	0x6
	.uleb128 0xf
	.string	"ttl"
	.byte	0xb
	.byte	0x64
	.byte	0x7
	.long	0xe0
	.byte	0x8
	.uleb128 0xa
	.long	.LASF30
	.byte	0xb
	.byte	0x65
	.byte	0x7
	.long	0xe0
	.byte	0x9
	.uleb128 0xa
	.long	.LASF31
	.byte	0xb
	.byte	0x66
	.byte	0xa
	.long	0x11c
	.byte	0xa
	.uleb128 0xa
	.long	.LASF32
	.byte	0xb
	.byte	0x67
	.byte	0x9
	.long	0x110
	.byte	0xc
	.uleb128 0xa
	.long	.LASF33
	.byte	0xb
	.byte	0x68
	.byte	0x9
	.long	0x110
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.byte	0x10
	.byte	0xc
	.byte	0x22
	.byte	0x2
	.long	0x23d
	.uleb128 0x11
	.long	.LASF34
	.byte	0xc
	.byte	0x23
	.byte	0x9
	.long	0x23d
	.uleb128 0x11
	.long	.LASF35
	.byte	0xc
	.byte	0x25
	.byte	0xb
	.long	0x24d
	.uleb128 0x11
	.long	.LASF36
	.byte	0xc
	.byte	0x26
	.byte	0xb
	.long	0x25d
	.byte	0
	.uleb128 0xb
	.long	0xe0
	.long	0x24d
	.uleb128 0xc
	.long	0x35
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.long	0x104
	.long	0x25d
	.uleb128 0xc
	.long	0x35
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.long	0x110
	.long	0x26d
	.uleb128 0xc
	.long	0x35
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x10
	.byte	0xc
	.byte	0x21
	.byte	0x8
	.long	0x288
	.uleb128 0xa
	.long	.LASF38
	.byte	0xc
	.byte	0x28
	.byte	0x4
	.long	0x20f
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x26d
	.uleb128 0x9
	.long	.LASF39
	.byte	0x28
	.byte	0xd
	.byte	0x75
	.byte	0x8
	.long	0x309
	.uleb128 0xe
	.long	.LASF40
	.byte	0xd
	.byte	0x77
	.byte	0x9
	.long	0xe0
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.long	.LASF27
	.byte	0xd
	.byte	0x78
	.byte	0x5
	.long	0xe0
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	.LASF41
	.byte	0xd
	.byte	0x7f
	.byte	0x9
	.long	0x309
	.byte	0x1
	.uleb128 0xa
	.long	.LASF42
	.byte	0xd
	.byte	0x81
	.byte	0xb
	.long	0x104
	.byte	0x4
	.uleb128 0xa
	.long	.LASF43
	.byte	0xd
	.byte	0x82
	.byte	0x9
	.long	0xe0
	.byte	0x6
	.uleb128 0xa
	.long	.LASF44
	.byte	0xd
	.byte	0x83
	.byte	0x9
	.long	0xe0
	.byte	0x7
	.uleb128 0xa
	.long	.LASF32
	.byte	0xd
	.byte	0x85
	.byte	0x12
	.long	0x26d
	.byte	0x8
	.uleb128 0xa
	.long	.LASF33
	.byte	0xd
	.byte	0x86
	.byte	0x12
	.long	0x26d
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.long	0xe0
	.long	0x319
	.uleb128 0xc
	.long	0x35
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	.LASF45
	.byte	0x8
	.byte	0xe
	.byte	0x17
	.byte	0x8
	.long	0x35b
	.uleb128 0xa
	.long	.LASF46
	.byte	0xe
	.byte	0x18
	.byte	0x9
	.long	0x104
	.byte	0
	.uleb128 0xa
	.long	.LASF47
	.byte	0xe
	.byte	0x19
	.byte	0x9
	.long	0x104
	.byte	0x2
	.uleb128 0xf
	.string	"len"
	.byte	0xe
	.byte	0x1a
	.byte	0x9
	.long	0x104
	.byte	0x4
	.uleb128 0xa
	.long	.LASF31
	.byte	0xe
	.byte	0x1b
	.byte	0xa
	.long	0x11c
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.long	.LASF48
	.byte	0x14
	.byte	0xf
	.byte	0x19
	.byte	0x8
	.long	0x464
	.uleb128 0xa
	.long	.LASF46
	.byte	0xf
	.byte	0x1a
	.byte	0x9
	.long	0x104
	.byte	0
	.uleb128 0xa
	.long	.LASF47
	.byte	0xf
	.byte	0x1b
	.byte	0x9
	.long	0x104
	.byte	0x2
	.uleb128 0xf
	.string	"seq"
	.byte	0xf
	.byte	0x1c
	.byte	0x9
	.long	0x110
	.byte	0x4
	.uleb128 0xa
	.long	.LASF49
	.byte	0xf
	.byte	0x1d
	.byte	0x9
	.long	0x110
	.byte	0x8
	.uleb128 0xe
	.long	.LASF50
	.byte	0xf
	.byte	0x1f
	.byte	0x8
	.long	0xec
	.byte	0x2
	.byte	0x4
	.byte	0xc
	.byte	0xc
	.uleb128 0xe
	.long	.LASF51
	.byte	0xf
	.byte	0x20
	.byte	0x3
	.long	0xec
	.byte	0x2
	.byte	0x4
	.byte	0x8
	.byte	0xc
	.uleb128 0xd
	.string	"fin"
	.byte	0xf
	.byte	0x21
	.byte	0x3
	.long	0xec
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0xc
	.uleb128 0xd
	.string	"syn"
	.byte	0xf
	.byte	0x22
	.byte	0x3
	.long	0xec
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0xc
	.uleb128 0xd
	.string	"rst"
	.byte	0xf
	.byte	0x23
	.byte	0x3
	.long	0xec
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0xc
	.uleb128 0xd
	.string	"psh"
	.byte	0xf
	.byte	0x24
	.byte	0x3
	.long	0xec
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0xc
	.uleb128 0xd
	.string	"ack"
	.byte	0xf
	.byte	0x25
	.byte	0x3
	.long	0xec
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0xc
	.uleb128 0xd
	.string	"urg"
	.byte	0xf
	.byte	0x26
	.byte	0x3
	.long	0xec
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0xc
	.uleb128 0xd
	.string	"ece"
	.byte	0xf
	.byte	0x27
	.byte	0x3
	.long	0xec
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0xc
	.uleb128 0xd
	.string	"cwr"
	.byte	0xf
	.byte	0x28
	.byte	0x3
	.long	0xec
	.byte	0x2
	.byte	0x1
	.byte	0
	.byte	0xc
	.uleb128 0xa
	.long	.LASF52
	.byte	0xf
	.byte	0x37
	.byte	0x9
	.long	0x104
	.byte	0xe
	.uleb128 0xa
	.long	.LASF31
	.byte	0xf
	.byte	0x38
	.byte	0xa
	.long	0x11c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF53
	.byte	0xf
	.byte	0x39
	.byte	0x9
	.long	0x104
	.byte	0x12
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0x10
	.byte	0x4b
	.byte	0x2
	.long	0x487
	.uleb128 0xf
	.string	"id"
	.byte	0x10
	.byte	0x4c
	.byte	0xa
	.long	0x104
	.byte	0
	.uleb128 0xa
	.long	.LASF54
	.byte	0x10
	.byte	0x4d
	.byte	0xa
	.long	0x104
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0x10
	.byte	0x50
	.byte	0x2
	.long	0x4ab
	.uleb128 0xa
	.long	.LASF55
	.byte	0x10
	.byte	0x51
	.byte	0xa
	.long	0x104
	.byte	0
	.uleb128 0xf
	.string	"mtu"
	.byte	0x10
	.byte	0x52
	.byte	0xa
	.long	0x104
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x10
	.byte	0x4a
	.byte	0x3
	.long	0x4e5
	.uleb128 0x11
	.long	.LASF56
	.byte	0x10
	.byte	0x4e
	.byte	0x4
	.long	0x464
	.uleb128 0x11
	.long	.LASF57
	.byte	0x10
	.byte	0x4f
	.byte	0x9
	.long	0x110
	.uleb128 0x11
	.long	.LASF58
	.byte	0x10
	.byte	0x53
	.byte	0x4
	.long	0x487
	.uleb128 0x11
	.long	.LASF59
	.byte	0x10
	.byte	0x54
	.byte	0x7
	.long	0x4e5
	.byte	0
	.uleb128 0xb
	.long	0xe0
	.long	0x4f5
	.uleb128 0xc
	.long	0x35
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	.LASF60
	.byte	0x8
	.byte	0x10
	.byte	0x46
	.byte	0x8
	.long	0x536
	.uleb128 0xa
	.long	.LASF61
	.byte	0x10
	.byte	0x47
	.byte	0x9
	.long	0xe0
	.byte	0
	.uleb128 0xa
	.long	.LASF62
	.byte	0x10
	.byte	0x48
	.byte	0x9
	.long	0xe0
	.byte	0x1
	.uleb128 0xa
	.long	.LASF63
	.byte	0x10
	.byte	0x49
	.byte	0xb
	.long	0x11c
	.byte	0x2
	.uleb128 0xf
	.string	"un"
	.byte	0x10
	.byte	0x55
	.byte	0x5
	.long	0x4ab
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.long	.LASF64
	.byte	0x4
	.byte	0x11
	.byte	0x14
	.byte	0xa
	.long	0x55e
	.uleb128 0xa
	.long	.LASF65
	.byte	0x11
	.byte	0x15
	.byte	0xc
	.long	0x104
	.byte	0
	.uleb128 0xa
	.long	.LASF54
	.byte	0x11
	.byte	0x16
	.byte	0xc
	.long	0x104
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	.LASF66
	.byte	0x4
	.byte	0x11
	.byte	0x19
	.byte	0x18
	.long	0x5bc
	.uleb128 0xe
	.long	.LASF59
	.byte	0x11
	.byte	0x1b
	.byte	0x20
	.long	0xf8
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.long	.LASF67
	.byte	0x11
	.byte	0x1c
	.byte	0x1b
	.long	0xf8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.long	.LASF68
	.byte	0x11
	.byte	0x1d
	.byte	0x1b
	.long	0xf8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.long	.LASF69
	.byte	0x11
	.byte	0x1e
	.byte	0x1b
	.long	0xf8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.long	.LASF70
	.byte	0x11
	.byte	0x1f
	.byte	0x6
	.long	0xf8
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	.LASF71
	.byte	0x4
	.byte	0x11
	.byte	0x2a
	.byte	0x18
	.long	0x634
	.uleb128 0xa
	.long	.LASF44
	.byte	0x11
	.byte	0x2b
	.byte	0xa
	.long	0xe0
	.byte	0
	.uleb128 0xe
	.long	.LASF59
	.byte	0x11
	.byte	0x2d
	.byte	0xa
	.long	0xe0
	.byte	0x1
	.byte	0x3
	.byte	0x5
	.byte	0x1
	.uleb128 0xe
	.long	.LASF72
	.byte	0x11
	.byte	0x2e
	.byte	0x6
	.long	0xe0
	.byte	0x1
	.byte	0x2
	.byte	0x3
	.byte	0x1
	.uleb128 0xe
	.long	.LASF73
	.byte	0x11
	.byte	0x2f
	.byte	0x6
	.long	0xe0
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x1
	.uleb128 0xe
	.long	.LASF74
	.byte	0x11
	.byte	0x30
	.byte	0x6
	.long	0xe0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	.LASF75
	.byte	0x11
	.byte	0x31
	.byte	0x6
	.long	0xe0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x1
	.uleb128 0xa
	.long	.LASF76
	.byte	0x11
	.byte	0x3c
	.byte	0xc
	.long	0x104
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x11
	.byte	0xf
	.byte	0x2
	.long	0x686
	.uleb128 0x11
	.long	.LASF77
	.byte	0x11
	.byte	0x10
	.byte	0xc
	.long	0x686
	.uleb128 0x11
	.long	.LASF78
	.byte	0x11
	.byte	0x11
	.byte	0xc
	.long	0x696
	.uleb128 0x11
	.long	.LASF79
	.byte	0x11
	.byte	0x12
	.byte	0xa
	.long	0x4e5
	.uleb128 0x11
	.long	.LASF80
	.byte	0x11
	.byte	0x17
	.byte	0x5
	.long	0x536
	.uleb128 0x11
	.long	.LASF81
	.byte	0x11
	.byte	0x28
	.byte	0x13
	.long	0x55e
	.uleb128 0x11
	.long	.LASF82
	.byte	0x11
	.byte	0x3d
	.byte	0x13
	.long	0x5bc
	.byte	0
	.uleb128 0xb
	.long	0x110
	.long	0x696
	.uleb128 0xc
	.long	0x35
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x104
	.long	0x6a6
	.uleb128 0xc
	.long	0x35
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	.LASF83
	.byte	0x8
	.byte	0x11
	.byte	0x8
	.byte	0x8
	.long	0x6e8
	.uleb128 0xa
	.long	.LASF84
	.byte	0x11
	.byte	0xa
	.byte	0x8
	.long	0xe0
	.byte	0
	.uleb128 0xa
	.long	.LASF85
	.byte	0x11
	.byte	0xb
	.byte	0x8
	.long	0xe0
	.byte	0x1
	.uleb128 0xa
	.long	.LASF86
	.byte	0x11
	.byte	0xc
	.byte	0xb
	.long	0x11c
	.byte	0x2
	.uleb128 0xa
	.long	.LASF87
	.byte	0x11
	.byte	0x3f
	.byte	0x4
	.long	0x634
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF88
	.byte	0x12
	.byte	0x1e
	.byte	0x12
	.long	0xd4
	.uleb128 0x9
	.long	.LASF89
	.byte	0x4
	.byte	0x12
	.byte	0x1f
	.byte	0x8
	.long	0x70f
	.uleb128 0xa
	.long	.LASF90
	.byte	0x12
	.byte	0x21
	.byte	0xf
	.long	0x6e8
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0x6d
	.byte	0x12
	.byte	0x29
	.byte	0x3
	.long	0x7bb
	.uleb128 0x14
	.long	.LASF91
	.byte	0
	.uleb128 0x14
	.long	.LASF92
	.byte	0x1
	.uleb128 0x14
	.long	.LASF93
	.byte	0x2
	.uleb128 0x14
	.long	.LASF94
	.byte	0x4
	.uleb128 0x14
	.long	.LASF95
	.byte	0x6
	.uleb128 0x14
	.long	.LASF96
	.byte	0x8
	.uleb128 0x14
	.long	.LASF97
	.byte	0xc
	.uleb128 0x14
	.long	.LASF98
	.byte	0x11
	.uleb128 0x14
	.long	.LASF99
	.byte	0x16
	.uleb128 0x14
	.long	.LASF100
	.byte	0x1d
	.uleb128 0x14
	.long	.LASF101
	.byte	0x21
	.uleb128 0x14
	.long	.LASF102
	.byte	0x29
	.uleb128 0x14
	.long	.LASF103
	.byte	0x2e
	.uleb128 0x14
	.long	.LASF104
	.byte	0x2f
	.uleb128 0x14
	.long	.LASF105
	.byte	0x32
	.uleb128 0x14
	.long	.LASF106
	.byte	0x33
	.uleb128 0x14
	.long	.LASF107
	.byte	0x5c
	.uleb128 0x14
	.long	.LASF108
	.byte	0x5e
	.uleb128 0x14
	.long	.LASF109
	.byte	0x62
	.uleb128 0x14
	.long	.LASF110
	.byte	0x67
	.uleb128 0x14
	.long	.LASF111
	.byte	0x6c
	.uleb128 0x14
	.long	.LASF112
	.byte	0x84
	.uleb128 0x14
	.long	.LASF113
	.byte	0x88
	.uleb128 0x14
	.long	.LASF114
	.byte	0x89
	.uleb128 0x14
	.long	.LASF115
	.byte	0xff
	.uleb128 0x15
	.long	.LASF116
	.value	0x100
	.byte	0
	.uleb128 0x16
	.long	.LASF117
	.byte	0x12
	.byte	0xe4
	.byte	0x1e
	.long	0x288
	.uleb128 0x16
	.long	.LASF118
	.byte	0x12
	.byte	0xe5
	.byte	0x1e
	.long	0x288
	.uleb128 0x2
	.long	.LASF119
	.byte	0x13
	.byte	0x3e
	.byte	0x1d
	.long	0x7e4
	.uleb128 0x6
	.long	0x7d3
	.uleb128 0x17
	.long	.LASF121
	.uleb128 0x2
	.long	.LASF120
	.byte	0x13
	.byte	0x5a
	.byte	0x22
	.long	0x7f5
	.uleb128 0x17
	.long	.LASF122
	.uleb128 0x9
	.long	.LASF123
	.byte	0xd8
	.byte	0x14
	.byte	0x31
	.byte	0x8
	.long	0x981
	.uleb128 0xa
	.long	.LASF124
	.byte	0x14
	.byte	0x33
	.byte	0x7
	.long	0x43
	.byte	0
	.uleb128 0xa
	.long	.LASF125
	.byte	0x14
	.byte	0x36
	.byte	0x9
	.long	0xc0
	.byte	0x8
	.uleb128 0xa
	.long	.LASF126
	.byte	0x14
	.byte	0x37
	.byte	0x9
	.long	0xc0
	.byte	0x10
	.uleb128 0xa
	.long	.LASF127
	.byte	0x14
	.byte	0x38
	.byte	0x9
	.long	0xc0
	.byte	0x18
	.uleb128 0xa
	.long	.LASF128
	.byte	0x14
	.byte	0x39
	.byte	0x9
	.long	0xc0
	.byte	0x20
	.uleb128 0xa
	.long	.LASF129
	.byte	0x14
	.byte	0x3a
	.byte	0x9
	.long	0xc0
	.byte	0x28
	.uleb128 0xa
	.long	.LASF130
	.byte	0x14
	.byte	0x3b
	.byte	0x9
	.long	0xc0
	.byte	0x30
	.uleb128 0xa
	.long	.LASF131
	.byte	0x14
	.byte	0x3c
	.byte	0x9
	.long	0xc0
	.byte	0x38
	.uleb128 0xa
	.long	.LASF132
	.byte	0x14
	.byte	0x3d
	.byte	0x9
	.long	0xc0
	.byte	0x40
	.uleb128 0xa
	.long	.LASF133
	.byte	0x14
	.byte	0x40
	.byte	0x9
	.long	0xc0
	.byte	0x48
	.uleb128 0xa
	.long	.LASF134
	.byte	0x14
	.byte	0x41
	.byte	0x9
	.long	0xc0
	.byte	0x50
	.uleb128 0xa
	.long	.LASF135
	.byte	0x14
	.byte	0x42
	.byte	0x9
	.long	0xc0
	.byte	0x58
	.uleb128 0xa
	.long	.LASF136
	.byte	0x14
	.byte	0x44
	.byte	0x16
	.long	0x99a
	.byte	0x60
	.uleb128 0xa
	.long	.LASF137
	.byte	0x14
	.byte	0x46
	.byte	0x14
	.long	0x9a0
	.byte	0x68
	.uleb128 0xa
	.long	.LASF138
	.byte	0x14
	.byte	0x48
	.byte	0x7
	.long	0x43
	.byte	0x70
	.uleb128 0xa
	.long	.LASF139
	.byte	0x14
	.byte	0x49
	.byte	0x7
	.long	0x43
	.byte	0x74
	.uleb128 0xa
	.long	.LASF140
	.byte	0x14
	.byte	0x4a
	.byte	0xb
	.long	0xa1
	.byte	0x78
	.uleb128 0xa
	.long	.LASF141
	.byte	0x14
	.byte	0x4d
	.byte	0x12
	.long	0x3c
	.byte	0x80
	.uleb128 0xa
	.long	.LASF142
	.byte	0x14
	.byte	0x4e
	.byte	0xf
	.long	0x74
	.byte	0x82
	.uleb128 0xa
	.long	.LASF143
	.byte	0x14
	.byte	0x4f
	.byte	0x8
	.long	0x9a6
	.byte	0x83
	.uleb128 0xa
	.long	.LASF144
	.byte	0x14
	.byte	0x51
	.byte	0xf
	.long	0x9b6
	.byte	0x88
	.uleb128 0xa
	.long	.LASF145
	.byte	0x14
	.byte	0x59
	.byte	0xd
	.long	0xad
	.byte	0x90
	.uleb128 0xa
	.long	.LASF146
	.byte	0x14
	.byte	0x5b
	.byte	0x17
	.long	0x9c1
	.byte	0x98
	.uleb128 0xa
	.long	.LASF147
	.byte	0x14
	.byte	0x5c
	.byte	0x19
	.long	0x9cc
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF148
	.byte	0x14
	.byte	0x5d
	.byte	0x14
	.long	0x9a0
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF149
	.byte	0x14
	.byte	0x5e
	.byte	0x9
	.long	0xb9
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF150
	.byte	0x14
	.byte	0x5f
	.byte	0xa
	.long	0x29
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF151
	.byte	0x14
	.byte	0x60
	.byte	0x7
	.long	0x43
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF152
	.byte	0x14
	.byte	0x62
	.byte	0x8
	.long	0x9d2
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF153
	.byte	0x15
	.byte	0x7
	.byte	0x19
	.long	0x7fa
	.uleb128 0x18
	.long	.LASF264
	.byte	0x14
	.byte	0x2b
	.byte	0xe
	.uleb128 0x17
	.long	.LASF154
	.uleb128 0x5
	.byte	0x8
	.long	0x995
	.uleb128 0x5
	.byte	0x8
	.long	0x7fa
	.uleb128 0xb
	.long	0x5a
	.long	0x9b6
	.uleb128 0xc
	.long	0x35
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x98d
	.uleb128 0x17
	.long	.LASF155
	.uleb128 0x5
	.byte	0x8
	.long	0x9bc
	.uleb128 0x17
	.long	.LASF156
	.uleb128 0x5
	.byte	0x8
	.long	0x9c7
	.uleb128 0xb
	.long	0x5a
	.long	0x9e2
	.uleb128 0xc
	.long	0x35
	.byte	0x13
	.byte	0
	.uleb128 0x16
	.long	.LASF157
	.byte	0x16
	.byte	0x89
	.byte	0xe
	.long	0x9ee
	.uleb128 0x5
	.byte	0x8
	.long	0x981
	.uleb128 0x7
	.long	0x9ee
	.uleb128 0x16
	.long	.LASF158
	.byte	0x16
	.byte	0x8a
	.byte	0xe
	.long	0x9ee
	.uleb128 0x16
	.long	.LASF159
	.byte	0x16
	.byte	0x8b
	.byte	0xe
	.long	0x9ee
	.uleb128 0x16
	.long	.LASF160
	.byte	0x17
	.byte	0x1a
	.byte	0xc
	.long	0x43
	.uleb128 0xb
	.long	0x50
	.long	0xa28
	.uleb128 0x19
	.byte	0
	.uleb128 0x6
	.long	0xa1d
	.uleb128 0x16
	.long	.LASF161
	.byte	0x17
	.byte	0x1b
	.byte	0x1a
	.long	0xa28
	.uleb128 0x5
	.byte	0x8
	.long	0xa44
	.uleb128 0x7
	.long	0xa39
	.uleb128 0x1a
	.uleb128 0xb
	.long	0xc0
	.long	0xa55
	.uleb128 0xc
	.long	0x35
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.long	.LASF162
	.byte	0x18
	.byte	0x9f
	.byte	0xe
	.long	0xa45
	.uleb128 0x16
	.long	.LASF163
	.byte	0x18
	.byte	0xa0
	.byte	0xc
	.long	0x43
	.uleb128 0x16
	.long	.LASF164
	.byte	0x18
	.byte	0xa1
	.byte	0x11
	.long	0x9a
	.uleb128 0x16
	.long	.LASF165
	.byte	0x18
	.byte	0xa6
	.byte	0xe
	.long	0xa45
	.uleb128 0x16
	.long	.LASF166
	.byte	0x18
	.byte	0xae
	.byte	0xc
	.long	0x43
	.uleb128 0x16
	.long	.LASF167
	.byte	0x18
	.byte	0xaf
	.byte	0x11
	.long	0x9a
	.uleb128 0x5
	.byte	0x8
	.long	0x66
	.uleb128 0x1b
	.long	.LASF168
	.byte	0x19
	.value	0x1df
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF169
	.byte	0x19
	.value	0x1e0
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF170
	.byte	0x19
	.value	0x206
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF171
	.byte	0x19
	.value	0x216
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF172
	.byte	0x19
	.value	0x22d
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF173
	.byte	0x19
	.value	0x23a
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF174
	.byte	0x19
	.value	0x240
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF175
	.byte	0x19
	.value	0x254
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF176
	.byte	0x19
	.value	0x25b
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF177
	.byte	0x19
	.value	0x25c
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF178
	.byte	0x19
	.value	0x25d
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF179
	.byte	0x19
	.value	0x25e
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF180
	.byte	0x19
	.value	0x25f
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF181
	.byte	0x19
	.value	0x264
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF182
	.byte	0x19
	.value	0x266
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF183
	.byte	0x19
	.value	0x267
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF184
	.byte	0x19
	.value	0x268
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF185
	.byte	0x19
	.value	0x269
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF186
	.byte	0x19
	.value	0x26a
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF187
	.byte	0x19
	.value	0x26b
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF188
	.byte	0x19
	.value	0x26c
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF189
	.byte	0x19
	.value	0x26d
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF190
	.byte	0x19
	.value	0x26e
	.byte	0x1
	.long	0x7df
	.uleb128 0x1b
	.long	.LASF191
	.byte	0x19
	.value	0x270
	.byte	0x1
	.long	0x7df
	.uleb128 0xb
	.long	0x66
	.long	0xbeb
	.uleb128 0xc
	.long	0x35
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x7e9
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF192
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF193
	.uleb128 0x1c
	.string	"u32"
	.byte	0x1a
	.byte	0x11
	.byte	0xf
	.long	0xf8
	.uleb128 0x1c
	.string	"u16"
	.byte	0x1a
	.byte	0x12
	.byte	0xf
	.long	0xec
	.uleb128 0x1c
	.string	"u8"
	.byte	0x1a
	.byte	0x13
	.byte	0xe
	.long	0xe0
	.uleb128 0x12
	.byte	0x10
	.byte	0x1a
	.byte	0x15
	.byte	0x9
	.long	0xc46
	.uleb128 0xf
	.string	"pkt"
	.byte	0x1a
	.byte	0x16
	.byte	0xb
	.long	0xb9
	.byte	0
	.uleb128 0xf
	.string	"len"
	.byte	0x1a
	.byte	0x17
	.byte	0x9
	.long	0xbff
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF194
	.byte	0x1a
	.byte	0x18
	.byte	0x3
	.long	0xc22
	.uleb128 0x1d
	.long	.LASF195
	.byte	0x1
	.byte	0x13
	.byte	0xf
	.long	0x128
	.uleb128 0x9
	.byte	0x3
	.quad	new_eth_body
	.uleb128 0x1d
	.long	.LASF196
	.byte	0x1
	.byte	0x14
	.byte	0xe
	.long	0x16d
	.uleb128 0x9
	.byte	0x3
	.quad	new_ip_body
	.uleb128 0x1e
	.string	"ctx"
	.byte	0x1
	.byte	0x16
	.byte	0x11
	.long	0xbeb
	.uleb128 0x9
	.byte	0x3
	.quad	ctx
	.uleb128 0x1e
	.string	"key"
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.long	0xa9d
	.uleb128 0x9
	.byte	0x3
	.quad	key
	.uleb128 0x1e
	.string	"iv"
	.byte	0x1
	.byte	0x17
	.byte	0x16
	.long	0xa9d
	.uleb128 0x9
	.byte	0x3
	.quad	iv
	.uleb128 0x1d
	.long	.LASF197
	.byte	0x1
	.byte	0x18
	.byte	0x5
	.long	0x43
	.uleb128 0x9
	.byte	0x3
	.quad	iv_len
	.uleb128 0x1e
	.string	"tag"
	.byte	0x1
	.byte	0x19
	.byte	0xf
	.long	0xbdb
	.uleb128 0x9
	.byte	0x3
	.quad	tag
	.uleb128 0x1d
	.long	.LASF198
	.byte	0x1
	.byte	0x1a
	.byte	0x5
	.long	0x43
	.uleb128 0x9
	.byte	0x3
	.quad	tag_len
	.uleb128 0x1d
	.long	.LASF199
	.byte	0x1
	.byte	0x9e
	.byte	0x5
	.long	0x43
	.uleb128 0x9
	.byte	0x3
	.quad	tmp3
	.uleb128 0x1f
	.long	.LASF265
	.byte	0x1
	.byte	0x9f
	.byte	0xa
	.long	0xc46
	.quad	.LFB382
	.quad	.LFE382-.LFB382
	.uleb128 0x1
	.byte	0x9c
	.long	0x15d3
	.uleb128 0x20
	.string	"pkt"
	.byte	0x1
	.byte	0x9f
	.byte	0x17
	.long	0xb9
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x20
	.string	"len"
	.byte	0x1
	.byte	0x9f
	.byte	0x20
	.long	0xbff
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x21
	.long	.LASF200
	.byte	0x1
	.byte	0xa1
	.byte	0xc
	.long	0xc46
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x22
	.string	"eth"
	.byte	0x1
	.byte	0xa2
	.byte	0x12
	.long	0x15d3
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x22
	.string	"iph"
	.byte	0x1
	.byte	0xa3
	.byte	0x11
	.long	0x15d9
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x21
	.long	.LASF201
	.byte	0x1
	.byte	0xa4
	.byte	0x13
	.long	0x15df
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x23
	.long	.LASF202
	.byte	0x1
	.byte	0xa5
	.byte	0x12
	.long	0x15e5
	.byte	0
	.uleb128 0x23
	.long	.LASF203
	.byte	0x1
	.byte	0xa6
	.byte	0x12
	.long	0x15eb
	.byte	0
	.uleb128 0x23
	.long	.LASF204
	.byte	0x1
	.byte	0xa7
	.byte	0x13
	.long	0x15f1
	.byte	0
	.uleb128 0x23
	.long	.LASF205
	.byte	0x1
	.byte	0xa8
	.byte	0x14
	.long	0x15f7
	.byte	0
	.uleb128 0x21
	.long	.LASF206
	.byte	0x1
	.byte	0xcf
	.byte	0x9
	.long	0xb9
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x21
	.long	.LASF207
	.byte	0x1
	.byte	0xd6
	.byte	0x12
	.long	0x15d3
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x21
	.long	.LASF208
	.byte	0x1
	.byte	0xd7
	.byte	0x11
	.long	0x15d9
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x24
	.long	.LASF209
	.byte	0x1
	.byte	0xe0
	.byte	0x7
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF210
	.byte	0x1
	.byte	0xe0
	.byte	0x13
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.long	.LASF211
	.long	0x160d
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.11046
	.uleb128 0x26
	.long	0x25ae
	.quad	.LBI230
	.value	.LVU29
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xd9
	.byte	0x3
	.long	0xe94
	.uleb128 0x27
	.long	0x25d7
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x27
	.long	0x25cb
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x27
	.long	0x25bf
	.long	.LLST11
	.long	.LVUS11
	.byte	0
	.uleb128 0x26
	.long	0x248e
	.quad	.LBI233
	.value	.LVU40
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xdc
	.byte	0x17
	.long	0xedc
	.uleb128 0x27
	.long	0x24ab
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x27
	.long	0x249f
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x29
	.long	0x24b7
	.long	.LLST14
	.long	.LVUS14
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x25ae
	.quad	.LBI240
	.value	.LVU67
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0xdd
	.byte	0x3
	.long	0xf1e
	.uleb128 0x27
	.long	0x25d7
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x27
	.long	0x25cb
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x27
	.long	0x25bf
	.long	.LLST17
	.long	.LVUS17
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI244
	.value	.LVU79
	.quad	.LBB244
	.quad	.LBE244-.LBB244
	.byte	0x1
	.byte	0xe3
	.byte	0x5
	.long	0xf97
	.uleb128 0x27
	.long	0x2582
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL20
	.long	0x26f6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.11046
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0xe3
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI246
	.value	.LVU84
	.quad	.LBB246
	.quad	.LBE246-.LBB246
	.byte	0x1
	.byte	0xe3
	.byte	0x5
	.long	0xff5
	.uleb128 0x27
	.long	0x2582
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL21
	.long	0x2702
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI248
	.value	.LVU89
	.quad	.LBB248
	.quad	.LBE248-.LBB248
	.byte	0x1
	.byte	0xe3
	.byte	0x5
	.long	0x1041
	.uleb128 0x27
	.long	0x2582
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL22
	.long	0x2713
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI250
	.value	.LVU99
	.quad	.LBB250
	.quad	.LBE250-.LBB250
	.byte	0x1
	.byte	0xe6
	.byte	0x5
	.long	0x10ba
	.uleb128 0x27
	.long	0x2582
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL26
	.long	0x26f6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.11046
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0xe6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI252
	.value	.LVU104
	.quad	.LBB252
	.quad	.LBE252-.LBB252
	.byte	0x1
	.byte	0xe6
	.byte	0x5
	.long	0x1118
	.uleb128 0x27
	.long	0x2582
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL27
	.long	0x2702
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI254
	.value	.LVU109
	.quad	.LBB254
	.quad	.LBE254-.LBB254
	.byte	0x1
	.byte	0xe6
	.byte	0x5
	.long	0x1164
	.uleb128 0x27
	.long	0x2582
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL28
	.long	0x2713
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI256
	.value	.LVU119
	.quad	.LBB256
	.quad	.LBE256-.LBB256
	.byte	0x1
	.byte	0xe9
	.byte	0x5
	.long	0x11dd
	.uleb128 0x27
	.long	0x2582
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL31
	.long	0x26f6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.11046
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0xe9
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI258
	.value	.LVU124
	.quad	.LBB258
	.quad	.LBE258-.LBB258
	.byte	0x1
	.byte	0xe9
	.byte	0x5
	.long	0x123b
	.uleb128 0x27
	.long	0x2582
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL32
	.long	0x2702
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI260
	.value	.LVU129
	.quad	.LBB260
	.quad	.LBE260-.LBB260
	.byte	0x1
	.byte	0xe9
	.byte	0x5
	.long	0x1287
	.uleb128 0x27
	.long	0x2582
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL33
	.long	0x2713
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI262
	.value	.LVU141
	.quad	.LBB262
	.quad	.LBE262-.LBB262
	.byte	0x1
	.byte	0xec
	.byte	0x5
	.long	0x1300
	.uleb128 0x27
	.long	0x2582
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL36
	.long	0x26f6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.11046
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0xec
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI264
	.value	.LVU146
	.quad	.LBB264
	.quad	.LBE264-.LBB264
	.byte	0x1
	.byte	0xec
	.byte	0x5
	.long	0x135e
	.uleb128 0x27
	.long	0x2582
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL37
	.long	0x2702
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI266
	.value	.LVU151
	.quad	.LBB266
	.quad	.LBE266-.LBB266
	.byte	0x1
	.byte	0xec
	.byte	0x5
	.long	0x13aa
	.uleb128 0x27
	.long	0x2582
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL38
	.long	0x2713
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI268
	.value	.LVU161
	.quad	.LBB268
	.quad	.LBE268-.LBB268
	.byte	0x1
	.byte	0xef
	.byte	0x5
	.long	0x1423
	.uleb128 0x27
	.long	0x2582
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL41
	.long	0x26f6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.11046
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0xef
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI270
	.value	.LVU166
	.quad	.LBB270
	.quad	.LBE270-.LBB270
	.byte	0x1
	.byte	0xef
	.byte	0x5
	.long	0x1481
	.uleb128 0x27
	.long	0x2582
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL42
	.long	0x2702
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI272
	.value	.LVU171
	.quad	.LBB272
	.quad	.LBE272-.LBB272
	.byte	0x1
	.byte	0xef
	.byte	0x5
	.long	0x14cd
	.uleb128 0x27
	.long	0x2582
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL43
	.long	0x2713
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2546
	.quad	.LBI274
	.value	.LVU183
	.quad	.LBB274
	.quad	.LBE274-.LBB274
	.byte	0x1
	.byte	0xf7
	.byte	0x3
	.long	0x151c
	.uleb128 0x27
	.long	0x2557
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x2c
	.quad	.LVL46
	.long	0x2725
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LVL18
	.long	0x2730
	.uleb128 0x2e
	.quad	.LVL23
	.long	0x273d
	.uleb128 0x2f
	.quad	.LVL24
	.long	0x274a
	.long	0x155b
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x2f
	.quad	.LVL29
	.long	0x2757
	.long	0x1589
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x4
	.byte	0x91
	.sleb128 -60
	.byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x2f
	.quad	.LVL34
	.long	0x2764
	.long	0x15a1
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2f
	.quad	.LVL39
	.long	0x2771
	.long	0x15c5
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	tag
	.byte	0
	.uleb128 0x2e
	.quad	.LVL51
	.long	0x277e
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x128
	.uleb128 0x5
	.byte	0x8
	.long	0x16d
	.uleb128 0x5
	.byte	0x8
	.long	0x28d
	.uleb128 0x5
	.byte	0x8
	.long	0x35b
	.uleb128 0x5
	.byte	0x8
	.long	0x319
	.uleb128 0x5
	.byte	0x8
	.long	0x4f5
	.uleb128 0x5
	.byte	0x8
	.long	0x6a6
	.uleb128 0xb
	.long	0x61
	.long	0x160d
	.uleb128 0xc
	.long	0x35
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.long	0x15fd
	.uleb128 0x30
	.long	.LASF212
	.byte	0x1
	.byte	0x92
	.byte	0x5
	.long	0x43
	.quad	.LFB381
	.quad	.LFE381-.LFB381
	.uleb128 0x1
	.byte	0x9c
	.long	0x19f7
	.uleb128 0x22
	.string	"ret"
	.byte	0x1
	.byte	0x93
	.byte	0x7
	.long	0x43
	.long	.LLST67
	.long	.LVUS67
	.uleb128 0x25
	.long	.LASF211
	.long	0x1a07
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.11018
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI427
	.value	.LVU528
	.quad	.LBB427
	.quad	.LBE427-.LBB427
	.byte	0x1
	.byte	0x98
	.byte	0x3
	.long	0x16d4
	.uleb128 0x27
	.long	0x2582
	.long	.LLST68
	.long	.LVUS68
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL134
	.long	0x26f6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.11018
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0x98
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI429
	.value	.LVU533
	.quad	.LBB429
	.quad	.LBE429-.LBB429
	.byte	0x1
	.byte	0x98
	.byte	0x3
	.long	0x1732
	.uleb128 0x27
	.long	0x2582
	.long	.LLST69
	.long	.LVUS69
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL135
	.long	0x2702
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI431
	.value	.LVU538
	.quad	.LBB431
	.quad	.LBE431-.LBB431
	.byte	0x1
	.byte	0x98
	.byte	0x3
	.long	0x177e
	.uleb128 0x27
	.long	0x2582
	.long	.LLST70
	.long	.LVUS70
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL136
	.long	0x2713
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x2565
	.quad	.LBI433
	.value	.LVU550
	.long	.Ldebug_ranges0+0x2b0
	.byte	0x1
	.byte	0x9b
	.byte	0x3
	.long	0x17f3
	.uleb128 0x27
	.long	0x2582
	.long	.LLST71
	.long	.LVUS71
	.uleb128 0x27
	.long	0x2576
	.long	.LLST72
	.long	.LVUS72
	.uleb128 0x2c
	.quad	.LVL141
	.long	0x26f6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.11018
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0x9b
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI437
	.value	.LVU556
	.quad	.LBB437
	.quad	.LBE437-.LBB437
	.byte	0x1
	.byte	0x9b
	.byte	0x3
	.long	0x1852
	.uleb128 0x27
	.long	0x2582
	.long	.LLST73
	.long	.LVUS73
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL142
	.long	0x26f6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI439
	.value	.LVU561
	.quad	.LBB439
	.quad	.LBE439-.LBB439
	.byte	0x1
	.byte	0x9b
	.byte	0x3
	.long	0x189e
	.uleb128 0x27
	.long	0x2582
	.long	.LLST74
	.long	.LVUS74
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL143
	.long	0x2713
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI441
	.value	.LVU572
	.quad	.LBB441
	.quad	.LBE441-.LBB441
	.byte	0x1
	.byte	0x95
	.byte	0x5
	.long	0x1917
	.uleb128 0x27
	.long	0x2582
	.long	.LLST75
	.long	.LVUS75
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL146
	.long	0x26f6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.11018
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0x95
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI443
	.value	.LVU577
	.quad	.LBB443
	.quad	.LBE443-.LBB443
	.byte	0x1
	.byte	0x95
	.byte	0x5
	.long	0x1975
	.uleb128 0x27
	.long	0x2582
	.long	.LLST76
	.long	.LVUS76
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL147
	.long	0x2702
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x47
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI445
	.value	.LVU582
	.quad	.LBB445
	.quad	.LBE445-.LBB445
	.byte	0x1
	.byte	0x95
	.byte	0x5
	.long	0x19c1
	.uleb128 0x27
	.long	0x2582
	.long	.LLST77
	.long	.LVUS77
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL148
	.long	0x2713
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LVL132
	.long	0x1a81
	.uleb128 0x2e
	.quad	.LVL137
	.long	0x2787
	.uleb128 0x2c
	.quad	.LVL138
	.long	0x2793
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	nfc_cb
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x61
	.long	0x1a07
	.uleb128 0xc
	.long	0x35
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	0x19f7
	.uleb128 0x31
	.long	.LASF227
	.byte	0x1
	.byte	0x8d
	.byte	0x6
	.quad	.LFB380
	.quad	.LFE380-.LFB380
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a81
	.uleb128 0x26
	.long	0x2546
	.quad	.LBI423
	.value	.LVU513
	.long	.Ldebug_ranges0+0x280
	.byte	0x1
	.byte	0x8e
	.byte	0x3
	.long	0x1a6d
	.uleb128 0x27
	.long	0x2557
	.long	.LLST66
	.long	.LVUS66
	.uleb128 0x2c
	.quad	.LVL130
	.long	0x2725
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC23
	.byte	0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL131
	.long	0x27aa
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF213
	.byte	0x1
	.byte	0x44
	.byte	0x5
	.long	0x43
	.quad	.LFB379
	.quad	.LFE379-.LFB379
	.uleb128 0x1
	.byte	0x9c
	.long	0x2479
	.uleb128 0x24
	.long	.LASF214
	.byte	0x1
	.byte	0x47
	.byte	0x9
	.long	0xc0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC9
	.byte	0x9f
	.uleb128 0x24
	.long	.LASF215
	.byte	0x1
	.byte	0x48
	.byte	0x9
	.long	0xc0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC12
	.byte	0x9f
	.uleb128 0x24
	.long	.LASF216
	.byte	0x1
	.byte	0x4d
	.byte	0x9
	.long	0xc0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC11
	.byte	0x9f
	.uleb128 0x24
	.long	.LASF217
	.byte	0x1
	.byte	0x4e
	.byte	0x9
	.long	0xc0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC14
	.byte	0x9f
	.uleb128 0x25
	.long	.LASF211
	.long	0x2489
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.11012
	.uleb128 0x26
	.long	0x24f4
	.quad	.LBI348
	.value	.LVU256
	.long	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0x50
	.byte	0x7
	.long	0x1bb6
	.uleb128 0x27
	.long	0x2511
	.long	.LLST38
	.long	.LVUS38
	.uleb128 0x27
	.long	0x2505
	.long	.LLST39
	.long	.LVUS39
	.uleb128 0x28
	.long	.Ldebug_ranges0+0xa0
	.uleb128 0x32
	.long	0x251d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	0x2529
	.long	.Ldebug_ranges0+0xf0
	.long	0x1b6e
	.uleb128 0x29
	.long	0x252a
	.long	.LLST40
	.long	.LVUS40
	.byte	0
	.uleb128 0x2c
	.quad	.LVL71
	.long	0x27b7
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x24f4
	.quad	.LBI357
	.value	.LVU291
	.long	.Ldebug_ranges0+0x130
	.byte	0x1
	.byte	0x54
	.byte	0x7
	.long	0x1c5a
	.uleb128 0x27
	.long	0x2511
	.long	.LLST41
	.long	.LVUS41
	.uleb128 0x27
	.long	0x2505
	.long	.LLST42
	.long	.LVUS42
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x130
	.uleb128 0x32
	.long	0x251d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	0x2529
	.long	.Ldebug_ranges0+0x180
	.long	0x1c12
	.uleb128 0x29
	.long	0x252a
	.long	.LLST43
	.long	.LVUS43
	.byte	0
	.uleb128 0x2c
	.quad	.LVL79
	.long	0x27b7
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x24ca
	.quad	.LBI368
	.value	.LVU341
	.long	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.byte	0x63
	.byte	0x17
	.long	0x1cb6
	.uleb128 0x27
	.long	0x24db
	.long	.LLST44
	.long	.LVUS44
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x1b0
	.uleb128 0x32
	.long	0x24e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.quad	.LVL89
	.long	0x27c4
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x24ca
	.quad	.LBI375
	.value	.LVU353
	.long	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.byte	0x68
	.byte	0x17
	.long	0x1d12
	.uleb128 0x27
	.long	0x24db
	.long	.LLST45
	.long	.LVUS45
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x1f0
	.uleb128 0x32
	.long	0x24e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.quad	.LVL92
	.long	0x27c4
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI378
	.value	.LVU363
	.quad	.LBB378
	.quad	.LBE378-.LBB378
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.long	0x1d8b
	.uleb128 0x27
	.long	0x2582
	.long	.LLST46
	.long	.LVUS46
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL95
	.long	0x26f6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.11012
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0x6a
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI380
	.value	.LVU368
	.quad	.LBB380
	.quad	.LBE380-.LBB380
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.long	0x1dc4
	.uleb128 0x27
	.long	0x2582
	.long	.LLST47
	.long	.LVUS47
	.uleb128 0x2b
	.long	0x2576
	.byte	0
	.uleb128 0x26
	.long	0x2565
	.quad	.LBI382
	.value	.LVU484
	.long	.Ldebug_ranges0+0x220
	.byte	0x1
	.byte	0x87
	.byte	0x5
	.long	0x1dfe
	.uleb128 0x27
	.long	0x2582
	.long	.LLST48
	.long	.LVUS48
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2e
	.quad	.LVL97
	.long	0x2702
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI385
	.value	.LVU373
	.quad	.LBB385
	.quad	.LBE385-.LBB385
	.byte	0x1
	.byte	0x87
	.byte	0x5
	.long	0x1e4a
	.uleb128 0x27
	.long	0x2582
	.long	.LLST49
	.long	.LVUS49
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL98
	.long	0x2713
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI387
	.value	.LVU385
	.quad	.LBB387
	.quad	.LBE387-.LBB387
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.long	0x1ec3
	.uleb128 0x27
	.long	0x2582
	.long	.LLST50
	.long	.LVUS50
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL101
	.long	0x26f6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.11012
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0x65
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI389
	.value	.LVU390
	.quad	.LBB389
	.quad	.LBE389-.LBB389
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.long	0x1efc
	.uleb128 0x27
	.long	0x2582
	.long	.LLST51
	.long	.LVUS51
	.uleb128 0x2b
	.long	0x2576
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI392
	.value	.LVU429
	.quad	.LBB392
	.quad	.LBE392-.LBB392
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.long	0x1f35
	.uleb128 0x27
	.long	0x2582
	.long	.LLST52
	.long	.LVUS52
	.uleb128 0x2b
	.long	0x2576
	.byte	0
	.uleb128 0x26
	.long	0x2565
	.quad	.LBI394
	.value	.LVU440
	.long	.Ldebug_ranges0+0x250
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.long	0x1f9c
	.uleb128 0x27
	.long	0x2582
	.long	.LLST53
	.long	.LVUS53
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL113
	.long	0x26f6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.11012
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI397
	.value	.LVU434
	.quad	.LBB397
	.quad	.LBE397-.LBB397
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.long	0x1fd5
	.uleb128 0x27
	.long	0x2582
	.long	.LLST54
	.long	.LVUS54
	.uleb128 0x2b
	.long	0x2576
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI400
	.value	.LVU446
	.quad	.LBB400
	.quad	.LBE400-.LBB400
	.byte	0x1
	.byte	0x76
	.byte	0x5
	.long	0x204e
	.uleb128 0x27
	.long	0x2582
	.long	.LLST55
	.long	.LVUS55
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL116
	.long	0x26f6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.11012
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0x76
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI402
	.value	.LVU451
	.quad	.LBB402
	.quad	.LBE402-.LBB402
	.byte	0x1
	.byte	0x76
	.byte	0x5
	.long	0x2087
	.uleb128 0x27
	.long	0x2582
	.long	.LLST56
	.long	.LVUS56
	.uleb128 0x2b
	.long	0x2576
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI404
	.value	.LVU457
	.quad	.LBB404
	.quad	.LBE404-.LBB404
	.byte	0x1
	.byte	0x7f
	.byte	0x5
	.long	0x2100
	.uleb128 0x27
	.long	0x2582
	.long	.LLST57
	.long	.LVUS57
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL118
	.long	0x26f6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.11012
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI406
	.value	.LVU462
	.quad	.LBB406
	.quad	.LBE406-.LBB406
	.byte	0x1
	.byte	0x7f
	.byte	0x5
	.long	0x2139
	.uleb128 0x27
	.long	0x2582
	.long	.LLST58
	.long	.LVUS58
	.uleb128 0x2b
	.long	0x2576
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI408
	.value	.LVU468
	.quad	.LBB408
	.quad	.LBE408-.LBB408
	.byte	0x1
	.byte	0x83
	.byte	0x5
	.long	0x21b2
	.uleb128 0x27
	.long	0x2582
	.long	.LLST59
	.long	.LVUS59
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL120
	.long	0x26f6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.11012
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0x83
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI410
	.value	.LVU473
	.quad	.LBB410
	.quad	.LBE410-.LBB410
	.byte	0x1
	.byte	0x83
	.byte	0x5
	.long	0x21eb
	.uleb128 0x27
	.long	0x2582
	.long	.LLST60
	.long	.LVUS60
	.uleb128 0x2b
	.long	0x2576
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI412
	.value	.LVU479
	.quad	.LBB412
	.quad	.LBE412-.LBB412
	.byte	0x1
	.byte	0x87
	.byte	0x5
	.long	0x2264
	.uleb128 0x27
	.long	0x2582
	.long	.LLST61
	.long	.LVUS61
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL122
	.long	0x26f6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.11012
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0x87
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI415
	.value	.LVU490
	.quad	.LBB415
	.quad	.LBE415-.LBB415
	.byte	0x1
	.byte	0x7b
	.byte	0x5
	.long	0x22dd
	.uleb128 0x27
	.long	0x2582
	.long	.LLST62
	.long	.LVUS62
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL124
	.long	0x26f6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.11012
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI417
	.value	.LVU495
	.quad	.LBB417
	.quad	.LBE417-.LBB417
	.byte	0x1
	.byte	0x7b
	.byte	0x5
	.long	0x2316
	.uleb128 0x27
	.long	0x2582
	.long	.LLST63
	.long	.LVUS63
	.uleb128 0x2b
	.long	0x2576
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI419
	.value	.LVU501
	.quad	.LBB419
	.quad	.LBE419-.LBB419
	.byte	0x1
	.byte	0x72
	.byte	0x5
	.long	0x238f
	.uleb128 0x27
	.long	0x2582
	.long	.LLST64
	.long	.LVUS64
	.uleb128 0x2b
	.long	0x2576
	.uleb128 0x2c
	.quad	.LVL126
	.long	0x26f6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.11012
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x2565
	.quad	.LBI421
	.value	.LVU506
	.quad	.LBB421
	.quad	.LBE421-.LBB421
	.byte	0x1
	.byte	0x72
	.byte	0x5
	.long	0x23c8
	.uleb128 0x27
	.long	0x2582
	.long	.LLST65
	.long	.LVUS65
	.uleb128 0x2b
	.long	0x2576
	.byte	0
	.uleb128 0x2f
	.quad	.LVL104
	.long	0x27d0
	.long	0x23e0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL105
	.long	0x27dd
	.long	0x23f8
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.quad	.LVL106
	.long	0x27e9
	.uleb128 0x2e
	.quad	.LVL107
	.long	0x27f6
	.uleb128 0x2f
	.quad	.LVL108
	.long	0x274a
	.long	0x2433
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.quad	.LVL109
	.long	0x2771
	.long	0x244f
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.quad	.LVL110
	.long	0x274a
	.long	0x246b
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2e
	.quad	.LVL128
	.long	0x277e
	.byte	0
	.uleb128 0xb
	.long	0x61
	.long	0x2489
	.uleb128 0xc
	.long	0x35
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.long	0x2479
	.uleb128 0x34
	.long	.LASF63
	.byte	0x1
	.byte	0x32
	.byte	0xc
	.long	0xc0b
	.byte	0x1
	.long	0x24c4
	.uleb128 0x35
	.string	"buf"
	.byte	0x1
	.byte	0x32
	.byte	0x1a
	.long	0x24c4
	.uleb128 0x36
	.long	.LASF218
	.byte	0x1
	.byte	0x32
	.byte	0x23
	.long	0x43
	.uleb128 0x37
	.long	.LASF220
	.byte	0x1
	.byte	0x33
	.byte	0x9
	.long	0xbff
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0xc0b
	.uleb128 0x38
	.long	.LASF222
	.byte	0x1
	.byte	0x2a
	.byte	0xa
	.long	0xd4
	.byte	0x1
	.long	0x24f4
	.uleb128 0x36
	.long	.LASF219
	.byte	0x1
	.byte	0x2a
	.byte	0x21
	.long	0x4a
	.uleb128 0x37
	.long	.LASF221
	.byte	0x1
	.byte	0x2b
	.byte	0x14
	.long	0x6f4
	.byte	0
	.uleb128 0x38
	.long	.LASF223
	.byte	0x1
	.byte	0x1f
	.byte	0x5
	.long	0x43
	.byte	0x1
	.long	0x2536
	.uleb128 0x36
	.long	.LASF224
	.byte	0x1
	.byte	0x1f
	.byte	0x1d
	.long	0x4a
	.uleb128 0x36
	.long	.LASF225
	.byte	0x1
	.byte	0x1f
	.byte	0x38
	.long	0xa9d
	.uleb128 0x37
	.long	.LASF226
	.byte	0x1
	.byte	0x20
	.byte	0x9
	.long	0x2536
	.uleb128 0x39
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.byte	0x22
	.byte	0x12
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x43
	.long	0x2546
	.uleb128 0xc
	.long	0x35
	.byte	0x5
	.byte	0
	.uleb128 0x3b
	.long	.LASF228
	.byte	0x4
	.byte	0x69
	.byte	0x1
	.long	0x43
	.byte	0x3
	.long	0x2565
	.uleb128 0x36
	.long	.LASF229
	.byte	0x4
	.byte	0x69
	.byte	0x20
	.long	0x55
	.uleb128 0x3c
	.byte	0
	.uleb128 0x3b
	.long	.LASF230
	.byte	0x4
	.byte	0x62
	.byte	0x1
	.long	0x43
	.byte	0x3
	.long	0x2590
	.uleb128 0x36
	.long	.LASF231
	.byte	0x4
	.byte	0x62
	.byte	0x1b
	.long	0x9f4
	.uleb128 0x36
	.long	.LASF229
	.byte	0x4
	.byte	0x62
	.byte	0x3c
	.long	0x55
	.uleb128 0x3c
	.byte	0
	.uleb128 0x34
	.long	.LASF232
	.byte	0x2
	.byte	0x22
	.byte	0x1
	.long	0x82
	.byte	0x3
	.long	0x25ae
	.uleb128 0x36
	.long	.LASF233
	.byte	0x2
	.byte	0x22
	.byte	0x18
	.long	0x82
	.byte	0
	.uleb128 0x3b
	.long	.LASF234
	.byte	0x3
	.byte	0x1f
	.byte	0x1
	.long	0xb9
	.byte	0x3
	.long	0x25e4
	.uleb128 0x36
	.long	.LASF235
	.byte	0x3
	.byte	0x1f
	.byte	0x1
	.long	0xbb
	.uleb128 0x36
	.long	.LASF236
	.byte	0x3
	.byte	0x1f
	.byte	0x1
	.long	0xa3f
	.uleb128 0x36
	.long	.LASF237
	.byte	0x3
	.byte	0x1f
	.byte	0x1
	.long	0x29
	.byte	0
	.uleb128 0x3d
	.long	0x24f4
	.quad	.LFB376
	.quad	.LFE376-.LFB376
	.uleb128 0x1
	.byte	0x9c
	.long	0x2694
	.uleb128 0x27
	.long	0x2505
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x27
	.long	0x2511
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0x32
	.long	0x251d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3e
	.long	0x2529
	.quad	.LBB277
	.quad	.LBE277-.LBB277
	.long	0x2648
	.uleb128 0x29
	.long	0x252a
	.long	.LLST36
	.long	.LVUS36
	.byte	0
	.uleb128 0x2f
	.quad	.LVL54
	.long	0x27b7
	.long	0x2686
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2e
	.quad	.LVL65
	.long	0x277e
	.byte	0
	.uleb128 0x3d
	.long	0x24ca
	.quad	.LFB377
	.quad	.LFE377-.LFB377
	.uleb128 0x1
	.byte	0x9c
	.long	0x26f6
	.uleb128 0x27
	.long	0x24db
	.long	.LLST37
	.long	.LVUS37
	.uleb128 0x32
	.long	0x24e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.quad	.LVL68
	.long	0x27c4
	.long	0x26e8
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2e
	.quad	.LVL69
	.long	0x277e
	.byte	0
	.uleb128 0x3f
	.long	.LASF244
	.long	.LASF244
	.byte	0x4
	.byte	0x58
	.byte	0xc
	.uleb128 0x40
	.long	.LASF238
	.long	.LASF240
	.byte	0x1b
	.byte	0
	.uleb128 0x41
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x2
	.byte	0xa
	.byte	0
	.uleb128 0x40
	.long	.LASF239
	.long	.LASF241
	.byte	0x1b
	.byte	0
	.uleb128 0x41
	.uleb128 0x5
	.byte	0x9e
	.uleb128 0x3
	.byte	0x61
	.byte	0xa
	.byte	0
	.uleb128 0x40
	.long	.LASF242
	.long	.LASF243
	.byte	0x1b
	.byte	0
	.uleb128 0x42
	.long	.LASF245
	.long	.LASF245
	.byte	0x1c
	.value	0x2a8
	.byte	0x5
	.uleb128 0x42
	.long	.LASF246
	.long	.LASF246
	.byte	0x1c
	.value	0x351
	.byte	0x13
	.uleb128 0x42
	.long	.LASF247
	.long	.LASF247
	.byte	0x1c
	.value	0x246
	.byte	0x10
	.uleb128 0x42
	.long	.LASF248
	.long	.LASF248
	.byte	0x1c
	.value	0x24a
	.byte	0x10
	.uleb128 0x42
	.long	.LASF249
	.long	.LASF249
	.byte	0x1c
	.value	0x24c
	.byte	0x10
	.uleb128 0x42
	.long	.LASF250
	.long	.LASF250
	.byte	0x1c
	.value	0x2ac
	.byte	0x5
	.uleb128 0x43
	.long	.LASF266
	.long	.LASF266
	.uleb128 0x3f
	.long	.LASF251
	.long	.LASF251
	.byte	0x1a
	.byte	0x20
	.byte	0x6
	.uleb128 0x3f
	.long	.LASF252
	.long	.LASF252
	.byte	0x1a
	.byte	0x1e
	.byte	0x5
	.uleb128 0x41
	.uleb128 0x9
	.byte	0x9e
	.uleb128 0x7
	.byte	0x74
	.byte	0x72
	.byte	0x61
	.byte	0x70
	.byte	0x21
	.byte	0xa
	.byte	0
	.uleb128 0x42
	.long	.LASF253
	.long	.LASF253
	.byte	0x1d
	.value	0x269
	.byte	0xd
	.uleb128 0x42
	.long	.LASF254
	.long	.LASF255
	.byte	0x16
	.value	0x19c
	.byte	0xc
	.uleb128 0x3f
	.long	.LASF256
	.long	.LASF256
	.byte	0x1e
	.byte	0x3a
	.byte	0xc
	.uleb128 0x42
	.long	.LASF257
	.long	.LASF257
	.byte	0x1d
	.value	0x21b
	.byte	0xe
	.uleb128 0x3f
	.long	.LASF258
	.long	.LASF258
	.byte	0x1f
	.byte	0x2a
	.byte	0x5
	.uleb128 0x42
	.long	.LASF259
	.long	.LASF259
	.byte	0x1c
	.value	0x2a7
	.byte	0x11
	.uleb128 0x42
	.long	.LASF260
	.long	.LASF260
	.byte	0x1c
	.value	0x332
	.byte	0x13
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 0
.LLST0:
	.quad	.LVL0
	.quad	.LVL16
	.value	0x1
	.byte	0x55
	.quad	.LVL16
	.quad	.LVL48
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.quad	.LVL48
	.quad	.LVL50
	.value	0x1
	.byte	0x55
	.quad	.LVL50
	.quad	.LFE382
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 0
.LLST1:
	.quad	.LVL0
	.quad	.LVL18-1
	.value	0x1
	.byte	0x54
	.quad	.LVL18-1
	.quad	.LVL44
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.quad	.LVL44
	.quad	.LVL48
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL48
	.quad	.LVL50
	.value	0x1
	.byte	0x54
	.quad	.LVL50
	.quad	.LFE382
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 .LVU177
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 .LVU190
.LLST2:
	.quad	.LVL43
	.quad	.LVL43
	.value	0x5
	.byte	0x56
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL43
	.quad	.LVL44
	.value	0x9
	.byte	0x56
	.byte	0x93
	.uleb128 0x8
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.quad	.LVL44
	.quad	.LVL47
	.value	0x5
	.byte	0x56
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x8
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 .LVU12
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 0
.LLST3:
	.quad	.LVL1
	.quad	.LVL16
	.value	0x1
	.byte	0x55
	.quad	.LVL16
	.quad	.LVL48
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.quad	.LVL48
	.quad	.LVL50
	.value	0x1
	.byte	0x55
	.quad	.LVL50
	.quad	.LFE382
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU6
	.uleb128 .LVU23
	.uleb128 .LVU191
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU198
.LLST4:
	.quad	.LVL1
	.quad	.LVL4
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL48
	.quad	.LVL48
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL48
	.quad	.LVL50
	.value	0x6
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x23
	.uleb128 0xe
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU7
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU23
	.uleb128 .LVU191
	.uleb128 .LVU198
.LLST5:
	.quad	.LVL1
	.quad	.LVL4
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL4
	.quad	.LVL4
	.value	0x3
	.byte	0x75
	.sleb128 14
	.byte	0x9f
	.quad	.LVL48
	.quad	.LVL50
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU26
	.uleb128 .LVU190
	.uleb128 .LVU197
	.uleb128 .LVU198
.LLST6:
	.quad	.LVL5
	.quad	.LVL47
	.value	0x1
	.byte	0x56
	.quad	.LVL49
	.quad	.LVL50
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU27
	.uleb128 .LVU190
.LLST7:
	.quad	.LVL5
	.quad	.LVL47
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU28
	.uleb128 .LVU190
.LLST8:
	.quad	.LVL5
	.quad	.LVL47
	.value	0x3
	.byte	0x76
	.sleb128 14
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 .LVU29
	.uleb128 .LVU34
.LLST9:
	.quad	.LVL5
	.quad	.LVL6
	.value	0x2
	.byte	0x3e
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 .LVU29
	.uleb128 .LVU34
.LLST10:
	.quad	.LVL5
	.quad	.LVL6
	.value	0xa
	.byte	0x3
	.quad	new_eth_body
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 .LVU29
	.uleb128 .LVU34
.LLST11:
	.quad	.LVL5
	.quad	.LVL6
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU40
	.uleb128 .LVU42
.LLST12:
	.quad	.LVL7
	.quad	.LVL7
	.value	0x2
	.byte	0x44
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU40
	.uleb128 .LVU42
	.uleb128 .LVU47
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU64
.LLST13:
	.quad	.LVL7
	.quad	.LVL7
	.value	0xa
	.byte	0x3
	.quad	new_ip_body
	.byte	0x9f
	.quad	.LVL8
	.quad	.LVL8
	.value	0xa
	.byte	0x3
	.quad	new_ip_body+16
	.byte	0x9f
	.quad	.LVL8
	.quad	.LVL8
	.value	0xa
	.byte	0x3
	.quad	new_ip_body+18
	.byte	0x9f
	.quad	.LVL8
	.quad	.LVL14
	.value	0xa
	.byte	0x3
	.quad	new_ip_body+20
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU41
	.uleb128 .LVU42
	.uleb128 .LVU53
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU64
.LLST14:
	.quad	.LVL7
	.quad	.LVL7
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL10
	.quad	.LVL11
	.value	0x1
	.byte	0x51
	.quad	.LVL11
	.quad	.LVL12
	.value	0x1
	.byte	0x50
	.quad	.LVL12
	.quad	.LVL13
	.value	0x23
	.byte	0x3
	.quad	new_ip_body+16
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x3
	.quad	new_ip_body+18
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x81
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL13
	.quad	.LVL14
	.value	0x1
	.byte	0x50
	.quad	.LVL14
	.quad	.LVL14
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU67
	.uleb128 .LVU72
.LLST15:
	.quad	.LVL15
	.quad	.LVL17
	.value	0x2
	.byte	0x44
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU67
	.uleb128 .LVU72
.LLST16:
	.quad	.LVL15
	.quad	.LVL17
	.value	0xa
	.byte	0x3
	.quad	new_ip_body
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU67
	.uleb128 .LVU72
.LLST17:
	.quad	.LVL15
	.quad	.LVL17
	.value	0x3
	.byte	0x76
	.sleb128 14
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU79
	.uleb128 .LVU82
.LLST18:
	.quad	.LVL19
	.quad	.LVL20
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU84
	.uleb128 .LVU87
.LLST19:
	.quad	.LVL20
	.quad	.LVL21
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU89
	.uleb128 .LVU92
.LLST20:
	.quad	.LVL21
	.quad	.LVL22
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+9997
	.sleb128 0
	.quad	0
	.quad	0
.LVUS21:
	.uleb128 .LVU99
	.uleb128 .LVU102
.LLST21:
	.quad	.LVL25
	.quad	.LVL26
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS22:
	.uleb128 .LVU104
	.uleb128 .LVU107
.LLST22:
	.quad	.LVL26
	.quad	.LVL27
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS23:
	.uleb128 .LVU109
	.uleb128 .LVU112
.LLST23:
	.quad	.LVL27
	.quad	.LVL28
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+9997
	.sleb128 0
	.quad	0
	.quad	0
.LVUS24:
	.uleb128 .LVU119
	.uleb128 .LVU122
.LLST24:
	.quad	.LVL30
	.quad	.LVL31
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS25:
	.uleb128 .LVU124
	.uleb128 .LVU127
.LLST25:
	.quad	.LVL31
	.quad	.LVL32
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS26:
	.uleb128 .LVU129
	.uleb128 .LVU132
.LLST26:
	.quad	.LVL32
	.quad	.LVL33
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+9997
	.sleb128 0
	.quad	0
	.quad	0
.LVUS27:
	.uleb128 .LVU141
	.uleb128 .LVU144
.LLST27:
	.quad	.LVL35
	.quad	.LVL36
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS28:
	.uleb128 .LVU146
	.uleb128 .LVU149
.LLST28:
	.quad	.LVL36
	.quad	.LVL37
	.value	0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS29:
	.uleb128 .LVU151
	.uleb128 .LVU154
.LLST29:
	.quad	.LVL37
	.quad	.LVL38
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+9997
	.sleb128 0
	.quad	0
	.quad	0
.LVUS30:
	.uleb128 .LVU161
	.uleb128 .LVU164
.LLST30:
	.quad	.LVL40
	.quad	.LVL41
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS31:
	.uleb128 .LVU166
	.uleb128 .LVU169
.LLST31:
	.quad	.LVL41
	.quad	.LVL42
	.value	0xa
	.byte	0x3
	.quad	.LC6
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS32:
	.uleb128 .LVU171
	.uleb128 .LVU174
.LLST32:
	.quad	.LVL42
	.quad	.LVL43
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+9997
	.sleb128 0
	.quad	0
	.quad	0
.LVUS33:
	.uleb128 .LVU183
	.uleb128 .LVU186
.LLST33:
	.quad	.LVL45
	.quad	.LVL46
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+10014
	.sleb128 0
	.quad	0
	.quad	0
.LVUS67:
	.uleb128 .LVU548
	.uleb128 .LVU553
	.uleb128 .LVU553
	.uleb128 .LVU569
.LLST67:
	.quad	.LVL139
	.quad	.LVL140
	.value	0x1
	.byte	0x50
	.quad	.LVL140
	.quad	.LVL144
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS68:
	.uleb128 .LVU528
	.uleb128 .LVU531
.LLST68:
	.quad	.LVL133
	.quad	.LVL134
	.value	0xa
	.byte	0x3
	.quad	.LC25
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS69:
	.uleb128 .LVU533
	.uleb128 .LVU536
.LLST69:
	.quad	.LVL134
	.quad	.LVL135
	.value	0xa
	.byte	0x3
	.quad	.LC26
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS70:
	.uleb128 .LVU538
	.uleb128 .LVU541
.LLST70:
	.quad	.LVL135
	.quad	.LVL136
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+9997
	.sleb128 0
	.quad	0
	.quad	0
.LVUS71:
	.uleb128 .LVU550
	.uleb128 .LVU554
.LLST71:
	.quad	.LVL139
	.quad	.LVL141
	.value	0xa
	.byte	0x3
	.quad	.LC25
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS72:
	.uleb128 .LVU550
	.uleb128 .LVU554
.LLST72:
	.quad	.LVL139
	.quad	.LVL141-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS73:
	.uleb128 .LVU556
	.uleb128 .LVU559
.LLST73:
	.quad	.LVL141
	.quad	.LVL142
	.value	0xa
	.byte	0x3
	.quad	.LC27
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS74:
	.uleb128 .LVU561
	.uleb128 .LVU564
.LLST74:
	.quad	.LVL142
	.quad	.LVL143
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+9997
	.sleb128 0
	.quad	0
	.quad	0
.LVUS75:
	.uleb128 .LVU572
	.uleb128 .LVU575
.LLST75:
	.quad	.LVL145
	.quad	.LVL146
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS76:
	.uleb128 .LVU577
	.uleb128 .LVU580
.LLST76:
	.quad	.LVL146
	.quad	.LVL147
	.value	0xa
	.byte	0x3
	.quad	.LC24
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS77:
	.uleb128 .LVU582
	.uleb128 .LVU585
.LLST77:
	.quad	.LVL147
	.quad	.LVL148
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+9997
	.sleb128 0
	.quad	0
	.quad	0
.LVUS66:
	.uleb128 .LVU513
	.uleb128 .LVU518
.LLST66:
	.quad	.LVL129
	.quad	.LVL130
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+10143
	.sleb128 0
	.quad	0
	.quad	0
.LVUS38:
	.uleb128 .LVU256
	.uleb128 .LVU289
.LLST38:
	.quad	.LVL70
	.quad	.LVL78
	.value	0xa
	.byte	0x3
	.quad	new_eth_body+6
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS39:
	.uleb128 .LVU256
	.uleb128 .LVU289
.LLST39:
	.quad	.LVL70
	.quad	.LVL78
	.value	0xa
	.byte	0x3
	.quad	.LC9
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS40:
	.uleb128 .LVU261
	.uleb128 .LVU266
	.uleb128 .LVU266
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 .LVU274
	.uleb128 .LVU274
	.uleb128 .LVU278
	.uleb128 .LVU278
	.uleb128 .LVU282
	.uleb128 .LVU282
	.uleb128 .LVU288
	.uleb128 .LVU288
	.uleb128 .LVU289
.LLST40:
	.quad	.LVL72
	.quad	.LVL73
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL73
	.quad	.LVL74
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL74
	.quad	.LVL75
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL75
	.quad	.LVL76
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL76
	.quad	.LVL77
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL77
	.quad	.LVL78
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL78
	.quad	.LVL78
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS41:
	.uleb128 .LVU291
	.uleb128 .LVU325
.LLST41:
	.quad	.LVL78
	.quad	.LVL86
	.value	0xa
	.byte	0x3
	.quad	new_eth_body
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS42:
	.uleb128 .LVU291
	.uleb128 .LVU325
.LLST42:
	.quad	.LVL78
	.quad	.LVL86
	.value	0xa
	.byte	0x3
	.quad	.LC11
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS43:
	.uleb128 .LVU296
	.uleb128 .LVU304
	.uleb128 .LVU304
	.uleb128 .LVU308
	.uleb128 .LVU308
	.uleb128 .LVU312
	.uleb128 .LVU312
	.uleb128 .LVU316
	.uleb128 .LVU316
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 .LVU324
	.uleb128 .LVU324
	.uleb128 .LVU325
.LLST43:
	.quad	.LVL80
	.quad	.LVL81
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL81
	.quad	.LVL82
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL82
	.quad	.LVL83
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL83
	.quad	.LVL84
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL84
	.quad	.LVL85
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL85
	.quad	.LVL86
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL86
	.quad	.LVL86
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS44:
	.uleb128 .LVU341
	.uleb128 .LVU348
.LLST44:
	.quad	.LVL88
	.quad	.LVL90
	.value	0xa
	.byte	0x3
	.quad	.LC12
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS45:
	.uleb128 .LVU353
	.uleb128 .LVU358
	.uleb128 .LVU393
	.uleb128 .LVU396
.LLST45:
	.quad	.LVL91
	.quad	.LVL93
	.value	0xa
	.byte	0x3
	.quad	.LC14
	.byte	0x9f
	.quad	.LVL102
	.quad	.LVL103
	.value	0xa
	.byte	0x3
	.quad	.LC14
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS46:
	.uleb128 .LVU363
	.uleb128 .LVU366
.LLST46:
	.quad	.LVL94
	.quad	.LVL95
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS47:
	.uleb128 .LVU368
	.uleb128 .LVU371
.LLST47:
	.quad	.LVL95
	.quad	.LVL96
	.value	0xa
	.byte	0x3
	.quad	.LC15
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS48:
	.uleb128 .LVU484
	.uleb128 .LVU487
.LLST48:
	.quad	.LVL122
	.quad	.LVL123
	.value	0xa
	.byte	0x3
	.quad	.LC22
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS49:
	.uleb128 .LVU373
	.uleb128 .LVU376
.LLST49:
	.quad	.LVL97
	.quad	.LVL98
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+9997
	.sleb128 0
	.quad	0
	.quad	0
.LVUS50:
	.uleb128 .LVU385
	.uleb128 .LVU388
.LLST50:
	.quad	.LVL100
	.quad	.LVL101
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS51:
	.uleb128 .LVU390
	.uleb128 .LVU393
.LLST51:
	.quad	.LVL101
	.quad	.LVL102
	.value	0xa
	.byte	0x3
	.quad	.LC13
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS52:
	.uleb128 .LVU429
	.uleb128 .LVU432
.LLST52:
	.quad	.LVL111
	.quad	.LVL112
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS53:
	.uleb128 .LVU440
	.uleb128 .LVU443
.LLST53:
	.quad	.LVL114
	.quad	.LVL115
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS54:
	.uleb128 .LVU434
	.uleb128 .LVU437
.LLST54:
	.quad	.LVL113
	.quad	.LVL114
	.value	0xa
	.byte	0x3
	.quad	.LC10
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS55:
	.uleb128 .LVU446
	.uleb128 .LVU449
.LLST55:
	.quad	.LVL115
	.quad	.LVL116
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS56:
	.uleb128 .LVU451
	.uleb128 .LVU454
.LLST56:
	.quad	.LVL116
	.quad	.LVL117
	.value	0xa
	.byte	0x3
	.quad	.LC18
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS57:
	.uleb128 .LVU457
	.uleb128 .LVU460
.LLST57:
	.quad	.LVL117
	.quad	.LVL118
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS58:
	.uleb128 .LVU462
	.uleb128 .LVU465
.LLST58:
	.quad	.LVL118
	.quad	.LVL119
	.value	0xa
	.byte	0x3
	.quad	.LC20
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS59:
	.uleb128 .LVU468
	.uleb128 .LVU471
.LLST59:
	.quad	.LVL119
	.quad	.LVL120
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS60:
	.uleb128 .LVU473
	.uleb128 .LVU476
.LLST60:
	.quad	.LVL120
	.quad	.LVL121
	.value	0xa
	.byte	0x3
	.quad	.LC21
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS61:
	.uleb128 .LVU479
	.uleb128 .LVU482
.LLST61:
	.quad	.LVL121
	.quad	.LVL122
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS62:
	.uleb128 .LVU490
	.uleb128 .LVU493
.LLST62:
	.quad	.LVL123
	.quad	.LVL124
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS63:
	.uleb128 .LVU495
	.uleb128 .LVU498
.LLST63:
	.quad	.LVL124
	.quad	.LVL125
	.value	0xa
	.byte	0x3
	.quad	.LC19
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS64:
	.uleb128 .LVU501
	.uleb128 .LVU504
.LLST64:
	.quad	.LVL125
	.quad	.LVL126
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS65:
	.uleb128 .LVU506
	.uleb128 .LVU509
.LLST65:
	.quad	.LVL126
	.quad	.LVL127
	.value	0xa
	.byte	0x3
	.quad	.LC17
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS34:
	.uleb128 0
	.uleb128 .LVU207
	.uleb128 .LVU207
	.uleb128 0
.LLST34:
	.quad	.LVL52
	.quad	.LVL54-1
	.value	0x1
	.byte	0x55
	.quad	.LVL54-1
	.quad	.LFE376
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS35:
	.uleb128 0
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU234
	.uleb128 .LVU234
	.uleb128 .LVU235
	.uleb128 .LVU235
	.uleb128 0
.LLST35:
	.quad	.LVL52
	.quad	.LVL53
	.value	0x1
	.byte	0x54
	.quad	.LVL53
	.quad	.LVL63
	.value	0x1
	.byte	0x56
	.quad	.LVL63
	.quad	.LVL64
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL64
	.quad	.LFE376
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS36:
	.uleb128 .LVU208
	.uleb128 .LVU211
	.uleb128 .LVU211
	.uleb128 .LVU215
	.uleb128 .LVU215
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 .LVU227
	.uleb128 .LVU227
	.uleb128 .LVU231
	.uleb128 .LVU231
	.uleb128 .LVU233
.LLST36:
	.quad	.LVL55
	.quad	.LVL56
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL56
	.quad	.LVL57
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL57
	.quad	.LVL58
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL58
	.quad	.LVL59
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL59
	.quad	.LVL60
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL60
	.quad	.LVL61
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL61
	.quad	.LVL62
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS37:
	.uleb128 0
	.uleb128 .LVU241
	.uleb128 .LVU241
	.uleb128 .LVU245
	.uleb128 .LVU245
	.uleb128 0
.LLST37:
	.quad	.LVL66
	.quad	.LVL67
	.value	0x1
	.byte	0x55
	.quad	.LVL67
	.quad	.LVL68-1
	.value	0x1
	.byte	0x54
	.quad	.LVL68-1
	.quad	.LFE377
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB381
	.quad	.LFE381-.LFB381
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB230
	.quad	.LBE230
	.quad	.LBB237
	.quad	.LBE237
	.quad	0
	.quad	0
	.quad	.LBB233
	.quad	.LBE233
	.quad	.LBB238
	.quad	.LBE238
	.quad	.LBB239
	.quad	.LBE239
	.quad	0
	.quad	0
	.quad	.LBB240
	.quad	.LBE240
	.quad	.LBB243
	.quad	.LBE243
	.quad	0
	.quad	0
	.quad	.LBB348
	.quad	.LBE348
	.quad	.LBB356
	.quad	.LBE356
	.quad	.LBB364
	.quad	.LBE364
	.quad	.LBB366
	.quad	.LBE366
	.quad	0
	.quad	0
	.quad	.LBB350
	.quad	.LBE350
	.quad	.LBB351
	.quad	.LBE351
	.quad	.LBB352
	.quad	.LBE352
	.quad	0
	.quad	0
	.quad	.LBB357
	.quad	.LBE357
	.quad	.LBB365
	.quad	.LBE365
	.quad	.LBB367
	.quad	.LBE367
	.quad	.LBB373
	.quad	.LBE373
	.quad	0
	.quad	0
	.quad	.LBB359
	.quad	.LBE359
	.quad	.LBB360
	.quad	.LBE360
	.quad	0
	.quad	0
	.quad	.LBB368
	.quad	.LBE368
	.quad	.LBB372
	.quad	.LBE372
	.quad	.LBB374
	.quad	.LBE374
	.quad	0
	.quad	0
	.quad	.LBB375
	.quad	.LBE375
	.quad	.LBB391
	.quad	.LBE391
	.quad	0
	.quad	0
	.quad	.LBB382
	.quad	.LBE382
	.quad	.LBB414
	.quad	.LBE414
	.quad	0
	.quad	0
	.quad	.LBB394
	.quad	.LBE394
	.quad	.LBB399
	.quad	.LBE399
	.quad	0
	.quad	0
	.quad	.LBB423
	.quad	.LBE423
	.quad	.LBB426
	.quad	.LBE426
	.quad	0
	.quad	0
	.quad	.LBB433
	.quad	.LBE433
	.quad	.LBB436
	.quad	.LBE436
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB381
	.quad	.LFE381
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF119:
	.string	"ASN1_ITEM"
.LASF204:
	.string	"icmph"
.LASF231:
	.string	"__stream"
.LASF7:
	.string	"size_t"
.LASF41:
	.string	"flow_lbl"
.LASF168:
	.string	"ASN1_SEQUENCE_ANY_it"
.LASF23:
	.string	"h_source"
.LASF229:
	.string	"__fmt"
.LASF155:
	.string	"_IO_codecvt"
.LASF68:
	.string	"solicited"
.LASF216:
	.string	"dest_mac_string"
.LASF261:
	.string	"GNU C17 9.4.0 -mtune=generic -march=x86-64 -g -O3 -ffixed-rbx -ffixed-r12 -ffixed-r13 -ffixed-r14 -ffixed-r15 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF226:
	.string	"values"
.LASF135:
	.string	"_IO_save_end"
.LASF246:
	.string	"EVP_aes_256_gcm"
.LASF118:
	.string	"in6addr_loopback"
.LASF250:
	.string	"EVP_CIPHER_CTX_ctrl"
.LASF107:
	.string	"IPPROTO_MTP"
.LASF17:
	.string	"__u16"
.LASF262:
	.string	"u_openssl_vpn.c"
.LASF232:
	.string	"__bswap_16"
.LASF211:
	.string	"__func__"
.LASF45:
	.string	"udphdr"
.LASF185:
	.string	"ASN1_T61STRING_it"
.LASF16:
	.string	"__u8"
.LASF25:
	.string	"ethhdr"
.LASF128:
	.string	"_IO_write_base"
.LASF109:
	.string	"IPPROTO_ENCAP"
.LASF256:
	.string	"inet_pton"
.LASF144:
	.string	"_lock"
.LASF242:
	.string	"puts"
.LASF61:
	.string	"type"
.LASF133:
	.string	"_IO_save_base"
.LASF205:
	.string	"icmp6h"
.LASF137:
	.string	"_chain"
.LASF201:
	.string	"iph6"
.LASF76:
	.string	"rt_lifetime"
.LASF18:
	.string	"__u32"
.LASF141:
	.string	"_cur_column"
.LASF160:
	.string	"sys_nerr"
.LASF247:
	.string	"EVP_EncryptInit_ex"
.LASF50:
	.string	"res1"
.LASF98:
	.string	"IPPROTO_UDP"
.LASF120:
	.string	"EVP_CIPHER_CTX"
.LASF10:
	.string	"long int"
.LASF253:
	.string	"exit"
.LASF84:
	.string	"icmp6_type"
.LASF85:
	.string	"icmp6_code"
.LASF69:
	.string	"router"
.LASF244:
	.string	"__fprintf_chk"
.LASF154:
	.string	"_IO_marker"
.LASF212:
	.string	"main"
.LASF53:
	.string	"urg_ptr"
.LASF26:
	.string	"iphdr"
.LASF227:
	.string	"trap"
.LASF252:
	.string	"nfc_run"
.LASF175:
	.string	"ASN1_OCTET_STRING_it"
.LASF89:
	.string	"in_addr"
.LASF5:
	.string	"signed char"
.LASF93:
	.string	"IPPROTO_IGMP"
.LASF123:
	.string	"_IO_FILE"
.LASF164:
	.string	"__timezone"
.LASF156:
	.string	"_IO_wide_data"
.LASF64:
	.string	"icmpv6_echo"
.LASF3:
	.string	"unsigned char"
.LASF148:
	.string	"_freeres_list"
.LASF121:
	.string	"ASN1_ITEM_st"
.LASF60:
	.string	"icmphdr"
.LASF72:
	.string	"router_pref"
.LASF122:
	.string	"evp_cipher_ctx_st"
.LASF86:
	.string	"icmp6_cksum"
.LASF162:
	.string	"__tzname"
.LASF91:
	.string	"IPPROTO_IP"
.LASF81:
	.string	"u_nd_advt"
.LASF2:
	.string	"char"
.LASF48:
	.string	"tcphdr"
.LASF224:
	.string	"mac_string"
.LASF264:
	.string	"_IO_lock_t"
.LASF8:
	.string	"__uint16_t"
.LASF110:
	.string	"IPPROTO_PIM"
.LASF186:
	.string	"ASN1_IA5STRING_it"
.LASF74:
	.string	"other"
.LASF104:
	.string	"IPPROTO_GRE"
.LASF46:
	.string	"source"
.LASF167:
	.string	"timezone"
.LASF102:
	.string	"IPPROTO_IPV6"
.LASF125:
	.string	"_IO_read_ptr"
.LASF157:
	.string	"stdin"
.LASF161:
	.string	"sys_errlist"
.LASF44:
	.string	"hop_limit"
.LASF158:
	.string	"stdout"
.LASF136:
	.string	"_markers"
.LASF117:
	.string	"in6addr_any"
.LASF215:
	.string	"source_ip_string"
.LASF51:
	.string	"doff"
.LASF220:
	.string	"cksum"
.LASF228:
	.string	"printf"
.LASF79:
	.string	"un_data8"
.LASF43:
	.string	"nexthdr"
.LASF22:
	.string	"h_dest"
.LASF263:
	.string	"/home/ehehe/NFC2020-backup/data/daemon/NF_pool/u_openssl_vpn"
.LASF203:
	.string	"udph"
.LASF265:
	.string	"nfc_cb"
.LASF88:
	.string	"in_addr_t"
.LASF169:
	.string	"ASN1_SET_ANY_it"
.LASF124:
	.string	"_flags"
.LASF145:
	.string	"_offset"
.LASF80:
	.string	"u_echo"
.LASF92:
	.string	"IPPROTO_ICMP"
.LASF105:
	.string	"IPPROTO_ESP"
.LASF113:
	.string	"IPPROTO_UDPLITE"
.LASF240:
	.string	"__builtin_fwrite"
.LASF0:
	.string	"long unsigned int"
.LASF172:
	.string	"ASN1_BIT_STRING_it"
.LASF31:
	.string	"check"
.LASF233:
	.string	"__bsx"
.LASF213:
	.string	"setup_new_hdr"
.LASF139:
	.string	"_flags2"
.LASF116:
	.string	"IPPROTO_MAX"
.LASF127:
	.string	"_IO_read_base"
.LASF115:
	.string	"IPPROTO_RAW"
.LASF152:
	.string	"_unused2"
.LASF42:
	.string	"payload_len"
.LASF230:
	.string	"fprintf"
.LASF140:
	.string	"_old_offset"
.LASF103:
	.string	"IPPROTO_RSVP"
.LASF82:
	.string	"u_nd_ra"
.LASF49:
	.string	"ack_seq"
.LASF210:
	.string	"final_len"
.LASF9:
	.string	"__uint32_t"
.LASF266:
	.string	"__stack_chk_fail"
.LASF30:
	.string	"protocol"
.LASF208:
	.string	"new_iph"
.LASF14:
	.string	"long long int"
.LASF259:
	.string	"EVP_CIPHER_CTX_new"
.LASF56:
	.string	"echo"
.LASF196:
	.string	"new_ip_body"
.LASF179:
	.string	"ASN1_NULL_it"
.LASF241:
	.string	"__builtin_fputc"
.LASF260:
	.string	"EVP_aes_128_gcm"
.LASF193:
	.string	"double"
.LASF130:
	.string	"_IO_write_end"
.LASF255:
	.string	"sscanf"
.LASF21:
	.string	"__sum16"
.LASF222:
	.string	"convert_ip"
.LASF249:
	.string	"EVP_EncryptFinal_ex"
.LASF101:
	.string	"IPPROTO_DCCP"
.LASF221:
	.string	"addr"
.LASF209:
	.string	"update_len"
.LASF131:
	.string	"_IO_buf_base"
.LASF4:
	.string	"unsigned int"
.LASF32:
	.string	"saddr"
.LASF33:
	.string	"daddr"
.LASF83:
	.string	"icmp6hdr"
.LASF165:
	.string	"tzname"
.LASF150:
	.string	"__pad5"
.LASF35:
	.string	"u6_addr16"
.LASF184:
	.string	"ASN1_PRINTABLESTRING_it"
.LASF189:
	.string	"ASN1_GENERALIZEDTIME_it"
.LASF67:
	.string	"override"
.LASF54:
	.string	"sequence"
.LASF73:
	.string	"home_agent"
.LASF151:
	.string	"_mode"
.LASF188:
	.string	"ASN1_UTCTIME_it"
.LASF146:
	.string	"_codecvt"
.LASF37:
	.string	"in6_addr"
.LASF29:
	.string	"frag_off"
.LASF52:
	.string	"window"
.LASF100:
	.string	"IPPROTO_TP"
.LASF245:
	.string	"EVP_CIPHER_CTX_reset"
.LASF55:
	.string	"__unused"
.LASF28:
	.string	"tot_len"
.LASF19:
	.string	"__be16"
.LASF171:
	.string	"ASN1_OBJECT_it"
.LASF192:
	.string	"long double"
.LASF36:
	.string	"u6_addr32"
.LASF195:
	.string	"new_eth_body"
.LASF202:
	.string	"tcph"
.LASF153:
	.string	"FILE"
.LASF63:
	.string	"checksum"
.LASF243:
	.string	"__builtin_puts"
.LASF200:
	.string	"info"
.LASF112:
	.string	"IPPROTO_SCTP"
.LASF97:
	.string	"IPPROTO_PUP"
.LASF218:
	.string	"size"
.LASF13:
	.string	"long long unsigned int"
.LASF194:
	.string	"pkt_info"
.LASF11:
	.string	"__off_t"
.LASF20:
	.string	"__be32"
.LASF258:
	.string	"RAND_bytes"
.LASF99:
	.string	"IPPROTO_IDP"
.LASF199:
	.string	"tmp3"
.LASF178:
	.string	"ASN1_UTF8STRING_it"
.LASF149:
	.string	"_freeres_buf"
.LASF66:
	.string	"icmpv6_nd_advt"
.LASF114:
	.string	"IPPROTO_MPLS"
.LASF198:
	.string	"tag_len"
.LASF177:
	.string	"ASN1_UNIVERSALSTRING_it"
.LASF183:
	.string	"DISPLAYTEXT_it"
.LASF27:
	.string	"version"
.LASF173:
	.string	"ASN1_INTEGER_it"
.LASF206:
	.string	"new_pkt"
.LASF134:
	.string	"_IO_backup_base"
.LASF143:
	.string	"_shortbuf"
.LASF181:
	.string	"ASN1_PRINTABLE_it"
.LASF47:
	.string	"dest"
.LASF257:
	.string	"malloc"
.LASF187:
	.string	"ASN1_GENERALSTRING_it"
.LASF12:
	.string	"__off64_t"
.LASF62:
	.string	"code"
.LASF78:
	.string	"un_data16"
.LASF96:
	.string	"IPPROTO_EGP"
.LASF239:
	.string	"fputc"
.LASF191:
	.string	"ASN1_OCTET_STRING_NDEF_it"
.LASF174:
	.string	"ASN1_ENUMERATED_it"
.LASF111:
	.string	"IPPROTO_COMP"
.LASF132:
	.string	"_IO_buf_end"
.LASF58:
	.string	"frag"
.LASF176:
	.string	"ASN1_VISIBLESTRING_it"
.LASF236:
	.string	"__src"
.LASF180:
	.string	"ASN1_BMPSTRING_it"
.LASF159:
	.string	"stderr"
.LASF6:
	.string	"short int"
.LASF207:
	.string	"new_eth"
.LASF108:
	.string	"IPPROTO_BEETPH"
.LASF40:
	.string	"priority"
.LASF197:
	.string	"iv_len"
.LASF77:
	.string	"un_data32"
.LASF142:
	.string	"_vtable_offset"
.LASF39:
	.string	"ipv6hdr"
.LASF235:
	.string	"__dest"
.LASF70:
	.string	"reserved2"
.LASF254:
	.string	"__isoc99_sscanf"
.LASF163:
	.string	"__daylight"
.LASF57:
	.string	"gateway"
.LASF234:
	.string	"memcpy"
.LASF126:
	.string	"_IO_read_end"
.LASF94:
	.string	"IPPROTO_IPIP"
.LASF90:
	.string	"s_addr"
.LASF248:
	.string	"EVP_EncryptUpdate"
.LASF71:
	.string	"icmpv6_nd_ra"
.LASF95:
	.string	"IPPROTO_TCP"
.LASF15:
	.string	"uint32_t"
.LASF34:
	.string	"u6_addr8"
.LASF225:
	.string	"mac_array"
.LASF170:
	.string	"ASN1_ANY_it"
.LASF182:
	.string	"DIRECTORYSTRING_it"
.LASF138:
	.string	"_fileno"
.LASF251:
	.string	"nfc_create_poll_thread"
.LASF190:
	.string	"ASN1_TIME_it"
.LASF147:
	.string	"_wide_data"
.LASF59:
	.string	"reserved"
.LASF38:
	.string	"in6_u"
.LASF217:
	.string	"dest_ip_string"
.LASF219:
	.string	"ip_string"
.LASF1:
	.string	"short unsigned int"
.LASF87:
	.string	"icmp6_dataun"
.LASF129:
	.string	"_IO_write_ptr"
.LASF214:
	.string	"source_mac_string"
.LASF166:
	.string	"daylight"
.LASF24:
	.string	"h_proto"
.LASF237:
	.string	"__len"
.LASF75:
	.string	"managed"
.LASF65:
	.string	"identifier"
.LASF238:
	.string	"fwrite"
.LASF223:
	.string	"convert_mac"
.LASF106:
	.string	"IPPROTO_AH"
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
