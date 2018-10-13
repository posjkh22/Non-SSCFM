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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
.Lcfi3:
	.cfi_offset %rbx, -40
.Lcfi4:
	.cfi_offset %r14, -32
.Lcfi5:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65538, %edx            # imm = 0x10002
	movl	$65540, %ecx            # imm = 0x10004
	callq	update_signature
	movq	%rbx, -40(%rbp)
	movq	%r14, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_3
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65538, %edx            # imm = 0x10002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rbx
	movl	$65539, %edx            # imm = 0x10003
	movl	$65540, %ecx            # imm = 0x10004
	callq	update_signature
	cmpq	$0, %rbx
	je	.LBB0_3
# BB#2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65539, %edx            # imm = 0x10003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	movl	$65541, %edx            # imm = 0x10005
	movl	$65540, %ecx            # imm = 0x10004
	callq	update_signature
	cmpq	$0, %rbx
	jne	.LBB0_4
.LBB0_3:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65540, %edx            # imm = 0x10004
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	$0, -80(%rbp)
	movl	$65588, %edx            # imm = 0x10034
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_51
.LBB0_4:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65541, %edx            # imm = 0x10005
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rbx
	movq	-40(%rbp), %r14
	movl	$65542, %edx            # imm = 0x10006
	xorl	%ecx, %ecx
	callq	update_signature
	andq	(%r14), %rbx
	movq	%rbx, (%r14)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65542, %edx            # imm = 0x10006
	callq	verify_signature
	movq	-48(%rbp), %rax
	movsbl	17(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-48(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65543, %edx            # imm = 0x10007
	xorl	%ecx, %ecx
	callq	update_signature
# BB#6:                                 #   in Loop: Header=BB0_5 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65543, %edx            # imm = 0x10007
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65544, %edx            # imm = 0x10008
	movl	$65545, %ecx            # imm = 0x10009
	callq	update_signature
	cmpq	$0, %rbx
	je	.LBB0_8
# BB#7:                                 #   in Loop: Header=BB0_5 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65544, %edx            # imm = 0x10008
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-48(%rbp), %rax
	movq	32(%rax), %rbx
	movl	$65546, %edx            # imm = 0x1000A
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65545, %edx            # imm = 0x10009
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-48(%rbp), %rax
	movq	24(%rax), %rbx
	movl	$65546, %edx            # imm = 0x1000A
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65546, %edx            # imm = 0x1000A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	%rbx, -48(%rbp)
	movl	$65547, %edx            # imm = 0x1000B
	xorl	%ecx, %ecx
	callq	update_signature
# BB#10:                                #   in Loop: Header=BB0_5 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65547, %edx            # imm = 0x1000B
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-28(%rbp), %r14d
	movq	-48(%rbp), %rax
	movsbl	17(%rax), %ebx
	movl	$65542, %edx            # imm = 0x10006
	movl	$65548, %ecx            # imm = 0x1000C
	callq	update_signature
	cmpl	%ebx, %r14d
	jl	.LBB0_5
# BB#11:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65548, %edx            # imm = 0x1000C
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %r14
	movq	-48(%rbp), %rax
	movq	(%rax), %rbx
	movl	$65549, %edx            # imm = 0x1000D
	movl	$65573, %ecx            # imm = 0x10025
	callq	update_signature
	cmpq	%rbx, %r14
	jne	.LBB0_36
# BB#12:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65549, %edx            # imm = 0x1000D
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$0, -28(%rbp)
	movl	$65550, %edx            # imm = 0x1000E
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65550, %edx            # imm = 0x1000E
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-28(%rbp), %r14d
	movq	-48(%rbp), %rax
	movzbl	16(%rax), %ebx
	movl	$65551, %edx            # imm = 0x1000F
	movl	$65557, %ecx            # imm = 0x10015
	callq	update_signature
	cmpl	%ebx, %r14d
	jge	.LBB0_20
# BB#14:                                #   in Loop: Header=BB0_13 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65551, %edx            # imm = 0x1000F
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %r14
	movq	-48(%rbp), %rbx
	movl	$65552, %edx            # imm = 0x10010
	movl	$65555, %ecx            # imm = 0x10013
	callq	update_signature
	movq	8(%rbx), %rax
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	cmpq	(%rcx), %r14
	jne	.LBB0_18
# BB#15:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65552, %edx            # imm = 0x10010
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %r14
	movq	-48(%rbp), %rax
	movq	8(%rax), %r15
	movl	-28(%rbp), %ebx
	movl	$65553, %edx            # imm = 0x10011
	xorl	%ecx, %ecx
	callq	update_signature
	movslq	%ebx, %rax
	shlq	$4, %rax
	addq	%r15, %rax
	movq	%r14, 8(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
# BB#16:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65553, %edx            # imm = 0x10011
	callq	verify_signature
	movq	-40(%rbp), %rdi
	callq	free
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65554, %edx            # imm = 0x10012
	xorl	%ecx, %ecx
	callq	update_signature
# BB#17:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65554, %edx            # imm = 0x10012
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	$0, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$65588, %edx            # imm = 0x10034
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_51
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65555, %edx            # imm = 0x10013
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65556, %edx            # imm = 0x10014
	xorl	%ecx, %ecx
	callq	update_signature
# BB#19:                                #   in Loop: Header=BB0_13 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65556, %edx            # imm = 0x10014
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	$65550, %edx            # imm = 0x1000E
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_13
.LBB0_20:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65557, %edx            # imm = 0x10015
	callq	verify_signature
	movq	-48(%rbp), %rax
	movzbl	16(%rax), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	shlq	$4, %rdi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65558, %edx            # imm = 0x10016
	xorl	%ecx, %ecx
	callq	update_signature
# BB#21:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65558, %edx            # imm = 0x10016
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	%rbx, -88(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -28(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$65559, %edx            # imm = 0x10017
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65559, %edx            # imm = 0x10017
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-28(%rbp), %r14d
	movq	-48(%rbp), %rax
	movzbl	16(%rax), %ebx
	movl	$65560, %edx            # imm = 0x10018
	movl	$65567, %ecx            # imm = 0x1001F
	callq	update_signature
	cmpl	%ebx, %r14d
	jge	.LBB0_30
# BB#23:                                #   in Loop: Header=BB0_22 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65560, %edx            # imm = 0x10018
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %r14
	movq	-48(%rbp), %rbx
	movl	$65561, %edx            # imm = 0x10019
	movl	$65563, %ecx            # imm = 0x1001B
	callq	update_signature
	movq	8(%rbx), %rax
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	cmpq	(%rcx), %r14
	jbe	.LBB0_26
# BB#24:                                #   in Loop: Header=BB0_22 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65561, %edx            # imm = 0x10019
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-48(%rbp), %rax
	movq	8(%rax), %r14
	movslq	-28(%rbp), %rbx
	movl	$65562, %edx            # imm = 0x1001A
	xorl	%ecx, %ecx
	callq	update_signature
	shlq	$4, %rbx
	addq	%r14, %rbx
	movq	-64(%rbp), %rsi
	movq	%rbx, %rdi
	movl	$16, %edx
	callq	bcopy
# BB#25:                                #   in Loop: Header=BB0_22 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65562, %edx            # imm = 0x1001A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	$65565, %edx            # imm = 0x1001D
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_28
.LBB0_26:                               #   in Loop: Header=BB0_22 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65563, %edx            # imm = 0x1001B
	callq	verify_signature
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-64(%rbp), %rsi
	movl	$16, %edx
	callq	bcopy
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65564, %edx            # imm = 0x1001C
	xorl	%ecx, %ecx
	callq	update_signature
# BB#27:                                #   in Loop: Header=BB0_22 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65564, %edx            # imm = 0x1001C
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, (%rcx)
	movl	$1, -68(%rbp)
	movl	$65565, %edx            # imm = 0x1001D
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_28:                               #   in Loop: Header=BB0_22 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65565, %edx            # imm = 0x1001D
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65566, %edx            # imm = 0x1001E
	xorl	%ecx, %ecx
	callq	update_signature
# BB#29:                                #   in Loop: Header=BB0_22 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65566, %edx            # imm = 0x1001E
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-64(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -64(%rbp)
	movl	$65559, %edx            # imm = 0x10017
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_22
.LBB0_30:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65567, %edx            # imm = 0x1001F
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-68(%rbp), %ebx
	movl	$65569, %edx            # imm = 0x10021
	movl	$65568, %ecx            # imm = 0x10020
	callq	update_signature
	cmpl	$0, %ebx
	jne	.LBB0_32
# BB#31:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65568, %edx            # imm = 0x10020
	callq	verify_signature
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-64(%rbp), %rsi
	movl	$16, %edx
	callq	bcopy
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65569, %edx            # imm = 0x10021
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_32:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65569, %edx            # imm = 0x10021
	callq	verify_signature
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65570, %edx            # imm = 0x10022
	xorl	%ecx, %ecx
	callq	update_signature
# BB#33:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65570, %edx            # imm = 0x10022
	callq	verify_signature
	movq	-40(%rbp), %rdi
	callq	free
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65571, %edx            # imm = 0x10023
	xorl	%ecx, %ecx
	callq	update_signature
# BB#34:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65571, %edx            # imm = 0x10023
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	$0, -40(%rbp)
	movq	-48(%rbp), %r14
	movb	16(%r14), %bl
	addb	$1, %bl
	movl	$65572, %edx            # imm = 0x10024
	xorl	%ecx, %ecx
	callq	update_signature
	movb	%bl, 16(%r14)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
# BB#35:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65572, %edx            # imm = 0x10024
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-88(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$65588, %edx            # imm = 0x10034
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_51
.LBB0_36:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65573, %edx            # imm = 0x10025
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1, -28(%rbp)
	movl	$65574, %edx            # imm = 0x10026
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_37:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65574, %edx            # imm = 0x10026
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-28(%rbp), %ebx
	movl	$65575, %edx            # imm = 0x10027
	movl	$65578, %ecx            # imm = 0x1002A
	callq	update_signature
	xorl	%r14d, %r14d
	cmpl	$32, %ebx
	jge	.LBB0_41
# BB#38:                                #   in Loop: Header=BB0_37 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65575, %edx            # imm = 0x10027
	callq	verify_signature
	movl	-28(%rbp), %edi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %r14
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65576, %edx            # imm = 0x10028
	xorl	%ecx, %ecx
	callq	update_signature
# BB#39:                                #   in Loop: Header=BB0_37 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65576, %edx            # imm = 0x10028
	callq	verify_signature
	movl	-28(%rbp), %edi
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65577, %edx            # imm = 0x10029
	xorl	%ecx, %ecx
	callq	update_signature
# BB#40:                                #   in Loop: Header=BB0_37 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65577, %edx            # imm = 0x10029
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	cmpq	%rbx, %r14
	sete	%r14b
	movl	$65578, %edx            # imm = 0x1002A
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_41:                               #   in Loop: Header=BB0_37 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65578, %edx            # imm = 0x1002A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65579, %edx            # imm = 0x1002B
	movl	$65581, %ecx            # imm = 0x1002D
	callq	update_signature
	testb	$1, %r14b
	jne	.LBB0_42
	jmp	.LBB0_44
.LBB0_42:                               #   in Loop: Header=BB0_37 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65579, %edx            # imm = 0x1002B
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65580, %edx            # imm = 0x1002C
	xorl	%ecx, %ecx
	callq	update_signature
# BB#43:                                #   in Loop: Header=BB0_37 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65580, %edx            # imm = 0x1002C
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	$65574, %edx            # imm = 0x10026
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_37
.LBB0_44:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65581, %edx            # imm = 0x1002D
	callq	verify_signature
	movq	-56(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65582, %edx            # imm = 0x1002E
	xorl	%ecx, %ecx
	callq	update_signature
# BB#45:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65582, %edx            # imm = 0x1002E
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65583, %edx            # imm = 0x1002F
	movl	$65585, %ecx            # imm = 0x10031
	callq	update_signature
	cmpq	$0, %rbx
	je	.LBB0_48
# BB#46:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65583, %edx            # imm = 0x1002F
	callq	verify_signature
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-40(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-56(%rbp), %rcx
	callq	insertR
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65584, %edx            # imm = 0x10030
	xorl	%ecx, %ecx
	callq	update_signature
# BB#47:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65584, %edx            # imm = 0x10030
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-56(%rbp), %rax
	movq	%rbx, 32(%rax)
	movl	$65587, %edx            # imm = 0x10033
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_50
.LBB0_48:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65585, %edx            # imm = 0x10031
	callq	verify_signature
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-40(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-56(%rbp), %rcx
	callq	insertR
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65586, %edx            # imm = 0x10032
	xorl	%ecx, %ecx
	callq	update_signature
# BB#49:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65586, %edx            # imm = 0x10032
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-56(%rbp), %rax
	movq	%rbx, 24(%rax)
	movl	$65587, %edx            # imm = 0x10033
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_50:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65587, %edx            # imm = 0x10033
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$65588, %edx            # imm = 0x10034
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_51:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65588, %edx            # imm = 0x10034
	callq	verify_signature
	movq	-80(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
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
.Lcfi6:
	.cfi_def_cfa_offset 16
.Lcfi7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi8:
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	movl	$31, %ecx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	subl	-4(%rbp), %ecx
                                        # kill: %CL<def> %ECX<kill>
	shll	%cl, %eax
	cltq
	andq	%rdx, %rax
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
.Lcfi9:
	.cfi_def_cfa_offset 16
.Lcfi10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi11:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Lcfi12:
	.cfi_offset %rbx, -32
.Lcfi13:
	.cfi_offset %r14, -24
	movq	%rcx, %r14
	movl	%edx, %ebx
	movabsq	$main_run_signature_1, %rax
	movabsq	$main_run_signature_2, %rcx
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	$393219, %edx           # imm = 0x60003
	movl	$393218, %ecx           # imm = 0x60002
	callq	update_signature
	movl	%ebx, -20(%rbp)
	movq	%r14, -56(%rbp)
	movq	-32(%rbp), %rax
	movsbl	17(%rax), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB2_2
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393218, %edx           # imm = 0x60002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	movsbl	17(%rax), %r14d
	movq	-56(%rbp), %rax
	movsbl	17(%rax), %ebx
	movl	$393219, %edx           # imm = 0x60003
	movl	$393228, %ecx           # imm = 0x6000C
	callq	update_signature
	cmpl	%ebx, %r14d
	jg	.LBB2_11
.LBB2_2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393219, %edx           # imm = 0x60003
	callq	verify_signature
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	movb	%al, 17(%rcx)
	movl	-20(%rbp), %edi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393220, %edx           # imm = 0x60004
	xorl	%ecx, %ecx
	callq	update_signature
# BB#3:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393220, %edx           # imm = 0x60004
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393221, %edx           # imm = 0x60005
	movl	$393222, %ecx           # imm = 0x60006
	callq	update_signature
	cmpq	$0, %rbx
	je	.LBB2_5
# BB#4:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393221, %edx           # imm = 0x60005
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rbx
	movl	$393223, %edx           # imm = 0x60007
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB2_6
.LBB2_5:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393222, %edx           # imm = 0x60006
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rbx
	movl	$393223, %edx           # imm = 0x60007
	xorl	%ecx, %ecx
	callq	update_signature
.LBB2_6:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393223, %edx           # imm = 0x60007
	callq	verify_signature
	movq	-40(%rbp), %rax
	movq	%rbx, 24(%rax)
	movl	-20(%rbp), %edi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393224, %edx           # imm = 0x60008
	xorl	%ecx, %ecx
	callq	update_signature
# BB#7:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393224, %edx           # imm = 0x60008
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393225, %edx           # imm = 0x60009
	movl	$393226, %ecx           # imm = 0x6000A
	callq	update_signature
	cmpq	$0, %rbx
	je	.LBB2_9
# BB#8:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393225, %edx           # imm = 0x60009
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rbx
	movl	$393227, %edx           # imm = 0x6000B
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB2_10
.LBB2_9:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393226, %edx           # imm = 0x6000A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rbx
	movl	$393227, %edx           # imm = 0x6000B
	xorl	%ecx, %ecx
	callq	update_signature
.LBB2_10:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393227, %edx           # imm = 0x6000B
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rax
	movq	%rbx, 32(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$393235, %edx           # imm = 0x60013
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB2_18
.LBB2_11:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393228, %edx           # imm = 0x6000C
	callq	verify_signature
	movq	-32(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393229, %edx           # imm = 0x6000D
	xorl	%ecx, %ecx
	callq	update_signature
# BB#12:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393229, %edx           # imm = 0x6000D
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393230, %edx           # imm = 0x6000E
	movl	$393232, %ecx           # imm = 0x60010
	callq	update_signature
	cmpq	$0, %rbx
	je	.LBB2_15
# BB#13:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393230, %edx           # imm = 0x6000E
	callq	verify_signature
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	insertR
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393231, %edx           # imm = 0x6000F
	xorl	%ecx, %ecx
	callq	update_signature
# BB#14:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393231, %edx           # imm = 0x6000F
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	movq	%rbx, 32(%rax)
	movl	$393234, %edx           # imm = 0x60012
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB2_17
.LBB2_15:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393232, %edx           # imm = 0x60010
	callq	verify_signature
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	insertR
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393233, %edx           # imm = 0x60011
	xorl	%ecx, %ecx
	callq	update_signature
# BB#16:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393233, %edx           # imm = 0x60011
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	movq	%rbx, 24(%rax)
	movl	$393234, %edx           # imm = 0x60012
	xorl	%ecx, %ecx
	callq	update_signature
.LBB2_17:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393234, %edx           # imm = 0x60012
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$393235, %edx           # imm = 0x60013
	xorl	%ecx, %ecx
	callq	update_signature
.LBB2_18:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393235, %edx           # imm = 0x60013
	callq	verify_signature
	movq	-48(%rbp), %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
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
.Lcfi14:
	.cfi_def_cfa_offset 16
.Lcfi15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi16:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Lcfi17:
	.cfi_offset %rbx, -32
.Lcfi18:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458754, %edx           # imm = 0x70002
	movl	$458756, %ecx           # imm = 0x70004
	callq	update_signature
	movq	%rbx, -56(%rbp)
	movq	%r14, -104(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB3_3
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458754, %edx           # imm = 0x70002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rbx
	movl	$458755, %edx           # imm = 0x70003
	movl	$458756, %ecx           # imm = 0x70004
	callq	update_signature
	cmpq	$0, %rbx
	je	.LBB3_3
# BB#2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458755, %edx           # imm = 0x70003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-24(%rbp), %rbx
	movl	$458757, %edx           # imm = 0x70005
	movl	$458756, %ecx           # imm = 0x70004
	callq	update_signature
	cmpq	$0, %rbx
	jne	.LBB3_4
.LBB3_3:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458756, %edx           # imm = 0x70004
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$0, -44(%rbp)
	movl	$458818, %edx           # imm = 0x70042
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_66
.LBB3_4:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458757, %edx           # imm = 0x70005
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-104(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	%rax, -40(%rbp)
	movq	%rax, -80(%rbp)
	movl	$458758, %edx           # imm = 0x70006
	xorl	%ecx, %ecx
	callq	update_signature
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458758, %edx           # imm = 0x70006
	callq	verify_signature
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
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458759, %edx           # imm = 0x70007
	xorl	%ecx, %ecx
	callq	update_signature
# BB#6:                                 #   in Loop: Header=BB3_5 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458759, %edx           # imm = 0x70007
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458760, %edx           # imm = 0x70008
	movl	$458761, %ecx           # imm = 0x70009
	callq	update_signature
	cmpq	$0, %rbx
	je	.LBB3_8
# BB#7:                                 #   in Loop: Header=BB3_5 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458760, %edx           # imm = 0x70008
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rbx
	movl	$458762, %edx           # imm = 0x7000A
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_9
.LBB3_8:                                #   in Loop: Header=BB3_5 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458761, %edx           # imm = 0x70009
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rbx
	movl	$458762, %edx           # imm = 0x7000A
	xorl	%ecx, %ecx
	callq	update_signature
.LBB3_9:                                #   in Loop: Header=BB3_5 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458762, %edx           # imm = 0x7000A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	%rbx, -24(%rbp)
	movl	$458763, %edx           # imm = 0x7000B
	xorl	%ecx, %ecx
	callq	update_signature
# BB#10:                                #   in Loop: Header=BB3_5 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458763, %edx           # imm = 0x7000B
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-28(%rbp), %r14d
	movq	-24(%rbp), %rax
	movsbl	17(%rax), %ebx
	movl	$458758, %edx           # imm = 0x70006
	movl	$458764, %ecx           # imm = 0x7000C
	callq	update_signature
	cmpl	%ebx, %r14d
	jl	.LBB3_5
# BB#11:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458764, %edx           # imm = 0x7000C
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %r14
	movq	-56(%rbp), %rax
	movq	(%rax), %rbx
	movl	$458765, %edx           # imm = 0x7000D
	movl	$458766, %ecx           # imm = 0x7000E
	callq	update_signature
	cmpq	%rbx, %r14
	je	.LBB3_13
# BB#12:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458765, %edx           # imm = 0x7000D
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$0, -44(%rbp)
	movl	$458818, %edx           # imm = 0x70042
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_66
.LBB3_13:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458766, %edx           # imm = 0x7000E
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-24(%rbp), %rax
	movzbl	16(%rax), %ebx
	movl	$458767, %edx           # imm = 0x7000F
	movl	$458801, %ecx           # imm = 0x70031
	callq	update_signature
	cmpl	$1, %ebx
	jne	.LBB3_48
# BB#14:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458767, %edx           # imm = 0x7000F
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-24(%rbp), %rax
	movsbl	17(%rax), %ebx
	movl	$458768, %edx           # imm = 0x70010
	movl	$458769, %ecx           # imm = 0x70011
	callq	update_signature
	cmpl	$0, %ebx
	jne	.LBB3_16
# BB#15:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458768, %edx           # imm = 0x70010
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$0, -44(%rbp)
	movl	$458818, %edx           # imm = 0x70042
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_66
.LBB3_16:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458769, %edx           # imm = 0x70011
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rbx
	movl	$458770, %edx           # imm = 0x70012
	movl	$458771, %ecx           # imm = 0x70013
	callq	update_signature
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	(%rax), %rbx
	je	.LBB3_18
# BB#17:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458770, %edx           # imm = 0x70012
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$0, -44(%rbp)
	movl	$458818, %edx           # imm = 0x70042
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_66
.LBB3_18:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458771, %edx           # imm = 0x70013
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	%rax, -72(%rbp)
	movl	$458772, %edx           # imm = 0x70014
	xorl	%ecx, %ecx
	callq	update_signature
.LBB3_19:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458772, %edx           # imm = 0x70014
	callq	verify_signature
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
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458773, %edx           # imm = 0x70015
	xorl	%ecx, %ecx
	callq	update_signature
# BB#20:                                #   in Loop: Header=BB3_19 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458773, %edx           # imm = 0x70015
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458774, %edx           # imm = 0x70016
	movl	$458775, %ecx           # imm = 0x70017
	callq	update_signature
	cmpq	$0, %rbx
	je	.LBB3_22
# BB#21:                                #   in Loop: Header=BB3_19 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458774, %edx           # imm = 0x70016
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-64(%rbp), %rax
	movq	32(%rax), %rbx
	movl	$458776, %edx           # imm = 0x70018
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_23
.LBB3_22:                               #   in Loop: Header=BB3_19 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458775, %edx           # imm = 0x70017
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-64(%rbp), %rax
	movq	24(%rax), %rbx
	movl	$458776, %edx           # imm = 0x70018
	xorl	%ecx, %ecx
	callq	update_signature
.LBB3_23:                               #   in Loop: Header=BB3_19 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458776, %edx           # imm = 0x70018
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	%rbx, -64(%rbp)
	movl	$458777, %edx           # imm = 0x70019
	xorl	%ecx, %ecx
	callq	update_signature
# BB#24:                                #   in Loop: Header=BB3_19 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458777, %edx           # imm = 0x70019
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-28(%rbp), %r14d
	movq	-64(%rbp), %rax
	movsbl	17(%rax), %ebx
	movl	$458772, %edx           # imm = 0x70014
	movl	$458778, %ecx           # imm = 0x7001A
	callq	update_signature
	cmpl	%ebx, %r14d
	jl	.LBB3_19
# BB#25:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458778, %edx           # imm = 0x7001A
	callq	verify_signature
	movq	-72(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458779, %edx           # imm = 0x7001B
	xorl	%ecx, %ecx
	callq	update_signature
# BB#26:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458779, %edx           # imm = 0x7001B
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458780, %edx           # imm = 0x7001C
	movl	$458781, %ecx           # imm = 0x7001D
	callq	update_signature
	cmpq	$0, %rbx
	je	.LBB3_28
# BB#27:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458780, %edx           # imm = 0x7001C
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movl	$458782, %edx           # imm = 0x7001E
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_29
.LBB3_28:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458781, %edx           # imm = 0x7001D
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movl	$458782, %edx           # imm = 0x7001E
	xorl	%ecx, %ecx
	callq	update_signature
.LBB3_29:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458782, %edx           # imm = 0x7001E
	callq	verify_signature
	movq	-80(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458783, %edx           # imm = 0x7001F
	xorl	%ecx, %ecx
	callq	update_signature
# BB#30:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458783, %edx           # imm = 0x7001F
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458784, %edx           # imm = 0x70020
	movl	$458789, %ecx           # imm = 0x70025
	callq	update_signature
	cmpq	$0, %rbx
	je	.LBB3_36
# BB#31:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458784, %edx           # imm = 0x70020
	callq	verify_signature
	movq	-40(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458785, %edx           # imm = 0x70021
	xorl	%ecx, %ecx
	callq	update_signature
# BB#32:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458785, %edx           # imm = 0x70021
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458786, %edx           # imm = 0x70022
	movl	$458787, %ecx           # imm = 0x70023
	callq	update_signature
	cmpq	$0, %rbx
	je	.LBB3_34
# BB#33:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458786, %edx           # imm = 0x70022
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rbx
	movl	$458788, %edx           # imm = 0x70024
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_35
.LBB3_34:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458787, %edx           # imm = 0x70023
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rbx
	movl	$458788, %edx           # imm = 0x70024
	xorl	%ecx, %ecx
	callq	update_signature
.LBB3_35:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458788, %edx           # imm = 0x70024
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-80(%rbp), %rax
	movq	%rbx, 32(%rax)
	movl	$458794, %edx           # imm = 0x7002A
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_41
.LBB3_36:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458789, %edx           # imm = 0x70025
	callq	verify_signature
	movq	-40(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458790, %edx           # imm = 0x70026
	xorl	%ecx, %ecx
	callq	update_signature
# BB#37:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458790, %edx           # imm = 0x70026
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458791, %edx           # imm = 0x70027
	movl	$458792, %ecx           # imm = 0x70028
	callq	update_signature
	cmpq	$0, %rbx
	je	.LBB3_39
# BB#38:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458791, %edx           # imm = 0x70027
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rbx
	movl	$458793, %edx           # imm = 0x70029
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_40
.LBB3_39:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458792, %edx           # imm = 0x70028
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rbx
	movl	$458793, %edx           # imm = 0x70029
	xorl	%ecx, %ecx
	callq	update_signature
.LBB3_40:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458793, %edx           # imm = 0x70029
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-80(%rbp), %rax
	movq	%rbx, 24(%rax)
	movl	$458794, %edx           # imm = 0x7002A
	xorl	%ecx, %ecx
	callq	update_signature
.LBB3_41:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458794, %edx           # imm = 0x7002A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rbx
	movl	$458795, %edx           # imm = 0x7002B
	movl	$458796, %ecx           # imm = 0x7002C
	callq	update_signature
	cmpq	$0, %rbx
	je	.LBB3_43
# BB#42:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458795, %edx           # imm = 0x7002B
	callq	verify_signature
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	callq	free
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458796, %edx           # imm = 0x7002C
	xorl	%ecx, %ecx
	callq	update_signature
.LBB3_43:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458796, %edx           # imm = 0x7002C
	callq	verify_signature
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458797, %edx           # imm = 0x7002D
	xorl	%ecx, %ecx
	callq	update_signature
# BB#44:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458797, %edx           # imm = 0x7002D
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-24(%rbp), %r14
	movq	-40(%rbp), %rbx
	movl	$458798, %edx           # imm = 0x7002E
	movl	$458799, %ecx           # imm = 0x7002F
	callq	update_signature
	cmpq	%rbx, %r14
	je	.LBB3_46
# BB#45:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458798, %edx           # imm = 0x7002E
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	movl	$458799, %edx           # imm = 0x7002F
	xorl	%ecx, %ecx
	callq	update_signature
	movq	-24(%rbp), %rax
	movq	%rbx, 8(%rax)
	movq	-40(%rbp), %rax
	movb	16(%rax), %al
	movq	-24(%rbp), %rcx
	movb	%al, 16(%rcx)
.LBB3_46:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458799, %edx           # imm = 0x7002F
	callq	verify_signature
	movq	-40(%rbp), %rdi
	callq	free
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458800, %edx           # imm = 0x70030
	xorl	%ecx, %ecx
	callq	update_signature
# BB#47:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458800, %edx           # imm = 0x70030
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1, -44(%rbp)
	movl	$458818, %edx           # imm = 0x70042
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_66
.LBB3_48:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458801, %edx           # imm = 0x70031
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$0, -28(%rbp)
	movl	$458802, %edx           # imm = 0x70032
	xorl	%ecx, %ecx
	callq	update_signature
.LBB3_49:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458802, %edx           # imm = 0x70032
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-28(%rbp), %r14d
	movq	-24(%rbp), %rax
	movzbl	16(%rax), %ebx
	movl	$458803, %edx           # imm = 0x70033
	movl	$458807, %ecx           # imm = 0x70037
	callq	update_signature
	cmpl	%ebx, %r14d
	jge	.LBB3_54
# BB#50:                                #   in Loop: Header=BB3_49 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458803, %edx           # imm = 0x70033
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %r14
	movq	-24(%rbp), %rbx
	movl	$458804, %edx           # imm = 0x70034
	movl	$458805, %ecx           # imm = 0x70035
	callq	update_signature
	movq	8(%rbx), %rax
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	cmpq	(%rcx), %r14
	jne	.LBB3_52
# BB#51:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458804, %edx           # imm = 0x70034
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458807, %edx           # imm = 0x70037
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_55
.LBB3_52:                               #   in Loop: Header=BB3_49 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458805, %edx           # imm = 0x70035
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458806, %edx           # imm = 0x70036
	xorl	%ecx, %ecx
	callq	update_signature
# BB#53:                                #   in Loop: Header=BB3_49 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458806, %edx           # imm = 0x70036
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	$458802, %edx           # imm = 0x70032
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_49
.LBB3_54:                               # %.loopexit
	jmp	.LBB3_55
.LBB3_55:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458807, %edx           # imm = 0x70037
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-28(%rbp), %r14d
	movq	-24(%rbp), %rax
	movzbl	16(%rax), %ebx
	movl	$458808, %edx           # imm = 0x70038
	movl	$458809, %ecx           # imm = 0x70039
	callq	update_signature
	cmpl	%ebx, %r14d
	jl	.LBB3_57
# BB#56:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458808, %edx           # imm = 0x70038
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$0, -44(%rbp)
	movl	$458818, %edx           # imm = 0x70042
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_66
.LBB3_57:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458809, %edx           # imm = 0x70039
	callq	verify_signature
	movq	-24(%rbp), %rax
	movzbl	16(%rax), %eax
	subl	$1, %eax
	movslq	%eax, %rdi
	shlq	$4, %rdi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458810, %edx           # imm = 0x7003A
	xorl	%ecx, %ecx
	callq	update_signature
# BB#58:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458810, %edx           # imm = 0x7003A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	%rbx, -96(%rbp)
	movl	$0, -28(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$458811, %edx           # imm = 0x7003B
	xorl	%ecx, %ecx
	callq	update_signature
.LBB3_59:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458811, %edx           # imm = 0x7003B
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-28(%rbp), %r14d
	movq	-24(%rbp), %rax
	movzbl	16(%rax), %ebx
	movl	$458812, %edx           # imm = 0x7003C
	movl	$458816, %ecx           # imm = 0x70040
	callq	update_signature
	cmpl	%ebx, %r14d
	jge	.LBB3_64
# BB#60:                                #   in Loop: Header=BB3_59 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458812, %edx           # imm = 0x7003C
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %r14
	movq	-24(%rbp), %rbx
	movl	$458813, %edx           # imm = 0x7003D
	movl	$458814, %ecx           # imm = 0x7003E
	callq	update_signature
	movq	8(%rbx), %rax
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	cmpq	(%rcx), %r14
	je	.LBB3_62
# BB#61:                                #   in Loop: Header=BB3_59 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458813, %edx           # imm = 0x7003D
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-28(%rbp), %rbx
	shlq	$4, %rbx
	addq	%rax, %rbx
	movl	$458814, %edx           # imm = 0x7003E
	xorl	%ecx, %ecx
	callq	update_signature
	movq	-88(%rbp), %rsi
	leaq	16(%rsi), %rax
	movq	%rax, -88(%rbp)
	movq	%rbx, %rdi
	movl	$16, %edx
	callq	bcopy
.LBB3_62:                               #   in Loop: Header=BB3_59 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458814, %edx           # imm = 0x7003E
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458815, %edx           # imm = 0x7003F
	xorl	%ecx, %ecx
	callq	update_signature
# BB#63:                                #   in Loop: Header=BB3_59 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458815, %edx           # imm = 0x7003F
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	$458811, %edx           # imm = 0x7003B
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_59
.LBB3_64:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458816, %edx           # imm = 0x70040
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-24(%rbp), %rax
	movb	16(%rax), %cl
	addb	$-1, %cl
	movb	%cl, 16(%rax)
	movl	$458817, %edx           # imm = 0x70041
	xorl	%ecx, %ecx
	callq	update_signature
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
# BB#65:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458817, %edx           # imm = 0x70041
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	$1, -44(%rbp)
	movl	$458818, %edx           # imm = 0x70042
	xorl	%ecx, %ecx
	callq	update_signature
.LBB3_66:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458818, %edx           # imm = 0x70042
	callq	verify_signature
	movl	-44(%rbp), %eax
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
.Lcfi19:
	.cfi_def_cfa_offset 16
.Lcfi20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi21:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
.Lcfi22:
	.cfi_offset %rbx, -40
.Lcfi23:
	.cfi_offset %r14, -32
.Lcfi24:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524291, %edx           # imm = 0x80003
	movl	$524290, %ecx           # imm = 0x80002
	callq	update_signature
	movq	%rbx, -40(%rbp)
	movq	%r14, -72(%rbp)
	movq	$0, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_2
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524290, %edx           # imm = 0x80002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	$0, -64(%rbp)
	movl	$524304, %edx           # imm = 0x80010
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB4_15
.LBB4_2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524291, %edx           # imm = 0x80003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524292, %edx           # imm = 0x80004
	xorl	%ecx, %ecx
	callq	update_signature
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524292, %edx           # imm = 0x80004
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %r14
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r15
	movl	$524293, %edx           # imm = 0x80005
	movl	$524294, %ecx           # imm = 0x80006
	callq	update_signature
	movq	8(%r15), %rax
	andq	(%rax), %rbx
	cmpq	%rbx, %r14
	jne	.LBB4_5
# BB#4:                                 #   in Loop: Header=BB4_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524293, %edx           # imm = 0x80005
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$524294, %edx           # imm = 0x80006
	xorl	%ecx, %ecx
	callq	update_signature
.LBB4_5:                                #   in Loop: Header=BB4_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524294, %edx           # imm = 0x80006
	callq	verify_signature
	movq	-32(%rbp), %rax
	movsbl	17(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-40(%rbp), %rsi
	callq	bit
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524295, %edx           # imm = 0x80007
	xorl	%ecx, %ecx
	callq	update_signature
# BB#6:                                 #   in Loop: Header=BB4_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524295, %edx           # imm = 0x80007
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524296, %edx           # imm = 0x80008
	movl	$524297, %ecx           # imm = 0x80009
	callq	update_signature
	cmpq	$0, %rbx
	je	.LBB4_8
# BB#7:                                 #   in Loop: Header=BB4_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524296, %edx           # imm = 0x80008
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rbx
	movl	$524298, %edx           # imm = 0x8000A
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB4_9
.LBB4_8:                                #   in Loop: Header=BB4_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524297, %edx           # imm = 0x80009
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rbx
	movl	$524298, %edx           # imm = 0x8000A
	xorl	%ecx, %ecx
	callq	update_signature
.LBB4_9:                                #   in Loop: Header=BB4_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524298, %edx           # imm = 0x8000A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	%rbx, -32(%rbp)
	movl	$524299, %edx           # imm = 0x8000B
	xorl	%ecx, %ecx
	callq	update_signature
# BB#10:                                #   in Loop: Header=BB4_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524299, %edx           # imm = 0x8000B
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-44(%rbp), %r14d
	movq	-32(%rbp), %rax
	movsbl	17(%rax), %ebx
	movl	$524292, %edx           # imm = 0x80004
	movl	$524300, %ecx           # imm = 0x8000C
	callq	update_signature
	cmpl	%ebx, %r14d
	jl	.LBB4_3
# BB#11:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524300, %edx           # imm = 0x8000C
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %r14
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r15
	movl	$524301, %edx           # imm = 0x8000D
	movl	$524302, %ecx           # imm = 0x8000E
	callq	update_signature
	movq	8(%r15), %rax
	andq	(%rax), %rbx
	cmpq	%rbx, %r14
	jne	.LBB4_13
# BB#12:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524301, %edx           # imm = 0x8000D
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rbx
	movl	$524303, %edx           # imm = 0x8000F
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB4_14
.LBB4_13:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524302, %edx           # imm = 0x8000E
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-56(%rbp), %rbx
	movl	$524303, %edx           # imm = 0x8000F
	xorl	%ecx, %ecx
	callq	update_signature
.LBB4_14:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524303, %edx           # imm = 0x8000F
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	%rbx, -64(%rbp)
	movl	$524304, %edx           # imm = 0x80010
	xorl	%ecx, %ecx
	callq	update_signature
.LBB4_15:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524304, %edx           # imm = 0x80010
	callq	verify_signature
	movq	-64(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
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
.Lcfi25:
	.cfi_def_cfa_offset 16
.Lcfi26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi27:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$256, %rsp              # imm = 0x100
.Lcfi28:
	.cfi_offset %rbx, -32
.Lcfi29:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movl	%edi, %ebx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589826, %edx           # imm = 0x90002
	xorl	%ecx, %ecx
	callq	update_signature
	leaq	-128(%rbp), %rdi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$0, -52(%rbp)
	movl	%ebx, -96(%rbp)
	movq	%r14, -88(%rbp)
	movq	%rax, -64(%rbp)
	xorl	%esi, %esi
	callq	gettimeofday
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589826, %edx           # imm = 0x90002
	callq	verify_signature
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.1, %rsi
	callq	fopen
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589827, %edx           # imm = 0x90003
	xorl	%ecx, %ecx
	callq	update_signature
# BB#2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589827, %edx           # imm = 0x90003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	%rbx, -72(%rbp)
	movl	$589828, %edx           # imm = 0x90004
	movl	$589831, %ecx           # imm = 0x90007
	callq	update_signature
	cmpq	$0, %rbx
	jne	.LBB5_6
# BB#3:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589828, %edx           # imm = 0x90004
	callq	verify_signature
	movabsq	$.L.str.2, %rdi
	movq	-88(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	printf
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589829, %edx           # imm = 0x90005
	xorl	%ecx, %ecx
	callq	update_signature
# BB#4:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589829, %edx           # imm = 0x90005
	callq	verify_signature
	xorl	%edi, %edi
	callq	exit
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589830, %edx           # imm = 0x90006
	xorl	%ecx, %ecx
	callq	update_signature
# BB#5:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589830, %edx           # imm = 0x90006
	callq	verify_signature
.LBB5_6:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589831, %edx           # imm = 0x90007
	callq	verify_signature
	movl	$40, %edi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589832, %edx           # imm = 0x90008
	xorl	%ecx, %ecx
	callq	update_signature
# BB#7:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589832, %edx           # imm = 0x90008
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	%rbx, -24(%rbp)
	movq	-24(%rbp), %rbx
	movl	$589836, %edx           # imm = 0x9000C
	movl	$589833, %ecx           # imm = 0x90009
	callq	update_signature
	cmpq	$0, %rbx
	jne	.LBB5_11
# BB#8:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589833, %edx           # imm = 0x90009
	callq	verify_signature
	movabsq	$.L.str.3, %rdi
	callq	perror
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589834, %edx           # imm = 0x9000A
	xorl	%ecx, %ecx
	callq	update_signature
# BB#9:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589834, %edx           # imm = 0x9000A
	callq	verify_signature
	xorl	%edi, %edi
	callq	exit
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589835, %edx           # imm = 0x9000B
	xorl	%ecx, %ecx
	callq	update_signature
# BB#10:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589835, %edx           # imm = 0x9000B
	callq	verify_signature
.LBB5_11:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589836, %edx           # imm = 0x9000C
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movq	-24(%rbp), %rdi
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$589837, %edx           # imm = 0x9000D
	xorl	%ecx, %ecx
	callq	update_signature
# BB#12:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589837, %edx           # imm = 0x9000D
	callq	verify_signature
	movl	$16, %edi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589838, %edx           # imm = 0x9000E
	xorl	%ecx, %ecx
	callq	update_signature
# BB#13:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589838, %edx           # imm = 0x9000E
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-24(%rbp), %rax
	movq	%rbx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	movl	$589842, %edx           # imm = 0x90012
	movl	$589839, %ecx           # imm = 0x9000F
	callq	update_signature
	cmpq	$0, %rbx
	jne	.LBB5_17
# BB#14:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589839, %edx           # imm = 0x9000F
	callq	verify_signature
	movabsq	$.L.str.4, %rdi
	callq	perror
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589840, %edx           # imm = 0x90010
	xorl	%ecx, %ecx
	callq	update_signature
# BB#15:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589840, %edx           # imm = 0x90010
	callq	verify_signature
	xorl	%edi, %edi
	callq	exit
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589841, %edx           # imm = 0x90011
	xorl	%ecx, %ecx
	callq	update_signature
# BB#16:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589841, %edx           # imm = 0x90011
	callq	verify_signature
.LBB5_17:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589842, %edx           # imm = 0x90012
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$589843, %edx           # imm = 0x90013
	xorl	%ecx, %ecx
	callq	update_signature
# BB#18:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589843, %edx           # imm = 0x90013
	callq	verify_signature
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$16, %edi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589844, %edx           # imm = 0x90014
	xorl	%ecx, %ecx
	callq	update_signature
# BB#19:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589844, %edx           # imm = 0x90014
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-48(%rbp), %rax
	movq	%rbx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rbx
	movl	$589848, %edx           # imm = 0x90018
	movl	$589845, %ecx           # imm = 0x90015
	callq	update_signature
	cmpq	$0, %rbx
	jne	.LBB5_23
# BB#20:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589845, %edx           # imm = 0x90015
	callq	verify_signature
	movabsq	$.L.str.5, %rdi
	callq	perror
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589846, %edx           # imm = 0x90016
	xorl	%ecx, %ecx
	callq	update_signature
# BB#21:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589846, %edx           # imm = 0x90016
	callq	verify_signature
	xorl	%edi, %edi
	callq	exit
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589847, %edx           # imm = 0x90017
	xorl	%ecx, %ecx
	callq	update_signature
# BB#22:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589847, %edx           # imm = 0x90017
	callq	verify_signature
.LBB5_23:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589848, %edx           # imm = 0x90018
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	memset
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$589849, %edx           # imm = 0x90019
	xorl	%ecx, %ecx
	callq	update_signature
# BB#24:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589849, %edx           # imm = 0x90019
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-24(%rbp), %rax
	movb	$1, 16(%rax)
	movq	-24(%rbp), %rbx
	movq	-24(%rbp), %r14
	movl	$589850, %edx           # imm = 0x9001A
	xorl	%ecx, %ecx
	callq	update_signature
	movq	%rbx, 32(%r14)
	movq	-24(%rbp), %rax
	movq	%rbx, 24(%rax)
.LBB5_25:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589850, %edx           # imm = 0x9001A
	callq	verify_signature
	leaq	-256(%rbp), %rdi
	movq	-72(%rbp), %rdx
	movl	$128, %esi
	callq	fgets
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589851, %edx           # imm = 0x9001B
	xorl	%ecx, %ecx
	callq	update_signature
# BB#26:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589851, %edx           # imm = 0x9001B
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589852, %edx           # imm = 0x9001C
	movl	$589879, %ecx           # imm = 0x90037
	callq	update_signature
	cmpq	$0, %rbx
	je	.LBB5_54
# BB#27:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589852, %edx           # imm = 0x9001C
	callq	verify_signature
	movabsq	$.L.str.6, %rsi
	leaq	-92(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-256(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589853, %edx           # imm = 0x9001D
	xorl	%ecx, %ecx
	callq	update_signature
# BB#28:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589853, %edx           # imm = 0x9001D
	callq	verify_signature
	movl	$40, %edi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589854, %edx           # imm = 0x9001E
	xorl	%ecx, %ecx
	callq	update_signature
# BB#29:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589854, %edx           # imm = 0x9001E
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	%rbx, -32(%rbp)
	movq	-32(%rbp), %rbx
	movl	$589858, %edx           # imm = 0x90022
	movl	$589855, %ecx           # imm = 0x9001F
	callq	update_signature
	cmpq	$0, %rbx
	jne	.LBB5_33
# BB#30:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589855, %edx           # imm = 0x9001F
	callq	verify_signature
	movabsq	$.L.str.3, %rdi
	callq	perror
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589856, %edx           # imm = 0x90020
	xorl	%ecx, %ecx
	callq	update_signature
# BB#31:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589856, %edx           # imm = 0x90020
	callq	verify_signature
	xorl	%edi, %edi
	callq	exit
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589857, %edx           # imm = 0x90021
	xorl	%ecx, %ecx
	callq	update_signature
# BB#32:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589857, %edx           # imm = 0x90021
	callq	verify_signature
.LBB5_33:                               #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589858, %edx           # imm = 0x90022
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movq	-32(%rbp), %rdi
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$589859, %edx           # imm = 0x90023
	xorl	%ecx, %ecx
	callq	update_signature
# BB#34:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589859, %edx           # imm = 0x90023
	callq	verify_signature
	movl	$16, %edi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589860, %edx           # imm = 0x90024
	xorl	%ecx, %ecx
	callq	update_signature
# BB#35:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589860, %edx           # imm = 0x90024
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	movq	%rbx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rbx
	movl	$589864, %edx           # imm = 0x90028
	movl	$589861, %ecx           # imm = 0x90025
	callq	update_signature
	cmpq	$0, %rbx
	jne	.LBB5_39
# BB#36:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589861, %edx           # imm = 0x90025
	callq	verify_signature
	movabsq	$.L.str.4, %rdi
	callq	perror
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589862, %edx           # imm = 0x90026
	xorl	%ecx, %ecx
	callq	update_signature
# BB#37:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589862, %edx           # imm = 0x90026
	callq	verify_signature
	xorl	%edi, %edi
	callq	exit
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589863, %edx           # imm = 0x90027
	xorl	%ecx, %ecx
	callq	update_signature
# BB#38:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589863, %edx           # imm = 0x90027
	callq	verify_signature
.LBB5_39:                               #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589864, %edx           # imm = 0x90028
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$589865, %edx           # imm = 0x90029
	xorl	%ecx, %ecx
	callq	update_signature
# BB#40:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589865, %edx           # imm = 0x90029
	callq	verify_signature
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$16, %edi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589866, %edx           # imm = 0x9002A
	xorl	%ecx, %ecx
	callq	update_signature
# BB#41:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589866, %edx           # imm = 0x9002A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-48(%rbp), %rax
	movq	%rbx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rbx
	movl	$589870, %edx           # imm = 0x9002E
	movl	$589867, %ecx           # imm = 0x9002B
	callq	update_signature
	cmpq	$0, %rbx
	jne	.LBB5_45
# BB#42:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589867, %edx           # imm = 0x9002B
	callq	verify_signature
	movabsq	$.L.str.5, %rdi
	callq	perror
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589868, %edx           # imm = 0x9002C
	xorl	%ecx, %ecx
	callq	update_signature
# BB#43:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589868, %edx           # imm = 0x9002C
	callq	verify_signature
	xorl	%edi, %edi
	callq	exit
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589869, %edx           # imm = 0x9002D
	xorl	%ecx, %ecx
	callq	update_signature
# BB#44:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589869, %edx           # imm = 0x9002D
	callq	verify_signature
.LBB5_45:                               #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589870, %edx           # imm = 0x9002E
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	memset
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$589871, %edx           # imm = 0x9002F
	xorl	%ecx, %ecx
	callq	update_signature
# BB#46:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589871, %edx           # imm = 0x9002F
	callq	verify_signature
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rdi
                                        # kill: %EDI<def> %EDI<kill> %RDI<kill>
	callq	htonl
	movl	%eax, %ebx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589872, %edx           # imm = 0x90030
	xorl	%ecx, %ecx
	callq	update_signature
# BB#47:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589872, %edx           # imm = 0x90030
	callq	verify_signature
	movl	%ebx, %eax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, (%rcx)
	movl	-40(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	pat_search
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589873, %edx           # imm = 0x90031
	xorl	%ecx, %ecx
	callq	update_signature
# BB#48:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589873, %edx           # imm = 0x90031
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	%rbx, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %r14
	movl	-40(%rbp), %ebx
	movl	$589874, %edx           # imm = 0x90032
	movl	$589875, %ecx           # imm = 0x90033
	callq	update_signature
	cmpq	%rbx, %r14
	jne	.LBB5_50
# BB#49:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589874, %edx           # imm = 0x90032
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589876, %edx           # imm = 0x90034
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB5_51
.LBB5_50:                               #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589875, %edx           # imm = 0x90033
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589876, %edx           # imm = 0x90034
	xorl	%ecx, %ecx
	callq	update_signature
.LBB5_51:                               #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589876, %edx           # imm = 0x90034
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rbx
	movl	$589878, %edx           # imm = 0x90036
	movl	$589877, %ecx           # imm = 0x90035
	callq	update_signature
	cmpq	$0, %rbx
	jne	.LBB5_53
# BB#52:                                #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589877, %edx           # imm = 0x90035
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589878, %edx           # imm = 0x90036
	xorl	%ecx, %ecx
	callq	update_signature
.LBB5_53:                               #   in Loop: Header=BB5_25 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589878, %edx           # imm = 0x90036
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589850, %edx           # imm = 0x9001A
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB5_25
.LBB5_54:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589879, %edx           # imm = 0x90037
	callq	verify_signature
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589880, %edx           # imm = 0x90038
	xorl	%ecx, %ecx
	callq	update_signature
# BB#55:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589880, %edx           # imm = 0x90038
	callq	verify_signature
	leaq	-112(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589881, %edx           # imm = 0x90039
	xorl	%ecx, %ecx
	callq	update_signature
# BB#56:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589881, %edx           # imm = 0x90039
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-112(%rbp), %rax
	subq	-128(%rbp), %rax
	imulq	$1000000, %rax, %rbx    # imm = 0xF4240
	movl	$589882, %edx           # imm = 0x9003A
	xorl	%ecx, %ecx
	callq	update_signature
	movabsq	$.L.str.8, %rdi
	movq	-104(%rbp), %rsi
	subq	-120(%rbp), %rsi
	addq	%rbx, %rsi
	movb	$0, %al
	callq	printf
# BB#57:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$589882, %edx           # imm = 0x9003A
	callq	verify_signature
	movl	-52(%rbp), %ebx
	movl	$589882, %edi           # imm = 0x9003A
	callq	exit_with_remainder_process
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
.Lcfi30:
	.cfi_def_cfa_offset 16
	callq	init_monitor
	movl	$CallcheckerSet_signature_1, %edi
	movl	$CallcheckerSet_signature_1, %esi
	movl	$1, %edx
	movl	$1, %ecx
	callq	update_signature
	movl	$CallcheckerSet_signature_1, %edi
	movl	$CallcheckerSet_signature_1, %esi
	movl	$1, %edx
	callq	verify_signature
	movl	$1, %edi
	callq	enqueue_signature_with_return
	movl	$1, %edi
	callq	exit_with_remainder_process
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

	.type	main_run_signature_1,@object # @main_run_signature_1
	.bss
	.globl	main_run_signature_1
	.p2align	2
main_run_signature_1:
	.long	0                       # 0x0
	.size	main_run_signature_1, 4

	.type	main_run_signature_2,@object # @main_run_signature_2
	.globl	main_run_signature_2
	.p2align	2
main_run_signature_2:
	.long	0                       # 0x0
	.size	main_run_signature_2, 4

	.type	pat_insert_signature_1,@object # @pat_insert_signature_1
	.globl	pat_insert_signature_1
	.p2align	2
pat_insert_signature_1:
	.long	0                       # 0x0
	.size	pat_insert_signature_1, 4

	.type	pat_insert_signature_2,@object # @pat_insert_signature_2
	.globl	pat_insert_signature_2
	.p2align	2
pat_insert_signature_2:
	.long	0                       # 0x0
	.size	pat_insert_signature_2, 4

	.type	bit_signature_1,@object # @bit_signature_1
	.globl	bit_signature_1
	.p2align	2
bit_signature_1:
	.long	0                       # 0x0
	.size	bit_signature_1, 4

	.type	bit_signature_2,@object # @bit_signature_2
	.globl	bit_signature_2
	.p2align	2
bit_signature_2:
	.long	0                       # 0x0
	.size	bit_signature_2, 4

	.type	free_signature_1,@object # @free_signature_1
	.globl	free_signature_1
	.p2align	2
free_signature_1:
	.long	0                       # 0x0
	.size	free_signature_1, 4

	.type	free_signature_2,@object # @free_signature_2
	.globl	free_signature_2
	.p2align	2
free_signature_2:
	.long	0                       # 0x0
	.size	free_signature_2, 4

	.type	malloc_signature_1,@object # @malloc_signature_1
	.globl	malloc_signature_1
	.p2align	2
malloc_signature_1:
	.long	0                       # 0x0
	.size	malloc_signature_1, 4

	.type	malloc_signature_2,@object # @malloc_signature_2
	.globl	malloc_signature_2
	.p2align	2
malloc_signature_2:
	.long	0                       # 0x0
	.size	malloc_signature_2, 4

	.type	bcopy_signature_1,@object # @bcopy_signature_1
	.globl	bcopy_signature_1
	.p2align	2
bcopy_signature_1:
	.long	0                       # 0x0
	.size	bcopy_signature_1, 4

	.type	bcopy_signature_2,@object # @bcopy_signature_2
	.globl	bcopy_signature_2
	.p2align	2
bcopy_signature_2:
	.long	0                       # 0x0
	.size	bcopy_signature_2, 4

	.type	insertR_signature_1,@object # @insertR_signature_1
	.globl	insertR_signature_1
	.p2align	2
insertR_signature_1:
	.long	0                       # 0x0
	.size	insertR_signature_1, 4

	.type	insertR_signature_2,@object # @insertR_signature_2
	.globl	insertR_signature_2
	.p2align	2
insertR_signature_2:
	.long	0                       # 0x0
	.size	insertR_signature_2, 4

	.type	pat_remove_signature_1,@object # @pat_remove_signature_1
	.globl	pat_remove_signature_1
	.p2align	2
pat_remove_signature_1:
	.long	0                       # 0x0
	.size	pat_remove_signature_1, 4

	.type	pat_remove_signature_2,@object # @pat_remove_signature_2
	.globl	pat_remove_signature_2
	.p2align	2
pat_remove_signature_2:
	.long	0                       # 0x0
	.size	pat_remove_signature_2, 4

	.type	pat_search_signature_1,@object # @pat_search_signature_1
	.globl	pat_search_signature_1
	.p2align	2
pat_search_signature_1:
	.long	0                       # 0x0
	.size	pat_search_signature_1, 4

	.type	pat_search_signature_2,@object # @pat_search_signature_2
	.globl	pat_search_signature_2
	.p2align	2
pat_search_signature_2:
	.long	0                       # 0x0
	.size	pat_search_signature_2, 4

	.type	main_signature_1,@object # @main_signature_1
	.globl	main_signature_1
	.p2align	2
main_signature_1:
	.long	0                       # 0x0
	.size	main_signature_1, 4

	.type	main_signature_2,@object # @main_signature_2
	.globl	main_signature_2
	.p2align	2
main_signature_2:
	.long	0                       # 0x0
	.size	main_signature_2, 4

	.type	gettimeofday_signature_1,@object # @gettimeofday_signature_1
	.globl	gettimeofday_signature_1
	.p2align	2
gettimeofday_signature_1:
	.long	0                       # 0x0
	.size	gettimeofday_signature_1, 4

	.type	gettimeofday_signature_2,@object # @gettimeofday_signature_2
	.globl	gettimeofday_signature_2
	.p2align	2
gettimeofday_signature_2:
	.long	0                       # 0x0
	.size	gettimeofday_signature_2, 4

	.type	fopen_signature_1,@object # @fopen_signature_1
	.globl	fopen_signature_1
	.p2align	2
fopen_signature_1:
	.long	0                       # 0x0
	.size	fopen_signature_1, 4

	.type	fopen_signature_2,@object # @fopen_signature_2
	.globl	fopen_signature_2
	.p2align	2
fopen_signature_2:
	.long	0                       # 0x0
	.size	fopen_signature_2, 4

	.type	printf_signature_1,@object # @printf_signature_1
	.globl	printf_signature_1
	.p2align	2
printf_signature_1:
	.long	0                       # 0x0
	.size	printf_signature_1, 4

	.type	printf_signature_2,@object # @printf_signature_2
	.globl	printf_signature_2
	.p2align	2
printf_signature_2:
	.long	0                       # 0x0
	.size	printf_signature_2, 4

	.type	exit_signature_1,@object # @exit_signature_1
	.globl	exit_signature_1
	.p2align	2
exit_signature_1:
	.long	0                       # 0x0
	.size	exit_signature_1, 4

	.type	exit_signature_2,@object # @exit_signature_2
	.globl	exit_signature_2
	.p2align	2
exit_signature_2:
	.long	0                       # 0x0
	.size	exit_signature_2, 4

	.type	perror_signature_1,@object # @perror_signature_1
	.globl	perror_signature_1
	.p2align	2
perror_signature_1:
	.long	0                       # 0x0
	.size	perror_signature_1, 4

	.type	perror_signature_2,@object # @perror_signature_2
	.globl	perror_signature_2
	.p2align	2
perror_signature_2:
	.long	0                       # 0x0
	.size	perror_signature_2, 4

	.type	llvm.memset.p0i8.i64_signature_1,@object # @llvm.memset.p0i8.i64_signature_1
	.globl	llvm.memset.p0i8.i64_signature_1
	.p2align	2
llvm.memset.p0i8.i64_signature_1:
	.long	0                       # 0x0
	.size	llvm.memset.p0i8.i64_signature_1, 4

	.type	llvm.memset.p0i8.i64_signature_2,@object # @llvm.memset.p0i8.i64_signature_2
	.globl	llvm.memset.p0i8.i64_signature_2
	.p2align	2
llvm.memset.p0i8.i64_signature_2:
	.long	0                       # 0x0
	.size	llvm.memset.p0i8.i64_signature_2, 4

	.type	fgets_signature_1,@object # @fgets_signature_1
	.globl	fgets_signature_1
	.p2align	2
fgets_signature_1:
	.long	0                       # 0x0
	.size	fgets_signature_1, 4

	.type	fgets_signature_2,@object # @fgets_signature_2
	.globl	fgets_signature_2
	.p2align	2
fgets_signature_2:
	.long	0                       # 0x0
	.size	fgets_signature_2, 4

	.type	__isoc99_sscanf_signature_1,@object # @__isoc99_sscanf_signature_1
	.globl	__isoc99_sscanf_signature_1
	.p2align	2
__isoc99_sscanf_signature_1:
	.long	0                       # 0x0
	.size	__isoc99_sscanf_signature_1, 4

	.type	__isoc99_sscanf_signature_2,@object # @__isoc99_sscanf_signature_2
	.globl	__isoc99_sscanf_signature_2
	.p2align	2
__isoc99_sscanf_signature_2:
	.long	0                       # 0x0
	.size	__isoc99_sscanf_signature_2, 4

	.type	htonl_signature_1,@object # @htonl_signature_1
	.globl	htonl_signature_1
	.p2align	2
htonl_signature_1:
	.long	0                       # 0x0
	.size	htonl_signature_1, 4

	.type	htonl_signature_2,@object # @htonl_signature_2
	.globl	htonl_signature_2
	.p2align	2
htonl_signature_2:
	.long	0                       # 0x0
	.size	htonl_signature_2, 4

	.type	init_monitor_signature_1,@object # @init_monitor_signature_1
	.globl	init_monitor_signature_1
	.p2align	2
init_monitor_signature_1:
	.long	0                       # 0x0
	.size	init_monitor_signature_1, 4

	.type	init_monitor_signature_2,@object # @init_monitor_signature_2
	.globl	init_monitor_signature_2
	.p2align	2
init_monitor_signature_2:
	.long	0                       # 0x0
	.size	init_monitor_signature_2, 4

	.type	update_signature_signature_1,@object # @update_signature_signature_1
	.globl	update_signature_signature_1
	.p2align	2
update_signature_signature_1:
	.long	0                       # 0x0
	.size	update_signature_signature_1, 4

	.type	update_signature_signature_2,@object # @update_signature_signature_2
	.globl	update_signature_signature_2
	.p2align	2
update_signature_signature_2:
	.long	0                       # 0x0
	.size	update_signature_signature_2, 4

	.type	verify_signature_signature_1,@object # @verify_signature_signature_1
	.globl	verify_signature_signature_1
	.p2align	2
verify_signature_signature_1:
	.long	0                       # 0x0
	.size	verify_signature_signature_1, 4

	.type	verify_signature_signature_2,@object # @verify_signature_signature_2
	.globl	verify_signature_signature_2
	.p2align	2
verify_signature_signature_2:
	.long	0                       # 0x0
	.size	verify_signature_signature_2, 4

	.type	enqueue_signature_with_return_signature_1,@object # @enqueue_signature_with_return_signature_1
	.globl	enqueue_signature_with_return_signature_1
	.p2align	2
enqueue_signature_with_return_signature_1:
	.long	0                       # 0x0
	.size	enqueue_signature_with_return_signature_1, 4

	.type	enqueue_signature_with_return_signature_2,@object # @enqueue_signature_with_return_signature_2
	.globl	enqueue_signature_with_return_signature_2
	.p2align	2
enqueue_signature_with_return_signature_2:
	.long	0                       # 0x0
	.size	enqueue_signature_with_return_signature_2, 4

	.type	exit_with_remainder_process_signature_1,@object # @exit_with_remainder_process_signature_1
	.globl	exit_with_remainder_process_signature_1
	.p2align	2
exit_with_remainder_process_signature_1:
	.long	0                       # 0x0
	.size	exit_with_remainder_process_signature_1, 4

	.type	exit_with_remainder_process_signature_2,@object # @exit_with_remainder_process_signature_2
	.globl	exit_with_remainder_process_signature_2
	.p2align	2
exit_with_remainder_process_signature_2:
	.long	0                       # 0x0
	.size	exit_with_remainder_process_signature_2, 4

	.type	update_signature2_signature_1,@object # @update_signature2_signature_1
	.globl	update_signature2_signature_1
	.p2align	2
update_signature2_signature_1:
	.long	0                       # 0x0
	.size	update_signature2_signature_1, 4

	.type	update_signature2_signature_2,@object # @update_signature2_signature_2
	.globl	update_signature2_signature_2
	.p2align	2
update_signature2_signature_2:
	.long	0                       # 0x0
	.size	update_signature2_signature_2, 4

	.type	update_signature3_signature_1,@object # @update_signature3_signature_1
	.globl	update_signature3_signature_1
	.p2align	2
update_signature3_signature_1:
	.long	0                       # 0x0
	.size	update_signature3_signature_1, 4

	.type	update_signature3_signature_2,@object # @update_signature3_signature_2
	.globl	update_signature3_signature_2
	.p2align	2
update_signature3_signature_2:
	.long	0                       # 0x0
	.size	update_signature3_signature_2, 4

	.type	CallcheckerSet_signature_1,@object # @CallcheckerSet_signature_1
	.globl	CallcheckerSet_signature_1
	.p2align	2
CallcheckerSet_signature_1:
	.long	0                       # 0x0
	.size	CallcheckerSet_signature_1, 4

	.type	CallcheckerSet_signature_2,@object # @CallcheckerSet_signature_2
	.globl	CallcheckerSet_signature_2
	.p2align	2
CallcheckerSet_signature_2:
	.long	0                       # 0x0
	.size	CallcheckerSet_signature_2, 4


	.ident	"clang version 5.0.0 (tags/RELEASE_500/final)"
	.ident	"clang version 5.0.0 (tags/RELEASE_500/final)"
	.section	".note.GNU-stack","",@progbits
