	.text
	.file	"llvm-link"
	.globl	pat_insert              # -- Begin function pat_insert
	.p2align	4, 0x90
	.type	pat_insert,@function
pat_insert:                             # @pat_insert
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi0:
	.cfi_def_cfa_offset 16
.Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi2:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
.Lcfi3:
	.cfi_offset %rbx, -32
.Lcfi4:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movabsq	$pat_insert_signature, %rdi
	movl	$65537, %esi            # imm = 0x10001
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movq	%rbx, -32(%rbp)
	movq	%r14, -48(%rbp)
	movq	-48(%rbp), %rbx
	movl	$65537, %esi            # imm = 0x10001
	callq	verify_signature
	cmpq	$0, %rbx
	je	.LBB0_3
# BB#1:
	movabsq	$pat_insert_signature, %rdi
	movl	$65538, %esi            # imm = 0x10002
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movq	-32(%rbp), %rbx
	movl	$65538, %esi            # imm = 0x10002
	callq	verify_signature
	cmpq	$0, %rbx
	je	.LBB0_3
# BB#2:
	movabsq	$pat_insert_signature, %rdi
	movl	$65539, %esi            # imm = 0x10003
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rbx
	movl	$65539, %esi            # imm = 0x10003
	callq	verify_signature
	cmpq	$0, %rbx
	jne	.LBB0_4
.LBB0_3:
	movabsq	$pat_insert_signature, %rdi
	movl	$65540, %esi            # imm = 0x10004
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movq	$0, -72(%rbp)
	movl	$65540, %esi            # imm = 0x10004
	callq	verify_signature
	jmp	.LBB0_51
.LBB0_4:
	movabsq	$pat_insert_signature, %rdi
	movl	$65541, %esi            # imm = 0x10005
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	andq	(%rcx), %rax
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$65541, %esi            # imm = 0x10005
	callq	verify_signature
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65542, %esi            # imm = 0x10006
	callq	update_signature
	movq	-40(%rbp), %rax
	movsbl	17(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$pat_insert_signature, %rdi
	movl	$65542, %esi            # imm = 0x10006
	callq	verify_signature
# BB#6:                                 #   in Loop: Header=BB0_5 Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65543, %esi            # imm = 0x10007
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movl	$65543, %esi            # imm = 0x10007
	callq	verify_signature
	cmpq	$0, %rbx
	je	.LBB0_8
# BB#7:                                 #   in Loop: Header=BB0_5 Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65544, %esi            # imm = 0x10008
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rbx
	movl	$65544, %esi            # imm = 0x10008
	callq	verify_signature
	jmp	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65545, %esi            # imm = 0x10009
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rbx
	movl	$65545, %esi            # imm = 0x10009
	callq	verify_signature
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65546, %esi            # imm = 0x1000A
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movq	%rbx, -40(%rbp)
	movl	$65546, %esi            # imm = 0x1000A
	callq	verify_signature
# BB#10:                                #   in Loop: Header=BB0_5 Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65547, %esi            # imm = 0x1000B
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movl	-20(%rbp), %r14d
	movq	-40(%rbp), %rax
	movsbl	17(%rax), %ebx
	movl	$65547, %esi            # imm = 0x1000B
	callq	verify_signature
	cmpl	%ebx, %r14d
	jl	.LBB0_5
# BB#11:
	movabsq	$pat_insert_signature, %rdi
	movl	$65548, %esi            # imm = 0x1000C
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %r14
	movq	-40(%rbp), %rax
	movq	(%rax), %rbx
	movl	$65548, %esi            # imm = 0x1000C
	callq	verify_signature
	cmpq	%rbx, %r14
	jne	.LBB0_36
# BB#12:
	movabsq	$pat_insert_signature, %rdi
	movl	$65549, %esi            # imm = 0x1000D
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movl	$0, -20(%rbp)
	movl	$65549, %esi            # imm = 0x1000D
	callq	verify_signature
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65550, %esi            # imm = 0x1000E
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movl	-20(%rbp), %r14d
	movq	-40(%rbp), %rax
	movzbl	16(%rax), %ebx
	movl	$65550, %esi            # imm = 0x1000E
	callq	verify_signature
	cmpl	%ebx, %r14d
	jge	.LBB0_20
# BB#14:                                #   in Loop: Header=BB0_13 Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65551, %esi            # imm = 0x1000F
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %r14
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	(%rcx), %rbx
	movl	$65551, %esi            # imm = 0x1000F
	callq	verify_signature
	cmpq	%rbx, %r14
	jne	.LBB0_18
# BB#15:
	movabsq	$pat_insert_signature, %rdi
	movl	$65552, %esi            # imm = 0x10010
	callq	update_signature
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-20(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rcx, %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
	movabsq	$pat_insert_signature, %rdi
	movl	$65552, %esi            # imm = 0x10010
	callq	verify_signature
# BB#16:
	movabsq	$pat_insert_signature, %rdi
	movl	$65553, %esi            # imm = 0x10011
	callq	update_signature
	movq	-32(%rbp), %rdi
	callq	free
	movabsq	$pat_insert_signature, %rdi
	movl	$65553, %esi            # imm = 0x10011
	callq	verify_signature
# BB#17:
	movabsq	$pat_insert_signature, %rdi
	movl	$65554, %esi            # imm = 0x10012
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$65554, %esi            # imm = 0x10012
	callq	verify_signature
	jmp	.LBB0_51
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65555, %esi            # imm = 0x10013
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movl	$65555, %esi            # imm = 0x10013
	callq	verify_signature
# BB#19:                                #   in Loop: Header=BB0_13 Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65556, %esi            # imm = 0x10014
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$65556, %esi            # imm = 0x10014
	callq	verify_signature
	jmp	.LBB0_13
.LBB0_20:
	movabsq	$pat_insert_signature, %rdi
	movl	$65557, %esi            # imm = 0x10015
	callq	update_signature
	movq	-40(%rbp), %rax
	movzbl	16(%rax), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	shlq	$4, %rdi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$pat_insert_signature, %rdi
	movl	$65557, %esi            # imm = 0x10015
	callq	verify_signature
# BB#21:
	movabsq	$pat_insert_signature, %rdi
	movl	$65558, %esi            # imm = 0x10016
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movq	%rbx, -80(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -20(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$65558, %esi            # imm = 0x10016
	callq	verify_signature
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65559, %esi            # imm = 0x10017
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movl	-20(%rbp), %r14d
	movq	-40(%rbp), %rax
	movzbl	16(%rax), %ebx
	movl	$65559, %esi            # imm = 0x10017
	callq	verify_signature
	cmpl	%ebx, %r14d
	jge	.LBB0_30
# BB#23:                                #   in Loop: Header=BB0_22 Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65560, %esi            # imm = 0x10018
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %r14
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	(%rcx), %rbx
	movl	$65560, %esi            # imm = 0x10018
	callq	verify_signature
	cmpq	%rbx, %r14
	jbe	.LBB0_26
# BB#24:                                #   in Loop: Header=BB0_22 Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65561, %esi            # imm = 0x10019
	callq	update_signature
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rax, %rdi
	movq	-56(%rbp), %rsi
	movl	$16, %edx
	callq	bcopy
	movabsq	$pat_insert_signature, %rdi
	movl	$65561, %esi            # imm = 0x10019
	callq	verify_signature
# BB#25:                                #   in Loop: Header=BB0_22 Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65562, %esi            # imm = 0x1001A
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$65562, %esi            # imm = 0x1001A
	callq	verify_signature
	jmp	.LBB0_28
.LBB0_26:                               #   in Loop: Header=BB0_22 Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65563, %esi            # imm = 0x1001B
	callq	update_signature
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-56(%rbp), %rsi
	movl	$16, %edx
	callq	bcopy
	movabsq	$pat_insert_signature, %rdi
	movl	$65563, %esi            # imm = 0x1001B
	callq	verify_signature
# BB#27:                                #   in Loop: Header=BB0_22 Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65564, %esi            # imm = 0x1001C
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, (%rcx)
	movl	$1, -60(%rbp)
	movl	$65564, %esi            # imm = 0x1001C
	callq	verify_signature
.LBB0_28:                               #   in Loop: Header=BB0_22 Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65565, %esi            # imm = 0x1001D
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movl	$65565, %esi            # imm = 0x1001D
	callq	verify_signature
# BB#29:                                #   in Loop: Header=BB0_22 Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65566, %esi            # imm = 0x1001E
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
	movl	$65566, %esi            # imm = 0x1001E
	callq	verify_signature
	jmp	.LBB0_22
.LBB0_30:
	movabsq	$pat_insert_signature, %rdi
	movl	$65567, %esi            # imm = 0x1001F
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movl	-60(%rbp), %ebx
	movl	$65567, %esi            # imm = 0x1001F
	callq	verify_signature
	cmpl	$0, %ebx
	jne	.LBB0_32
# BB#31:
	movabsq	$pat_insert_signature, %rdi
	movl	$65568, %esi            # imm = 0x10020
	callq	update_signature
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-56(%rbp), %rsi
	movl	$16, %edx
	callq	bcopy
	movabsq	$pat_insert_signature, %rdi
	movl	$65568, %esi            # imm = 0x10020
	callq	verify_signature
.LBB0_32:
	movabsq	$pat_insert_signature, %rdi
	movl	$65569, %esi            # imm = 0x10021
	callq	update_signature
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
	movabsq	$pat_insert_signature, %rdi
	movl	$65569, %esi            # imm = 0x10021
	callq	verify_signature
# BB#33:
	movabsq	$pat_insert_signature, %rdi
	movl	$65570, %esi            # imm = 0x10022
	callq	update_signature
	movq	-32(%rbp), %rdi
	callq	free
	movabsq	$pat_insert_signature, %rdi
	movl	$65570, %esi            # imm = 0x10022
	callq	verify_signature
# BB#34:
	movabsq	$pat_insert_signature, %rdi
	movl	$65571, %esi            # imm = 0x10023
	callq	update_signature
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	movb	16(%rax), %cl
	addb	$1, %cl
	movb	%cl, 16(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
	movabsq	$pat_insert_signature, %rdi
	movl	$65571, %esi            # imm = 0x10023
	callq	verify_signature
# BB#35:
	movabsq	$pat_insert_signature, %rdi
	movl	$65572, %esi            # imm = 0x10024
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movq	-80(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$65572, %esi            # imm = 0x10024
	callq	verify_signature
	jmp	.LBB0_51
.LBB0_36:
	movabsq	$pat_insert_signature, %rdi
	movl	$65573, %esi            # imm = 0x10025
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movl	$1, -20(%rbp)
	movl	$65573, %esi            # imm = 0x10025
	callq	verify_signature
.LBB0_37:                               # =>This Inner Loop Header: Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65574, %esi            # imm = 0x10026
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movl	-20(%rbp), %ebx
	movl	$65574, %esi            # imm = 0x10026
	callq	verify_signature
	xorl	%r14d, %r14d
	cmpl	$32, %ebx
	jge	.LBB0_41
# BB#38:                                #   in Loop: Header=BB0_37 Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65575, %esi            # imm = 0x10027
	callq	update_signature
	movl	-20(%rbp), %edi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %r14
	movabsq	$pat_insert_signature, %rdi
	movl	$65575, %esi            # imm = 0x10027
	callq	verify_signature
# BB#39:                                #   in Loop: Header=BB0_37 Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65576, %esi            # imm = 0x10028
	callq	update_signature
	movl	-20(%rbp), %edi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$pat_insert_signature, %rdi
	movl	$65576, %esi            # imm = 0x10028
	callq	verify_signature
# BB#40:                                #   in Loop: Header=BB0_37 Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65577, %esi            # imm = 0x10029
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	cmpq	%rbx, %r14
	sete	%r14b
	movl	$65577, %esi            # imm = 0x10029
	callq	verify_signature
.LBB0_41:                               #   in Loop: Header=BB0_37 Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65578, %esi            # imm = 0x1002A
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movl	$65578, %esi            # imm = 0x1002A
	callq	verify_signature
	testb	$1, %r14b
	jne	.LBB0_42
	jmp	.LBB0_44
.LBB0_42:                               #   in Loop: Header=BB0_37 Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65579, %esi            # imm = 0x1002B
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movl	$65579, %esi            # imm = 0x1002B
	callq	verify_signature
# BB#43:                                #   in Loop: Header=BB0_37 Depth=1
	movabsq	$pat_insert_signature, %rdi
	movl	$65580, %esi            # imm = 0x1002C
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$65580, %esi            # imm = 0x1002C
	callq	verify_signature
	jmp	.LBB0_37
.LBB0_44:
	movabsq	$pat_insert_signature, %rdi
	movl	$65581, %esi            # imm = 0x1002D
	callq	update_signature
	movq	-48(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$pat_insert_signature, %rdi
	movl	$65581, %esi            # imm = 0x1002D
	callq	verify_signature
# BB#45:
	movabsq	$pat_insert_signature, %rdi
	movl	$65582, %esi            # imm = 0x1002E
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movl	$65582, %esi            # imm = 0x1002E
	callq	verify_signature
	cmpq	$0, %rbx
	je	.LBB0_48
# BB#46:
	movabsq	$pat_insert_signature, %rdi
	movl	$65583, %esi            # imm = 0x1002F
	callq	update_signature
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rcx
	callq	insertR
	movq	%rax, %rbx
	movabsq	$pat_insert_signature, %rdi
	movl	$65583, %esi            # imm = 0x1002F
	callq	verify_signature
# BB#47:
	movabsq	$pat_insert_signature, %rdi
	movl	$65584, %esi            # imm = 0x10030
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movq	-48(%rbp), %rax
	movq	%rbx, 32(%rax)
	movl	$65584, %esi            # imm = 0x10030
	callq	verify_signature
	jmp	.LBB0_50
.LBB0_48:
	movabsq	$pat_insert_signature, %rdi
	movl	$65585, %esi            # imm = 0x10031
	callq	update_signature
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rcx
	callq	insertR
	movq	%rax, %rbx
	movabsq	$pat_insert_signature, %rdi
	movl	$65585, %esi            # imm = 0x10031
	callq	verify_signature
# BB#49:
	movabsq	$pat_insert_signature, %rdi
	movl	$65586, %esi            # imm = 0x10032
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movq	-48(%rbp), %rax
	movq	%rbx, 24(%rax)
	movl	$65586, %esi            # imm = 0x10032
	callq	verify_signature
.LBB0_50:
	movabsq	$pat_insert_signature, %rdi
	movl	$65587, %esi            # imm = 0x10033
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$65587, %esi            # imm = 0x10033
	callq	verify_signature
.LBB0_51:
	movabsq	$pat_insert_signature, %rdi
	movl	$65588, %esi            # imm = 0x10034
	callq	update_signature
	movabsq	$pat_insert_signature, %rdi
	movq	-72(%rbp), %rbx
	movl	$65588, %esi            # imm = 0x10034
	callq	verify_signature
	movq	%rbx, %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pat_insert, .Lfunc_end0-pat_insert
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function bit
	.type	bit,@function
bit:                                    # @bit
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi5:
	.cfi_def_cfa_offset 16
.Lcfi6:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi7:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
.Lcfi8:
	.cfi_offset %rbx, -32
.Lcfi9:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movl	%edi, %ebx
	movabsq	$bit_signature, %rdi
	movl	$131073, %esi           # imm = 0x20001
	callq	update_signature
	movabsq	$bit_signature, %rdi
	movl	$1, %eax
	movl	$31, %ecx
	movl	%ebx, -20(%rbp)
	movq	%r14, -32(%rbp)
	movq	-32(%rbp), %rdx
	subl	-20(%rbp), %ecx
                                        # kill: %CL<def> %ECX<kill>
	shll	%cl, %eax
	movslq	%eax, %rbx
	andq	%rdx, %rbx
	movl	$131073, %esi           # imm = 0x20001
	callq	verify_signature
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	bit, .Lfunc_end1-bit
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function insertR
	.type	insertR,@function
insertR:                                # @insertR
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi10:
	.cfi_def_cfa_offset 16
.Lcfi11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi12:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
.Lcfi13:
	.cfi_offset %rbx, -48
.Lcfi14:
	.cfi_offset %r12, -40
.Lcfi15:
	.cfi_offset %r14, -32
.Lcfi16:
	.cfi_offset %r15, -24
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movabsq	$insertR_signature, %rdi
	movl	$393217, %esi           # imm = 0x60001
	callq	update_signature
	movabsq	$insertR_signature, %rdi
	movq	%rbx, -48(%rbp)
	movq	%r12, -56(%rbp)
	movl	%r15d, -36(%rbp)
	movq	%r14, -72(%rbp)
	movq	-48(%rbp), %rax
	movsbl	17(%rax), %r14d
	movl	-36(%rbp), %ebx
	movl	$393217, %esi           # imm = 0x60001
	callq	verify_signature
	cmpl	%ebx, %r14d
	jge	.LBB2_2
# BB#1:
	movabsq	$insertR_signature, %rdi
	movl	$393218, %esi           # imm = 0x60002
	callq	update_signature
	movabsq	$insertR_signature, %rdi
	movq	-48(%rbp), %rax
	movsbl	17(%rax), %r14d
	movq	-72(%rbp), %rax
	movsbl	17(%rax), %ebx
	movl	$393218, %esi           # imm = 0x60002
	callq	verify_signature
	cmpl	%ebx, %r14d
	jg	.LBB2_11
.LBB2_2:
	movabsq	$insertR_signature, %rdi
	movl	$393219, %esi           # imm = 0x60003
	callq	update_signature
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	movb	%al, 17(%rcx)
	movl	-36(%rbp), %edi
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$insertR_signature, %rdi
	movl	$393219, %esi           # imm = 0x60003
	callq	verify_signature
# BB#3:
	movabsq	$insertR_signature, %rdi
	movl	$393220, %esi           # imm = 0x60004
	callq	update_signature
	movabsq	$insertR_signature, %rdi
	movl	$393220, %esi           # imm = 0x60004
	callq	verify_signature
	cmpq	$0, %rbx
	je	.LBB2_5
# BB#4:
	movabsq	$insertR_signature, %rdi
	movl	$393221, %esi           # imm = 0x60005
	callq	update_signature
	movabsq	$insertR_signature, %rdi
	movq	-48(%rbp), %rbx
	movl	$393221, %esi           # imm = 0x60005
	callq	verify_signature
	jmp	.LBB2_6
.LBB2_5:
	movabsq	$insertR_signature, %rdi
	movl	$393222, %esi           # imm = 0x60006
	callq	update_signature
	movabsq	$insertR_signature, %rdi
	movq	-56(%rbp), %rbx
	movl	$393222, %esi           # imm = 0x60006
	callq	verify_signature
.LBB2_6:
	movabsq	$insertR_signature, %rdi
	movl	$393223, %esi           # imm = 0x60007
	callq	update_signature
	movq	-56(%rbp), %rax
	movq	%rbx, 24(%rax)
	movl	-36(%rbp), %edi
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$insertR_signature, %rdi
	movl	$393223, %esi           # imm = 0x60007
	callq	verify_signature
# BB#7:
	movabsq	$insertR_signature, %rdi
	movl	$393224, %esi           # imm = 0x60008
	callq	update_signature
	movabsq	$insertR_signature, %rdi
	movl	$393224, %esi           # imm = 0x60008
	callq	verify_signature
	cmpq	$0, %rbx
	je	.LBB2_9
# BB#8:
	movabsq	$insertR_signature, %rdi
	movl	$393225, %esi           # imm = 0x60009
	callq	update_signature
	movabsq	$insertR_signature, %rdi
	movq	-56(%rbp), %rbx
	movl	$393225, %esi           # imm = 0x60009
	callq	verify_signature
	jmp	.LBB2_10
.LBB2_9:
	movabsq	$insertR_signature, %rdi
	movl	$393226, %esi           # imm = 0x6000A
	callq	update_signature
	movabsq	$insertR_signature, %rdi
	movq	-48(%rbp), %rbx
	movl	$393226, %esi           # imm = 0x6000A
	callq	verify_signature
.LBB2_10:
	movabsq	$insertR_signature, %rdi
	movl	$393227, %esi           # imm = 0x6000B
	callq	update_signature
	movabsq	$insertR_signature, %rdi
	movq	-56(%rbp), %rax
	movq	%rbx, 32(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$393227, %esi           # imm = 0x6000B
	callq	verify_signature
	jmp	.LBB2_18
.LBB2_11:
	movabsq	$insertR_signature, %rdi
	movl	$393228, %esi           # imm = 0x6000C
	callq	update_signature
	movq	-48(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$insertR_signature, %rdi
	movl	$393228, %esi           # imm = 0x6000C
	callq	verify_signature
# BB#12:
	movabsq	$insertR_signature, %rdi
	movl	$393229, %esi           # imm = 0x6000D
	callq	update_signature
	movabsq	$insertR_signature, %rdi
	movl	$393229, %esi           # imm = 0x6000D
	callq	verify_signature
	cmpq	$0, %rbx
	je	.LBB2_15
# BB#13:
	movabsq	$insertR_signature, %rdi
	movl	$393230, %esi           # imm = 0x6000E
	callq	update_signature
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %edx
	movq	-48(%rbp), %rcx
	callq	insertR
	movq	%rax, %rbx
	movabsq	$insertR_signature, %rdi
	movl	$393230, %esi           # imm = 0x6000E
	callq	verify_signature
# BB#14:
	movabsq	$insertR_signature, %rdi
	movl	$393231, %esi           # imm = 0x6000F
	callq	update_signature
	movabsq	$insertR_signature, %rdi
	movq	-48(%rbp), %rax
	movq	%rbx, 32(%rax)
	movl	$393231, %esi           # imm = 0x6000F
	callq	verify_signature
	jmp	.LBB2_17
.LBB2_15:
	movabsq	$insertR_signature, %rdi
	movl	$393232, %esi           # imm = 0x60010
	callq	update_signature
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %edx
	movq	-48(%rbp), %rcx
	callq	insertR
	movq	%rax, %rbx
	movabsq	$insertR_signature, %rdi
	movl	$393232, %esi           # imm = 0x60010
	callq	verify_signature
# BB#16:
	movabsq	$insertR_signature, %rdi
	movl	$393233, %esi           # imm = 0x60011
	callq	update_signature
	movabsq	$insertR_signature, %rdi
	movq	-48(%rbp), %rax
	movq	%rbx, 24(%rax)
	movl	$393233, %esi           # imm = 0x60011
	callq	verify_signature
.LBB2_17:
	movabsq	$insertR_signature, %rdi
	movl	$393234, %esi           # imm = 0x60012
	callq	update_signature
	movabsq	$insertR_signature, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$393234, %esi           # imm = 0x60012
	callq	verify_signature
.LBB2_18:
	movabsq	$insertR_signature, %rdi
	movl	$393235, %esi           # imm = 0x60013
	callq	update_signature
	movabsq	$insertR_signature, %rdi
	movq	-64(%rbp), %rbx
	movl	$393235, %esi           # imm = 0x60013
	callq	verify_signature
	movq	%rbx, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	insertR, .Lfunc_end2-insertR
	.cfi_endproc
                                        # -- End function
	.globl	pat_remove              # -- Begin function pat_remove
	.p2align	4, 0x90
	.type	pat_remove,@function
pat_remove:                             # @pat_remove
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi17:
	.cfi_def_cfa_offset 16
.Lcfi18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi19:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Lcfi20:
	.cfi_offset %rbx, -32
.Lcfi21:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movabsq	$pat_remove_signature, %rdi
	movl	$458753, %esi           # imm = 0x70001
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	%rbx, -56(%rbp)
	movq	%r14, -104(%rbp)
	movq	-56(%rbp), %rbx
	movl	$458753, %esi           # imm = 0x70001
	callq	verify_signature
	cmpq	$0, %rbx
	je	.LBB3_3
# BB#1:
	movabsq	$pat_remove_signature, %rdi
	movl	$458754, %esi           # imm = 0x70002
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rbx
	movl	$458754, %esi           # imm = 0x70002
	callq	verify_signature
	cmpq	$0, %rbx
	je	.LBB3_3
# BB#2:
	movabsq	$pat_remove_signature, %rdi
	movl	$458755, %esi           # imm = 0x70003
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-24(%rbp), %rbx
	movl	$458755, %esi           # imm = 0x70003
	callq	verify_signature
	cmpq	$0, %rbx
	jne	.LBB3_4
.LBB3_3:
	movabsq	$pat_remove_signature, %rdi
	movl	$458756, %esi           # imm = 0x70004
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	$0, -44(%rbp)
	movl	$458756, %esi           # imm = 0x70004
	callq	verify_signature
	jmp	.LBB3_66
.LBB3_4:
	movabsq	$pat_remove_signature, %rdi
	movl	$458757, %esi           # imm = 0x70005
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-104(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	%rax, -40(%rbp)
	movq	%rax, -80(%rbp)
	movl	$458757, %esi           # imm = 0x70005
	callq	verify_signature
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	movabsq	$pat_remove_signature, %rdi
	movl	$458758, %esi           # imm = 0x70006
	callq	update_signature
	movq	-24(%rbp), %rax
	movsbl	17(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$pat_remove_signature, %rdi
	movl	$458758, %esi           # imm = 0x70006
	callq	verify_signature
# BB#6:                                 #   in Loop: Header=BB3_5 Depth=1
	movabsq	$pat_remove_signature, %rdi
	movl	$458759, %esi           # imm = 0x70007
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	$458759, %esi           # imm = 0x70007
	callq	verify_signature
	cmpq	$0, %rbx
	je	.LBB3_8
# BB#7:                                 #   in Loop: Header=BB3_5 Depth=1
	movabsq	$pat_remove_signature, %rdi
	movl	$458760, %esi           # imm = 0x70008
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rbx
	movl	$458760, %esi           # imm = 0x70008
	callq	verify_signature
	jmp	.LBB3_9
.LBB3_8:                                #   in Loop: Header=BB3_5 Depth=1
	movabsq	$pat_remove_signature, %rdi
	movl	$458761, %esi           # imm = 0x70009
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rbx
	movl	$458761, %esi           # imm = 0x70009
	callq	verify_signature
.LBB3_9:                                #   in Loop: Header=BB3_5 Depth=1
	movabsq	$pat_remove_signature, %rdi
	movl	$458762, %esi           # imm = 0x7000A
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	%rbx, -24(%rbp)
	movl	$458762, %esi           # imm = 0x7000A
	callq	verify_signature
# BB#10:                                #   in Loop: Header=BB3_5 Depth=1
	movabsq	$pat_remove_signature, %rdi
	movl	$458763, %esi           # imm = 0x7000B
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	-28(%rbp), %r14d
	movq	-24(%rbp), %rax
	movsbl	17(%rax), %ebx
	movl	$458763, %esi           # imm = 0x7000B
	callq	verify_signature
	cmpl	%ebx, %r14d
	jl	.LBB3_5
# BB#11:
	movabsq	$pat_remove_signature, %rdi
	movl	$458764, %esi           # imm = 0x7000C
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %r14
	movq	-56(%rbp), %rax
	movq	(%rax), %rbx
	movl	$458764, %esi           # imm = 0x7000C
	callq	verify_signature
	cmpq	%rbx, %r14
	je	.LBB3_13
# BB#12:
	movabsq	$pat_remove_signature, %rdi
	movl	$458765, %esi           # imm = 0x7000D
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	$0, -44(%rbp)
	movl	$458765, %esi           # imm = 0x7000D
	callq	verify_signature
	jmp	.LBB3_66
.LBB3_13:
	movabsq	$pat_remove_signature, %rdi
	movl	$458766, %esi           # imm = 0x7000E
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-24(%rbp), %rax
	movzbl	16(%rax), %ebx
	movl	$458766, %esi           # imm = 0x7000E
	callq	verify_signature
	cmpl	$1, %ebx
	jne	.LBB3_48
# BB#14:
	movabsq	$pat_remove_signature, %rdi
	movl	$458767, %esi           # imm = 0x7000F
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-24(%rbp), %rax
	movsbl	17(%rax), %ebx
	movl	$458767, %esi           # imm = 0x7000F
	callq	verify_signature
	cmpl	$0, %ebx
	jne	.LBB3_16
# BB#15:
	movabsq	$pat_remove_signature, %rdi
	movl	$458768, %esi           # imm = 0x70010
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	$0, -44(%rbp)
	movl	$458768, %esi           # imm = 0x70010
	callq	verify_signature
	jmp	.LBB3_66
.LBB3_16:
	movabsq	$pat_remove_signature, %rdi
	movl	$458769, %esi           # imm = 0x70011
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %r14
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rbx
	movl	$458769, %esi           # imm = 0x70011
	callq	verify_signature
	cmpq	%rbx, %r14
	je	.LBB3_18
# BB#17:
	movabsq	$pat_remove_signature, %rdi
	movl	$458770, %esi           # imm = 0x70012
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	$0, -44(%rbp)
	movl	$458770, %esi           # imm = 0x70012
	callq	verify_signature
	jmp	.LBB3_66
.LBB3_18:
	movabsq	$pat_remove_signature, %rdi
	movl	$458771, %esi           # imm = 0x70013
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	%rax, -72(%rbp)
	movl	$458771, %esi           # imm = 0x70013
	callq	verify_signature
.LBB3_19:                               # =>This Inner Loop Header: Depth=1
	movabsq	$pat_remove_signature, %rdi
	movl	$458772, %esi           # imm = 0x70014
	callq	update_signature
	movq	-64(%rbp), %rax
	movsbl	17(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$pat_remove_signature, %rdi
	movl	$458772, %esi           # imm = 0x70014
	callq	verify_signature
# BB#20:                                #   in Loop: Header=BB3_19 Depth=1
	movabsq	$pat_remove_signature, %rdi
	movl	$458773, %esi           # imm = 0x70015
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	$458773, %esi           # imm = 0x70015
	callq	verify_signature
	cmpq	$0, %rbx
	je	.LBB3_22
# BB#21:                                #   in Loop: Header=BB3_19 Depth=1
	movabsq	$pat_remove_signature, %rdi
	movl	$458774, %esi           # imm = 0x70016
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-64(%rbp), %rax
	movq	32(%rax), %rbx
	movl	$458774, %esi           # imm = 0x70016
	callq	verify_signature
	jmp	.LBB3_23
.LBB3_22:                               #   in Loop: Header=BB3_19 Depth=1
	movabsq	$pat_remove_signature, %rdi
	movl	$458775, %esi           # imm = 0x70017
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-64(%rbp), %rax
	movq	24(%rax), %rbx
	movl	$458775, %esi           # imm = 0x70017
	callq	verify_signature
.LBB3_23:                               #   in Loop: Header=BB3_19 Depth=1
	movabsq	$pat_remove_signature, %rdi
	movl	$458776, %esi           # imm = 0x70018
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	%rbx, -64(%rbp)
	movl	$458776, %esi           # imm = 0x70018
	callq	verify_signature
# BB#24:                                #   in Loop: Header=BB3_19 Depth=1
	movabsq	$pat_remove_signature, %rdi
	movl	$458777, %esi           # imm = 0x70019
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	-28(%rbp), %r14d
	movq	-64(%rbp), %rax
	movsbl	17(%rax), %ebx
	movl	$458777, %esi           # imm = 0x70019
	callq	verify_signature
	cmpl	%ebx, %r14d
	jl	.LBB3_19
# BB#25:
	movabsq	$pat_remove_signature, %rdi
	movl	$458778, %esi           # imm = 0x7001A
	callq	update_signature
	movq	-72(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$pat_remove_signature, %rdi
	movl	$458778, %esi           # imm = 0x7001A
	callq	verify_signature
# BB#26:
	movabsq	$pat_remove_signature, %rdi
	movl	$458779, %esi           # imm = 0x7001B
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	$458779, %esi           # imm = 0x7001B
	callq	verify_signature
	cmpq	$0, %rbx
	je	.LBB3_28
# BB#27:
	movabsq	$pat_remove_signature, %rdi
	movl	$458780, %esi           # imm = 0x7001C
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movl	$458780, %esi           # imm = 0x7001C
	callq	verify_signature
	jmp	.LBB3_29
.LBB3_28:
	movabsq	$pat_remove_signature, %rdi
	movl	$458781, %esi           # imm = 0x7001D
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movl	$458781, %esi           # imm = 0x7001D
	callq	verify_signature
.LBB3_29:
	movabsq	$pat_remove_signature, %rdi
	movl	$458782, %esi           # imm = 0x7001E
	callq	update_signature
	movq	-80(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$pat_remove_signature, %rdi
	movl	$458782, %esi           # imm = 0x7001E
	callq	verify_signature
# BB#30:
	movabsq	$pat_remove_signature, %rdi
	movl	$458783, %esi           # imm = 0x7001F
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	$458783, %esi           # imm = 0x7001F
	callq	verify_signature
	cmpq	$0, %rbx
	je	.LBB3_36
# BB#31:
	movabsq	$pat_remove_signature, %rdi
	movl	$458784, %esi           # imm = 0x70020
	callq	update_signature
	movq	-40(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$pat_remove_signature, %rdi
	movl	$458784, %esi           # imm = 0x70020
	callq	verify_signature
# BB#32:
	movabsq	$pat_remove_signature, %rdi
	movl	$458785, %esi           # imm = 0x70021
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	$458785, %esi           # imm = 0x70021
	callq	verify_signature
	cmpq	$0, %rbx
	je	.LBB3_34
# BB#33:
	movabsq	$pat_remove_signature, %rdi
	movl	$458786, %esi           # imm = 0x70022
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rbx
	movl	$458786, %esi           # imm = 0x70022
	callq	verify_signature
	jmp	.LBB3_35
.LBB3_34:
	movabsq	$pat_remove_signature, %rdi
	movl	$458787, %esi           # imm = 0x70023
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rbx
	movl	$458787, %esi           # imm = 0x70023
	callq	verify_signature
.LBB3_35:
	movabsq	$pat_remove_signature, %rdi
	movl	$458788, %esi           # imm = 0x70024
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-80(%rbp), %rax
	movq	%rbx, 32(%rax)
	movl	$458788, %esi           # imm = 0x70024
	callq	verify_signature
	jmp	.LBB3_41
.LBB3_36:
	movabsq	$pat_remove_signature, %rdi
	movl	$458789, %esi           # imm = 0x70025
	callq	update_signature
	movq	-40(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$pat_remove_signature, %rdi
	movl	$458789, %esi           # imm = 0x70025
	callq	verify_signature
# BB#37:
	movabsq	$pat_remove_signature, %rdi
	movl	$458790, %esi           # imm = 0x70026
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	$458790, %esi           # imm = 0x70026
	callq	verify_signature
	cmpq	$0, %rbx
	je	.LBB3_39
# BB#38:
	movabsq	$pat_remove_signature, %rdi
	movl	$458791, %esi           # imm = 0x70027
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rbx
	movl	$458791, %esi           # imm = 0x70027
	callq	verify_signature
	jmp	.LBB3_40
.LBB3_39:
	movabsq	$pat_remove_signature, %rdi
	movl	$458792, %esi           # imm = 0x70028
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rbx
	movl	$458792, %esi           # imm = 0x70028
	callq	verify_signature
.LBB3_40:
	movabsq	$pat_remove_signature, %rdi
	movl	$458793, %esi           # imm = 0x70029
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-80(%rbp), %rax
	movq	%rbx, 24(%rax)
	movl	$458793, %esi           # imm = 0x70029
	callq	verify_signature
.LBB3_41:
	movabsq	$pat_remove_signature, %rdi
	movl	$458794, %esi           # imm = 0x7002A
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rbx
	movl	$458794, %esi           # imm = 0x7002A
	callq	verify_signature
	cmpq	$0, %rbx
	je	.LBB3_43
# BB#42:
	movabsq	$pat_remove_signature, %rdi
	movl	$458795, %esi           # imm = 0x7002B
	callq	update_signature
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	callq	free
	movabsq	$pat_remove_signature, %rdi
	movl	$458795, %esi           # imm = 0x7002B
	callq	verify_signature
.LBB3_43:
	movabsq	$pat_remove_signature, %rdi
	movl	$458796, %esi           # imm = 0x7002C
	callq	update_signature
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
	movabsq	$pat_remove_signature, %rdi
	movl	$458796, %esi           # imm = 0x7002C
	callq	verify_signature
# BB#44:
	movabsq	$pat_remove_signature, %rdi
	movl	$458797, %esi           # imm = 0x7002D
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-24(%rbp), %r14
	movq	-40(%rbp), %rbx
	movl	$458797, %esi           # imm = 0x7002D
	callq	verify_signature
	cmpq	%rbx, %r14
	je	.LBB3_46
# BB#45:
	movabsq	$pat_remove_signature, %rdi
	movl	$458798, %esi           # imm = 0x7002E
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	movb	16(%rax), %al
	movq	-24(%rbp), %rcx
	movb	%al, 16(%rcx)
	movl	$458798, %esi           # imm = 0x7002E
	callq	verify_signature
.LBB3_46:
	movabsq	$pat_remove_signature, %rdi
	movl	$458799, %esi           # imm = 0x7002F
	callq	update_signature
	movq	-40(%rbp), %rdi
	callq	free
	movabsq	$pat_remove_signature, %rdi
	movl	$458799, %esi           # imm = 0x7002F
	callq	verify_signature
# BB#47:
	movabsq	$pat_remove_signature, %rdi
	movl	$458800, %esi           # imm = 0x70030
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	$1, -44(%rbp)
	movl	$458800, %esi           # imm = 0x70030
	callq	verify_signature
	jmp	.LBB3_66
.LBB3_48:
	movabsq	$pat_remove_signature, %rdi
	movl	$458801, %esi           # imm = 0x70031
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	$0, -28(%rbp)
	movl	$458801, %esi           # imm = 0x70031
	callq	verify_signature
.LBB3_49:                               # =>This Inner Loop Header: Depth=1
	movabsq	$pat_remove_signature, %rdi
	movl	$458802, %esi           # imm = 0x70032
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	-28(%rbp), %r14d
	movq	-24(%rbp), %rax
	movzbl	16(%rax), %ebx
	movl	$458802, %esi           # imm = 0x70032
	callq	verify_signature
	cmpl	%ebx, %r14d
	jge	.LBB3_54
# BB#50:                                #   in Loop: Header=BB3_49 Depth=1
	movabsq	$pat_remove_signature, %rdi
	movl	$458803, %esi           # imm = 0x70033
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %r14
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	(%rcx), %rbx
	movl	$458803, %esi           # imm = 0x70033
	callq	verify_signature
	cmpq	%rbx, %r14
	jne	.LBB3_52
# BB#51:
	movabsq	$pat_remove_signature, %rdi
	movl	$458804, %esi           # imm = 0x70034
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	$458804, %esi           # imm = 0x70034
	callq	verify_signature
	jmp	.LBB3_55
.LBB3_52:                               #   in Loop: Header=BB3_49 Depth=1
	movabsq	$pat_remove_signature, %rdi
	movl	$458805, %esi           # imm = 0x70035
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	$458805, %esi           # imm = 0x70035
	callq	verify_signature
# BB#53:                                #   in Loop: Header=BB3_49 Depth=1
	movabsq	$pat_remove_signature, %rdi
	movl	$458806, %esi           # imm = 0x70036
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	$458806, %esi           # imm = 0x70036
	callq	verify_signature
	jmp	.LBB3_49
.LBB3_54:                               # %.loopexit
	jmp	.LBB3_55
.LBB3_55:
	movabsq	$pat_remove_signature, %rdi
	movl	$458807, %esi           # imm = 0x70037
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	-28(%rbp), %r14d
	movq	-24(%rbp), %rax
	movzbl	16(%rax), %ebx
	movl	$458807, %esi           # imm = 0x70037
	callq	verify_signature
	cmpl	%ebx, %r14d
	jl	.LBB3_57
# BB#56:
	movabsq	$pat_remove_signature, %rdi
	movl	$458808, %esi           # imm = 0x70038
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	$0, -44(%rbp)
	movl	$458808, %esi           # imm = 0x70038
	callq	verify_signature
	jmp	.LBB3_66
.LBB3_57:
	movabsq	$pat_remove_signature, %rdi
	movl	$458809, %esi           # imm = 0x70039
	callq	update_signature
	movq	-24(%rbp), %rax
	movzbl	16(%rax), %eax
	subl	$1, %eax
	movslq	%eax, %rdi
	shlq	$4, %rdi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$pat_remove_signature, %rdi
	movl	$458809, %esi           # imm = 0x70039
	callq	verify_signature
# BB#58:
	movabsq	$pat_remove_signature, %rdi
	movl	$458810, %esi           # imm = 0x7003A
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	%rbx, -96(%rbp)
	movl	$0, -28(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$458810, %esi           # imm = 0x7003A
	callq	verify_signature
.LBB3_59:                               # =>This Inner Loop Header: Depth=1
	movabsq	$pat_remove_signature, %rdi
	movl	$458811, %esi           # imm = 0x7003B
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	-28(%rbp), %r14d
	movq	-24(%rbp), %rax
	movzbl	16(%rax), %ebx
	movl	$458811, %esi           # imm = 0x7003B
	callq	verify_signature
	cmpl	%ebx, %r14d
	jge	.LBB3_64
# BB#60:                                #   in Loop: Header=BB3_59 Depth=1
	movabsq	$pat_remove_signature, %rdi
	movl	$458812, %esi           # imm = 0x7003C
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %r14
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	(%rcx), %rbx
	movl	$458812, %esi           # imm = 0x7003C
	callq	verify_signature
	cmpq	%rbx, %r14
	je	.LBB3_62
# BB#61:                                #   in Loop: Header=BB3_59 Depth=1
	movabsq	$pat_remove_signature, %rdi
	movl	$458813, %esi           # imm = 0x7003D
	callq	update_signature
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-28(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rax, %rdi
	movq	-88(%rbp), %rsi
	leaq	16(%rsi), %rax
	movq	%rax, -88(%rbp)
	movl	$16, %edx
	callq	bcopy
	movabsq	$pat_remove_signature, %rdi
	movl	$458813, %esi           # imm = 0x7003D
	callq	verify_signature
.LBB3_62:                               #   in Loop: Header=BB3_59 Depth=1
	movabsq	$pat_remove_signature, %rdi
	movl	$458814, %esi           # imm = 0x7003E
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	$458814, %esi           # imm = 0x7003E
	callq	verify_signature
# BB#63:                                #   in Loop: Header=BB3_59 Depth=1
	movabsq	$pat_remove_signature, %rdi
	movl	$458815, %esi           # imm = 0x7003F
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	$458815, %esi           # imm = 0x7003F
	callq	verify_signature
	jmp	.LBB3_59
.LBB3_64:
	movabsq	$pat_remove_signature, %rdi
	movl	$458816, %esi           # imm = 0x70040
	callq	update_signature
	movq	-24(%rbp), %rax
	movb	16(%rax), %cl
	addb	$-1, %cl
	movb	%cl, 16(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
	movabsq	$pat_remove_signature, %rdi
	movl	$458816, %esi           # imm = 0x70040
	callq	verify_signature
# BB#65:
	movabsq	$pat_remove_signature, %rdi
	movl	$458817, %esi           # imm = 0x70041
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	$1, -44(%rbp)
	movl	$458817, %esi           # imm = 0x70041
	callq	verify_signature
.LBB3_66:
	movabsq	$pat_remove_signature, %rdi
	movl	$458818, %esi           # imm = 0x70042
	callq	update_signature
	movabsq	$pat_remove_signature, %rdi
	movl	-44(%rbp), %ebx
	movl	$458818, %esi           # imm = 0x70042
	callq	verify_signature
	movl	%ebx, %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pat_remove, .Lfunc_end3-pat_remove
	.cfi_endproc
                                        # -- End function
	.globl	pat_search              # -- Begin function pat_search
	.p2align	4, 0x90
	.type	pat_search,@function
pat_search:                             # @pat_search
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi22:
	.cfi_def_cfa_offset 16
.Lcfi23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi24:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Lcfi25:
	.cfi_offset %rbx, -32
.Lcfi26:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movabsq	$pat_search_signature, %rdi
	movl	$524289, %esi           # imm = 0x80001
	callq	update_signature
	movabsq	$pat_search_signature, %rdi
	movq	%rbx, -32(%rbp)
	movq	%r14, -64(%rbp)
	movq	$0, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rbx
	movl	$524289, %esi           # imm = 0x80001
	callq	verify_signature
	cmpq	$0, %rbx
	jne	.LBB4_2
# BB#1:
	movabsq	$pat_search_signature, %rdi
	movl	$524290, %esi           # imm = 0x80002
	callq	update_signature
	movabsq	$pat_search_signature, %rdi
	movq	$0, -56(%rbp)
	movl	$524290, %esi           # imm = 0x80002
	callq	verify_signature
	jmp	.LBB4_15
.LBB4_2:
	movabsq	$pat_search_signature, %rdi
	movl	$524291, %esi           # imm = 0x80003
	callq	update_signature
	movabsq	$pat_search_signature, %rdi
	movl	$524291, %esi           # imm = 0x80003
	callq	verify_signature
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	movabsq	$pat_search_signature, %rdi
	movl	$524292, %esi           # imm = 0x80004
	callq	update_signature
	movabsq	$pat_search_signature, %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %r14
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	andq	(%rax), %rbx
	movl	$524292, %esi           # imm = 0x80004
	callq	verify_signature
	cmpq	%rbx, %r14
	jne	.LBB4_5
# BB#4:                                 #   in Loop: Header=BB4_3 Depth=1
	movabsq	$pat_search_signature, %rdi
	movl	$524293, %esi           # imm = 0x80005
	callq	update_signature
	movabsq	$pat_search_signature, %rdi
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$524293, %esi           # imm = 0x80005
	callq	verify_signature
.LBB4_5:                                #   in Loop: Header=BB4_3 Depth=1
	movabsq	$pat_search_signature, %rdi
	movl	$524294, %esi           # imm = 0x80006
	callq	update_signature
	movq	-24(%rbp), %rax
	movsbl	17(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-32(%rbp), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$pat_search_signature, %rdi
	movl	$524294, %esi           # imm = 0x80006
	callq	verify_signature
# BB#6:                                 #   in Loop: Header=BB4_3 Depth=1
	movabsq	$pat_search_signature, %rdi
	movl	$524295, %esi           # imm = 0x80007
	callq	update_signature
	movabsq	$pat_search_signature, %rdi
	movl	$524295, %esi           # imm = 0x80007
	callq	verify_signature
	cmpq	$0, %rbx
	je	.LBB4_8
# BB#7:                                 #   in Loop: Header=BB4_3 Depth=1
	movabsq	$pat_search_signature, %rdi
	movl	$524296, %esi           # imm = 0x80008
	callq	update_signature
	movabsq	$pat_search_signature, %rdi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rbx
	movl	$524296, %esi           # imm = 0x80008
	callq	verify_signature
	jmp	.LBB4_9
.LBB4_8:                                #   in Loop: Header=BB4_3 Depth=1
	movabsq	$pat_search_signature, %rdi
	movl	$524297, %esi           # imm = 0x80009
	callq	update_signature
	movabsq	$pat_search_signature, %rdi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rbx
	movl	$524297, %esi           # imm = 0x80009
	callq	verify_signature
.LBB4_9:                                #   in Loop: Header=BB4_3 Depth=1
	movabsq	$pat_search_signature, %rdi
	movl	$524298, %esi           # imm = 0x8000A
	callq	update_signature
	movabsq	$pat_search_signature, %rdi
	movq	%rbx, -24(%rbp)
	movl	$524298, %esi           # imm = 0x8000A
	callq	verify_signature
# BB#10:                                #   in Loop: Header=BB4_3 Depth=1
	movabsq	$pat_search_signature, %rdi
	movl	$524299, %esi           # imm = 0x8000B
	callq	update_signature
	movabsq	$pat_search_signature, %rdi
	movl	-36(%rbp), %r14d
	movq	-24(%rbp), %rax
	movsbl	17(%rax), %ebx
	movl	$524299, %esi           # imm = 0x8000B
	callq	verify_signature
	cmpl	%ebx, %r14d
	jl	.LBB4_3
# BB#11:
	movabsq	$pat_search_signature, %rdi
	movl	$524300, %esi           # imm = 0x8000C
	callq	update_signature
	movabsq	$pat_search_signature, %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %r14
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	andq	(%rax), %rbx
	movl	$524300, %esi           # imm = 0x8000C
	callq	verify_signature
	cmpq	%rbx, %r14
	jne	.LBB4_13
# BB#12:
	movabsq	$pat_search_signature, %rdi
	movl	$524301, %esi           # imm = 0x8000D
	callq	update_signature
	movabsq	$pat_search_signature, %rdi
	movq	-24(%rbp), %rbx
	movl	$524301, %esi           # imm = 0x8000D
	callq	verify_signature
	jmp	.LBB4_14
.LBB4_13:
	movabsq	$pat_search_signature, %rdi
	movl	$524302, %esi           # imm = 0x8000E
	callq	update_signature
	movabsq	$pat_search_signature, %rdi
	movq	-48(%rbp), %rbx
	movl	$524302, %esi           # imm = 0x8000E
	callq	verify_signature
.LBB4_14:
	movabsq	$pat_search_signature, %rdi
	movl	$524303, %esi           # imm = 0x8000F
	callq	update_signature
	movabsq	$pat_search_signature, %rdi
	movq	%rbx, -56(%rbp)
	movl	$524303, %esi           # imm = 0x8000F
	callq	verify_signature
.LBB4_15:
	movabsq	$pat_search_signature, %rdi
	movl	$524304, %esi           # imm = 0x80010
	callq	update_signature
	movabsq	$pat_search_signature, %rdi
	movq	-56(%rbp), %rbx
	movl	$524304, %esi           # imm = 0x80010
	callq	verify_signature
	movq	%rbx, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	pat_search, .Lfunc_end4-pat_search
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi27:
	.cfi_def_cfa_offset 16
.Lcfi28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi29:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$256, %rsp              # imm = 0x100
.Lcfi30:
	.cfi_offset %rbx, -32
.Lcfi31:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movl	%edi, %ebx
	movabsq	$main_signature, %rdi
	movl	$589825, %esi           # imm = 0x90001
	callq	update_signature
	leaq	-128(%rbp), %rdi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$0, -52(%rbp)
	movl	%ebx, -96(%rbp)
	movq	%r14, -88(%rbp)
	movq	%rax, -64(%rbp)
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_signature, %rdi
	movl	$589825, %esi           # imm = 0x90001
	callq	verify_signature
# BB#1:
	movabsq	$main_signature, %rdi
	movl	$589826, %esi           # imm = 0x90002
	callq	update_signature
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.1, %rsi
	callq	fopen
	movq	%rax, %rbx
	movabsq	$main_signature, %rdi
	movl	$589826, %esi           # imm = 0x90002
	callq	verify_signature
# BB#2:
	movabsq	$main_signature, %rdi
	movl	$589827, %esi           # imm = 0x90003
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	%rbx, -72(%rbp)
	movl	$589827, %esi           # imm = 0x90003
	callq	verify_signature
	cmpq	$0, %rbx
	jne	.LBB5_6
# BB#3:
	movabsq	$main_signature, %rdi
	movl	$589828, %esi           # imm = 0x90004
	callq	update_signature
	movabsq	$.L.str.2, %rdi
	movq	-88(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	printf
	movabsq	$main_signature, %rdi
	movl	$589828, %esi           # imm = 0x90004
	callq	verify_signature
# BB#4:
	movabsq	$main_signature, %rdi
	movl	$589829, %esi           # imm = 0x90005
	callq	update_signature
	xorl	%edi, %edi
	callq	exit
	movabsq	$main_signature, %rdi
	movl	$589829, %esi           # imm = 0x90005
	callq	verify_signature
# BB#5:
	movabsq	$main_signature, %rdi
	movl	$589830, %esi           # imm = 0x90006
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$589830, %esi           # imm = 0x90006
	callq	verify_signature
.LBB5_6:
	movabsq	$main_signature, %rdi
	movl	$589831, %esi           # imm = 0x90007
	callq	update_signature
	movl	$40, %edi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_signature, %rdi
	movl	$589831, %esi           # imm = 0x90007
	callq	verify_signature
# BB#7:
	movabsq	$main_signature, %rdi
	movl	$589832, %esi           # imm = 0x90008
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	%rbx, -24(%rbp)
	movq	-24(%rbp), %rbx
	movl	$589832, %esi           # imm = 0x90008
	callq	verify_signature
	cmpq	$0, %rbx
	jne	.LBB5_11
# BB#8:
	movabsq	$main_signature, %rdi
	movl	$589833, %esi           # imm = 0x90009
	callq	update_signature
	movabsq	$.L.str.3, %rdi
	callq	perror
	movabsq	$main_signature, %rdi
	movl	$589833, %esi           # imm = 0x90009
	callq	verify_signature
# BB#9:
	movabsq	$main_signature, %rdi
	movl	$589834, %esi           # imm = 0x9000A
	callq	update_signature
	xorl	%edi, %edi
	callq	exit
	movabsq	$main_signature, %rdi
	movl	$589834, %esi           # imm = 0x9000A
	callq	verify_signature
# BB#10:
	movabsq	$main_signature, %rdi
	movl	$589835, %esi           # imm = 0x9000B
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$589835, %esi           # imm = 0x9000B
	callq	verify_signature
.LBB5_11:
	movabsq	$main_signature, %rdi
	movl	$589836, %esi           # imm = 0x9000C
	callq	update_signature
	movabsq	$main_signature, %rbx
	movq	-24(%rbp), %rdi
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset
	movq	%rbx, %rdi
	movl	$589836, %esi           # imm = 0x9000C
	callq	verify_signature
# BB#12:
	movabsq	$main_signature, %rdi
	movl	$589837, %esi           # imm = 0x9000D
	callq	update_signature
	movl	$16, %edi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_signature, %rdi
	movl	$589837, %esi           # imm = 0x9000D
	callq	verify_signature
# BB#13:
	movabsq	$main_signature, %rdi
	movl	$589838, %esi           # imm = 0x9000E
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %rax
	movq	%rbx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	movl	$589838, %esi           # imm = 0x9000E
	callq	verify_signature
	cmpq	$0, %rbx
	jne	.LBB5_17
# BB#14:
	movabsq	$main_signature, %rdi
	movl	$589839, %esi           # imm = 0x9000F
	callq	update_signature
	movabsq	$.L.str.4, %rdi
	callq	perror
	movabsq	$main_signature, %rdi
	movl	$589839, %esi           # imm = 0x9000F
	callq	verify_signature
# BB#15:
	movabsq	$main_signature, %rdi
	movl	$589840, %esi           # imm = 0x90010
	callq	update_signature
	xorl	%edi, %edi
	callq	exit
	movabsq	$main_signature, %rdi
	movl	$589840, %esi           # imm = 0x90010
	callq	verify_signature
# BB#16:
	movabsq	$main_signature, %rdi
	movl	$589841, %esi           # imm = 0x90011
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$589841, %esi           # imm = 0x90011
	callq	verify_signature
.LBB5_17:
	movabsq	$main_signature, %rdi
	movl	$589842, %esi           # imm = 0x90012
	callq	update_signature
	movabsq	$main_signature, %rbx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset
	movq	%rbx, %rdi
	movl	$589842, %esi           # imm = 0x90012
	callq	verify_signature
# BB#18:
	movabsq	$main_signature, %rdi
	movl	$589843, %esi           # imm = 0x90013
	callq	update_signature
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$16, %edi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_signature, %rdi
	movl	$589843, %esi           # imm = 0x90013
	callq	verify_signature
# BB#19:
	movabsq	$main_signature, %rdi
	movl	$589844, %esi           # imm = 0x90014
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-48(%rbp), %rax
	movq	%rbx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rbx
	movl	$589844, %esi           # imm = 0x90014
	callq	verify_signature
	cmpq	$0, %rbx
	jne	.LBB5_23
# BB#20:
	movabsq	$main_signature, %rdi
	movl	$589845, %esi           # imm = 0x90015
	callq	update_signature
	movabsq	$.L.str.5, %rdi
	callq	perror
	movabsq	$main_signature, %rdi
	movl	$589845, %esi           # imm = 0x90015
	callq	verify_signature
# BB#21:
	movabsq	$main_signature, %rdi
	movl	$589846, %esi           # imm = 0x90016
	callq	update_signature
	xorl	%edi, %edi
	callq	exit
	movabsq	$main_signature, %rdi
	movl	$589846, %esi           # imm = 0x90016
	callq	verify_signature
# BB#22:
	movabsq	$main_signature, %rdi
	movl	$589847, %esi           # imm = 0x90017
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$589847, %esi           # imm = 0x90017
	callq	verify_signature
.LBB5_23:
	movabsq	$main_signature, %rdi
	movl	$589848, %esi           # imm = 0x90018
	callq	update_signature
	movabsq	$main_signature, %rbx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	memset
	movq	%rbx, %rdi
	movl	$589848, %esi           # imm = 0x90018
	callq	verify_signature
# BB#24:
	movabsq	$main_signature, %rdi
	movl	$589849, %esi           # imm = 0x90019
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %rax
	movb	$1, 16(%rax)
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movl	$589849, %esi           # imm = 0x90019
	callq	verify_signature
.LBB5_25:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_signature, %rdi
	movl	$589850, %esi           # imm = 0x9001A
	callq	update_signature
	leaq	-256(%rbp), %rdi
	movq	-72(%rbp), %rdx
	movl	$128, %esi
	callq	fgets
	movq	%rax, %rbx
	movabsq	$main_signature, %rdi
	movl	$589850, %esi           # imm = 0x9001A
	callq	verify_signature
# BB#26:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_signature, %rdi
	movl	$589851, %esi           # imm = 0x9001B
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$589851, %esi           # imm = 0x9001B
	callq	verify_signature
	cmpq	$0, %rbx
	je	.LBB5_54
# BB#27:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_signature, %rdi
	movl	$589852, %esi           # imm = 0x9001C
	callq	update_signature
	movabsq	$.L.str.6, %rsi
	leaq	-92(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-256(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	movabsq	$main_signature, %rdi
	movl	$589852, %esi           # imm = 0x9001C
	callq	verify_signature
# BB#28:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_signature, %rdi
	movl	$589853, %esi           # imm = 0x9001D
	callq	update_signature
	movl	$40, %edi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_signature, %rdi
	movl	$589853, %esi           # imm = 0x9001D
	callq	verify_signature
# BB#29:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_signature, %rdi
	movl	$589854, %esi           # imm = 0x9001E
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	%rbx, -32(%rbp)
	movq	-32(%rbp), %rbx
	movl	$589854, %esi           # imm = 0x9001E
	callq	verify_signature
	cmpq	$0, %rbx
	jne	.LBB5_33
# BB#30:
	movabsq	$main_signature, %rdi
	movl	$589855, %esi           # imm = 0x9001F
	callq	update_signature
	movabsq	$.L.str.3, %rdi
	callq	perror
	movabsq	$main_signature, %rdi
	movl	$589855, %esi           # imm = 0x9001F
	callq	verify_signature
# BB#31:
	movabsq	$main_signature, %rdi
	movl	$589856, %esi           # imm = 0x90020
	callq	update_signature
	xorl	%edi, %edi
	callq	exit
	movabsq	$main_signature, %rdi
	movl	$589856, %esi           # imm = 0x90020
	callq	verify_signature
# BB#32:
	movabsq	$main_signature, %rdi
	movl	$589857, %esi           # imm = 0x90021
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$589857, %esi           # imm = 0x90021
	callq	verify_signature
.LBB5_33:                               #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_signature, %rdi
	movl	$589858, %esi           # imm = 0x90022
	callq	update_signature
	movabsq	$main_signature, %rbx
	movq	-32(%rbp), %rdi
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset
	movq	%rbx, %rdi
	movl	$589858, %esi           # imm = 0x90022
	callq	verify_signature
# BB#34:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_signature, %rdi
	movl	$589859, %esi           # imm = 0x90023
	callq	update_signature
	movl	$16, %edi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_signature, %rdi
	movl	$589859, %esi           # imm = 0x90023
	callq	verify_signature
# BB#35:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_signature, %rdi
	movl	$589860, %esi           # imm = 0x90024
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-32(%rbp), %rax
	movq	%rbx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rbx
	movl	$589860, %esi           # imm = 0x90024
	callq	verify_signature
	cmpq	$0, %rbx
	jne	.LBB5_39
# BB#36:
	movabsq	$main_signature, %rdi
	movl	$589861, %esi           # imm = 0x90025
	callq	update_signature
	movabsq	$.L.str.4, %rdi
	callq	perror
	movabsq	$main_signature, %rdi
	movl	$589861, %esi           # imm = 0x90025
	callq	verify_signature
# BB#37:
	movabsq	$main_signature, %rdi
	movl	$589862, %esi           # imm = 0x90026
	callq	update_signature
	xorl	%edi, %edi
	callq	exit
	movabsq	$main_signature, %rdi
	movl	$589862, %esi           # imm = 0x90026
	callq	verify_signature
# BB#38:
	movabsq	$main_signature, %rdi
	movl	$589863, %esi           # imm = 0x90027
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$589863, %esi           # imm = 0x90027
	callq	verify_signature
.LBB5_39:                               #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_signature, %rdi
	movl	$589864, %esi           # imm = 0x90028
	callq	update_signature
	movabsq	$main_signature, %rbx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset
	movq	%rbx, %rdi
	movl	$589864, %esi           # imm = 0x90028
	callq	verify_signature
# BB#40:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_signature, %rdi
	movl	$589865, %esi           # imm = 0x90029
	callq	update_signature
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$16, %edi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_signature, %rdi
	movl	$589865, %esi           # imm = 0x90029
	callq	verify_signature
# BB#41:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_signature, %rdi
	movl	$589866, %esi           # imm = 0x9002A
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-48(%rbp), %rax
	movq	%rbx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rbx
	movl	$589866, %esi           # imm = 0x9002A
	callq	verify_signature
	cmpq	$0, %rbx
	jne	.LBB5_45
# BB#42:
	movabsq	$main_signature, %rdi
	movl	$589867, %esi           # imm = 0x9002B
	callq	update_signature
	movabsq	$.L.str.5, %rdi
	callq	perror
	movabsq	$main_signature, %rdi
	movl	$589867, %esi           # imm = 0x9002B
	callq	verify_signature
# BB#43:
	movabsq	$main_signature, %rdi
	movl	$589868, %esi           # imm = 0x9002C
	callq	update_signature
	xorl	%edi, %edi
	callq	exit
	movabsq	$main_signature, %rdi
	movl	$589868, %esi           # imm = 0x9002C
	callq	verify_signature
# BB#44:
	movabsq	$main_signature, %rdi
	movl	$589869, %esi           # imm = 0x9002D
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$589869, %esi           # imm = 0x9002D
	callq	verify_signature
.LBB5_45:                               #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_signature, %rdi
	movl	$589870, %esi           # imm = 0x9002E
	callq	update_signature
	movabsq	$main_signature, %rbx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	memset
	movq	%rbx, %rdi
	movl	$589870, %esi           # imm = 0x9002E
	callq	verify_signature
# BB#46:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_signature, %rdi
	movl	$589871, %esi           # imm = 0x9002F
	callq	update_signature
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rdi
                                        # kill: %EDI<def> %EDI<kill> %RDI<kill>
	callq	htonl
	movl	%eax, %ebx
	movabsq	$main_signature, %rdi
	movl	$589871, %esi           # imm = 0x9002F
	callq	verify_signature
# BB#47:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_signature, %rdi
	movl	$589872, %esi           # imm = 0x90030
	callq	update_signature
	movl	%ebx, %eax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, (%rcx)
	movl	-40(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	pat_search
	movq	%rax, %rbx
	movabsq	$main_signature, %rdi
	movl	$589872, %esi           # imm = 0x90030
	callq	verify_signature
# BB#48:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_signature, %rdi
	movl	$589873, %esi           # imm = 0x90031
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	%rbx, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %r14
	movl	-40(%rbp), %ebx
	movl	$589873, %esi           # imm = 0x90031
	callq	verify_signature
	cmpq	%rbx, %r14
	jne	.LBB5_50
# BB#49:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_signature, %rdi
	movl	$589874, %esi           # imm = 0x90032
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$589874, %esi           # imm = 0x90032
	callq	verify_signature
	jmp	.LBB5_51
.LBB5_50:                               #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_signature, %rdi
	movl	$589875, %esi           # imm = 0x90033
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$589875, %esi           # imm = 0x90033
	callq	verify_signature
.LBB5_51:                               #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_signature, %rdi
	movl	$589876, %esi           # imm = 0x90034
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-32(%rbp), %rbx
	movl	$589876, %esi           # imm = 0x90034
	callq	verify_signature
	cmpq	$0, %rbx
	jne	.LBB5_53
# BB#52:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_signature, %rdi
	movl	$589877, %esi           # imm = 0x90035
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$589877, %esi           # imm = 0x90035
	callq	verify_signature
.LBB5_53:                               #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_signature, %rdi
	movl	$589878, %esi           # imm = 0x90036
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$589878, %esi           # imm = 0x90036
	callq	verify_signature
	jmp	.LBB5_25
.LBB5_54:
	movabsq	$main_signature, %rdi
	movl	$589879, %esi           # imm = 0x90037
	callq	update_signature
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$main_signature, %rdi
	movl	$589879, %esi           # imm = 0x90037
	callq	verify_signature
# BB#55:
	movabsq	$main_signature, %rdi
	movl	$589880, %esi           # imm = 0x90038
	callq	update_signature
	leaq	-112(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_signature, %rdi
	movl	$589880, %esi           # imm = 0x90038
	callq	verify_signature
# BB#56:
	movabsq	$main_signature, %rdi
	movl	$589881, %esi           # imm = 0x90039
	callq	update_signature
	movabsq	$.L.str.8, %rdi
	movq	-112(%rbp), %rax
	subq	-128(%rbp), %rax
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	movq	-104(%rbp), %rsi
	subq	-120(%rbp), %rsi
	addq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movabsq	$main_signature, %rdi
	movl	$589881, %esi           # imm = 0x90039
	callq	verify_signature
# BB#57:
	movabsq	$main_signature, %rdi
	movl	$589882, %esi           # imm = 0x9003A
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$1, is_signature_queue_full
	movl	-52(%rbp), %ebx
	movl	$589882, %esi           # imm = 0x9003A
	callq	verify_signature
	movl	%ebx, %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc
                                        # -- End function
	.globl	CallcheckerSet          # -- Begin function CallcheckerSet
	.p2align	4, 0x90
	.type	CallcheckerSet,@function
CallcheckerSet:                         # @CallcheckerSet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi32:
	.cfi_def_cfa_offset 16
	callq	init_monitor
	movl	$CallcheckerSet_signature, %edi
	movl	$1, %esi
	callq	update_signature
	movl	$CallcheckerSet_signature, %edi
	movl	$1, %esi
	callq	verify_signature
	movl	$1, %edi
	callq	enqueue_signature_with_return
	movl	$1, %edi
	callq	enqueue_signature_with_remainder_process
	popq	%rax
	retq
.Lfunc_end6:
	.size	CallcheckerSet, .Lfunc_end6-CallcheckerSet
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"small.udp"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"File %s doesn't seem to exist\n"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Allocating p-trie node"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Allocating p-trie mask data"
	.size	.L.str.4, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Allocating p-trie mask's node data"
	.size	.L.str.5, 35

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%f %d"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	" [target finished!]\n"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	" [target] Execution Time: %ld\n"
	.size	.L.str.8, 31

	.type	pat_insert_signature,@object # @pat_insert_signature
	.bss
	.globl	pat_insert_signature
	.p2align	2
pat_insert_signature:
	.long	0                       # 0x0
	.size	pat_insert_signature, 4

	.type	bit_signature,@object   # @bit_signature
	.globl	bit_signature
	.p2align	2
bit_signature:
	.long	0                       # 0x0
	.size	bit_signature, 4

	.type	free_signature,@object  # @free_signature
	.globl	free_signature
	.p2align	2
free_signature:
	.long	0                       # 0x0
	.size	free_signature, 4

	.type	malloc_signature,@object # @malloc_signature
	.globl	malloc_signature
	.p2align	2
malloc_signature:
	.long	0                       # 0x0
	.size	malloc_signature, 4

	.type	bcopy_signature,@object # @bcopy_signature
	.globl	bcopy_signature
	.p2align	2
bcopy_signature:
	.long	0                       # 0x0
	.size	bcopy_signature, 4

	.type	insertR_signature,@object # @insertR_signature
	.globl	insertR_signature
	.p2align	2
insertR_signature:
	.long	0                       # 0x0
	.size	insertR_signature, 4

	.type	pat_remove_signature,@object # @pat_remove_signature
	.globl	pat_remove_signature
	.p2align	2
pat_remove_signature:
	.long	0                       # 0x0
	.size	pat_remove_signature, 4

	.type	pat_search_signature,@object # @pat_search_signature
	.globl	pat_search_signature
	.p2align	2
pat_search_signature:
	.long	0                       # 0x0
	.size	pat_search_signature, 4

	.type	main_signature,@object  # @main_signature
	.globl	main_signature
	.p2align	2
main_signature:
	.long	0                       # 0x0
	.size	main_signature, 4

	.type	gettimeofday_signature,@object # @gettimeofday_signature
	.globl	gettimeofday_signature
	.p2align	2
gettimeofday_signature:
	.long	0                       # 0x0
	.size	gettimeofday_signature, 4

	.type	fopen_signature,@object # @fopen_signature
	.globl	fopen_signature
	.p2align	2
fopen_signature:
	.long	0                       # 0x0
	.size	fopen_signature, 4

	.type	printf_signature,@object # @printf_signature
	.globl	printf_signature
	.p2align	2
printf_signature:
	.long	0                       # 0x0
	.size	printf_signature, 4

	.type	exit_signature,@object  # @exit_signature
	.globl	exit_signature
	.p2align	2
exit_signature:
	.long	0                       # 0x0
	.size	exit_signature, 4

	.type	perror_signature,@object # @perror_signature
	.globl	perror_signature
	.p2align	2
perror_signature:
	.long	0                       # 0x0
	.size	perror_signature, 4

	.type	llvm.memset.p0i8.i64_signature,@object # @llvm.memset.p0i8.i64_signature
	.globl	llvm.memset.p0i8.i64_signature
	.p2align	2
llvm.memset.p0i8.i64_signature:
	.long	0                       # 0x0
	.size	llvm.memset.p0i8.i64_signature, 4

	.type	fgets_signature,@object # @fgets_signature
	.globl	fgets_signature
	.p2align	2
fgets_signature:
	.long	0                       # 0x0
	.size	fgets_signature, 4

	.type	__isoc99_sscanf_signature,@object # @__isoc99_sscanf_signature
	.globl	__isoc99_sscanf_signature
	.p2align	2
__isoc99_sscanf_signature:
	.long	0                       # 0x0
	.size	__isoc99_sscanf_signature, 4

	.type	htonl_signature,@object # @htonl_signature
	.globl	htonl_signature
	.p2align	2
htonl_signature:
	.long	0                       # 0x0
	.size	htonl_signature, 4

	.type	init_monitor_signature,@object # @init_monitor_signature
	.globl	init_monitor_signature
	.p2align	2
init_monitor_signature:
	.long	0                       # 0x0
	.size	init_monitor_signature, 4

	.type	update_signature_signature,@object # @update_signature_signature
	.globl	update_signature_signature
	.p2align	2
update_signature_signature:
	.long	0                       # 0x0
	.size	update_signature_signature, 4

	.type	verify_signature_signature,@object # @verify_signature_signature
	.globl	verify_signature_signature
	.p2align	2
verify_signature_signature:
	.long	0                       # 0x0
	.size	verify_signature_signature, 4

	.type	enqueue_signature_with_return_signature,@object # @enqueue_signature_with_return_signature
	.globl	enqueue_signature_with_return_signature
	.p2align	2
enqueue_signature_with_return_signature:
	.long	0                       # 0x0
	.size	enqueue_signature_with_return_signature, 4

	.type	enqueue_signature_with_remainder_process_signature,@object # @enqueue_signature_with_remainder_process_signature
	.globl	enqueue_signature_with_remainder_process_signature
	.p2align	2
enqueue_signature_with_remainder_process_signature:
	.long	0                       # 0x0
	.size	enqueue_signature_with_remainder_process_signature, 4

	.type	update_signature2_signature,@object # @update_signature2_signature
	.globl	update_signature2_signature
	.p2align	2
update_signature2_signature:
	.long	0                       # 0x0
	.size	update_signature2_signature, 4

	.type	update_signature3_signature,@object # @update_signature3_signature
	.globl	update_signature3_signature
	.p2align	2
update_signature3_signature:
	.long	0                       # 0x0
	.size	update_signature3_signature, 4

	.type	CallcheckerSet_signature,@object # @CallcheckerSet_signature
	.globl	CallcheckerSet_signature
	.p2align	2
CallcheckerSet_signature:
	.long	0                       # 0x0
	.size	CallcheckerSet_signature, 4


	.ident	"clang version 5.0.0 (tags/RELEASE_500/final)"
	.ident	"clang version 5.0.0 (tags/RELEASE_500/final)"
	.section	".note.GNU-stack","",@progbits
