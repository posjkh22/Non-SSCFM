	.text
	.file	"llvm-link"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI0_0:
	.long	1140457472              # float 500
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_1:
	.quad	4696837146684686336     # double 1.0E+6
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$144, %rsp
.Lcfi3:
	.cfi_offset %rbx, -32
.Lcfi4:
	.cfi_offset %r14, -24
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65538, %edx            # imm = 0x10002
	xorl	%ecx, %ecx
	callq	update_signature
	leaq	-96(%rbp), %rdi
	movl	$0, -52(%rbp)
	xorl	%esi, %esi
	movb	$0, %al
	callq	gettimeofday
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65538, %edx            # imm = 0x10002
	callq	verify_signature
	movl	$56, %edi
	movb	$0, %al
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65539, %edx            # imm = 0x10003
	xorl	%ecx, %ecx
	callq	update_signature
# BB#2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65539, %edx            # imm = 0x10003
	callq	verify_signature
	movq	%rbx, Next_Ptr_Glob
	movl	$56, %edi
	movb	$0, %al
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65540, %edx            # imm = 0x10004
	xorl	%ecx, %ecx
	callq	update_signature
# BB#3:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65540, %edx            # imm = 0x10004
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	%rbx, Ptr_Glob
	movq	Next_Ptr_Glob, %rax
	movq	Ptr_Glob, %rcx
	movq	%rax, (%rcx)
	movq	Ptr_Glob, %rax
	movl	$0, 8(%rax)
	movq	Ptr_Glob, %rbx
	movl	$65541, %edx            # imm = 0x10005
	xorl	%ecx, %ecx
	callq	update_signature
	movl	$2, 12(%rbx)
	movq	Ptr_Glob, %rax
	movl	$40, 16(%rax)
	movq	Ptr_Glob, %rdi
	addq	$12, %rdi
	addq	$8, %rdi
	movl	$.L.str, %esi
	callq	strcpy
# BB#4:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65541, %edx            # imm = 0x10005
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	leaq	-160(%rbp), %rdi
	movl	$.L.str.1, %esi
	callq	strcpy
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$65542, %edx            # imm = 0x10006
	xorl	%ecx, %ecx
	callq	update_signature
# BB#5:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65542, %edx            # imm = 0x10006
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$10, Arr_2_Glob+1628
	movl	Reg, %ebx
	movl	$65543, %edx            # imm = 0x10007
	movl	$65544, %ecx            # imm = 0x10008
	callq	update_signature
	cmpl	$0, %ebx
	je	.LBB0_7
# BB#6:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65543, %edx            # imm = 0x10007
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65545, %edx            # imm = 0x10009
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_8
.LBB0_7:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65544, %edx            # imm = 0x10008
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65545, %edx            # imm = 0x10009
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_8:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65545, %edx            # imm = 0x10009
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1000, -48(%rbp)        # imm = 0x3E8
	movl	-48(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	$1, -32(%rbp)
	movl	$65546, %edx            # imm = 0x1000A
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_21 Depth 2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65546, %edx            # imm = 0x1000A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-32(%rbp), %r14d
	movl	-40(%rbp), %ebx
	movl	$65547, %edx            # imm = 0x1000B
	movl	$65568, %ecx            # imm = 0x10020
	callq	update_signature
	cmpl	%ebx, %r14d
	jg	.LBB0_31
# BB#10:                                #   in Loop: Header=BB0_9 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65547, %edx            # imm = 0x1000B
	callq	verify_signature
	callq	Proc_5
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65548, %edx            # imm = 0x1000C
	xorl	%ecx, %ecx
	callq	update_signature
# BB#11:                                #   in Loop: Header=BB0_9 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65548, %edx            # imm = 0x1000C
	callq	verify_signature
	callq	Proc_4
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65549, %edx            # imm = 0x1000D
	xorl	%ecx, %ecx
	callq	update_signature
# BB#12:                                #   in Loop: Header=BB0_9 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65549, %edx            # imm = 0x1000D
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	leaq	-128(%rbp), %rdi
	movl	$2, -24(%rbp)
	movl	$3, -28(%rbp)
	movl	$.L.str.2, %esi
	callq	strcpy
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$65550, %edx            # imm = 0x1000E
	xorl	%ecx, %ecx
	callq	update_signature
# BB#13:                                #   in Loop: Header=BB0_9 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65550, %edx            # imm = 0x1000E
	callq	verify_signature
	leaq	-128(%rbp), %rsi
	leaq	-160(%rbp), %rdi
	movl	$1, -44(%rbp)
	movb	$0, %al
	callq	Func_2
	movl	%eax, %ebx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65551, %edx            # imm = 0x1000F
	xorl	%ecx, %ecx
	callq	update_signature
# BB#14:                                #   in Loop: Header=BB0_9 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65551, %edx            # imm = 0x1000F
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	cmpl	$0, %ebx
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, Bool_Glob
	movl	$65552, %edx            # imm = 0x10010
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_15:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65552, %edx            # imm = 0x10010
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-24(%rbp), %r14d
	movl	-28(%rbp), %ebx
	movl	$65553, %edx            # imm = 0x10011
	movl	$65555, %ecx            # imm = 0x10013
	callq	update_signature
	cmpl	%ebx, %r14d
	jge	.LBB0_18
# BB#16:                                #   in Loop: Header=BB0_15 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65553, %edx            # imm = 0x10011
	callq	verify_signature
	leaq	-36(%rbp), %rdx
	imull	$5, -24(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-24(%rbp), %edi
	movl	-28(%rbp), %esi
	movb	$0, %al
	callq	Proc_7
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65554, %edx            # imm = 0x10012
	xorl	%ecx, %ecx
	callq	update_signature
# BB#17:                                #   in Loop: Header=BB0_15 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65554, %edx            # imm = 0x10012
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movl	$65552, %edx            # imm = 0x10010
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_15
.LBB0_18:                               #   in Loop: Header=BB0_9 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65555, %edx            # imm = 0x10013
	callq	verify_signature
	movabsq	$Arr_1_Glob, %rdi
	movabsq	$Arr_2_Glob, %rsi
	movl	-24(%rbp), %edx
	movl	-36(%rbp), %ecx
	movb	$0, %al
	callq	Proc_8
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65556, %edx            # imm = 0x10014
	xorl	%ecx, %ecx
	callq	update_signature
# BB#19:                                #   in Loop: Header=BB0_9 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65556, %edx            # imm = 0x10014
	callq	verify_signature
	movq	Ptr_Glob, %rdi
	callq	Proc_1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65557, %edx            # imm = 0x10015
	xorl	%ecx, %ecx
	callq	update_signature
# BB#20:                                #   in Loop: Header=BB0_9 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65557, %edx            # imm = 0x10015
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movb	$65, -17(%rbp)
	movl	$65558, %edx            # imm = 0x10016
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_21:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65558, %edx            # imm = 0x10016
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsbl	-17(%rbp), %r14d
	movsbl	Ch_2_Glob, %ebx
	movl	$65559, %edx            # imm = 0x10017
	movl	$65566, %ecx            # imm = 0x1001E
	callq	update_signature
	cmpl	%ebx, %r14d
	jg	.LBB0_29
# BB#22:                                #   in Loop: Header=BB0_21 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65559, %edx            # imm = 0x10017
	callq	verify_signature
	movl	-44(%rbp), %r14d
	movsbl	-17(%rbp), %edi
	movl	$67, %esi
	movb	$0, %al
	callq	Func_1
	movl	%eax, %ebx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65560, %edx            # imm = 0x10018
	xorl	%ecx, %ecx
	callq	update_signature
# BB#23:                                #   in Loop: Header=BB0_21 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65560, %edx            # imm = 0x10018
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65561, %edx            # imm = 0x10019
	movl	$65564, %ecx            # imm = 0x1001C
	callq	update_signature
	cmpl	%ebx, %r14d
	jne	.LBB0_27
# BB#24:                                #   in Loop: Header=BB0_21 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65561, %edx            # imm = 0x10019
	callq	verify_signature
	leaq	-44(%rbp), %rsi
	xorl	%edi, %edi
	movb	$0, %al
	callq	Proc_6
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65562, %edx            # imm = 0x1001A
	xorl	%ecx, %ecx
	callq	update_signature
# BB#25:                                #   in Loop: Header=BB0_21 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65562, %edx            # imm = 0x1001A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	leaq	-128(%rbp), %rdi
	movl	$.L.str.3, %esi
	callq	strcpy
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$65563, %edx            # imm = 0x1001B
	xorl	%ecx, %ecx
	callq	update_signature
# BB#26:                                #   in Loop: Header=BB0_21 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65563, %edx            # imm = 0x1001B
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, Int_Glob
	movl	$65564, %edx            # imm = 0x1001C
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_27:                               #   in Loop: Header=BB0_21 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65564, %edx            # imm = 0x1001C
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65565, %edx            # imm = 0x1001D
	xorl	%ecx, %ecx
	callq	update_signature
# BB#28:                                #   in Loop: Header=BB0_21 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65565, %edx            # imm = 0x1001D
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movb	-17(%rbp), %al
	addb	$1, %al
	movb	%al, -17(%rbp)
	movl	$65558, %edx            # imm = 0x10016
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_21
.LBB0_29:                               #   in Loop: Header=BB0_9 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65566, %edx            # imm = 0x1001E
	callq	verify_signature
	leaq	-24(%rbp), %rdi
	movl	-28(%rbp), %eax
	imull	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cltd
	idivl	-36(%rbp)
	movl	%eax, -24(%rbp)
	movl	-28(%rbp), %eax
	subl	-36(%rbp), %eax
	imull	$7, %eax, %eax
	subl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	callq	Proc_2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65567, %edx            # imm = 0x1001F
	xorl	%ecx, %ecx
	callq	update_signature
# BB#30:                                #   in Loop: Header=BB0_9 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65567, %edx            # imm = 0x1001F
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movl	$65546, %edx            # imm = 0x1000A
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_9
.LBB0_31:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65568, %edx            # imm = 0x10020
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	End_Time, %rax
	subq	Begin_Time, %rax
	movq	%rax, User_Time
	movq	User_Time, %rbx
	movl	$65569, %edx            # imm = 0x10021
	movl	$65570, %ecx            # imm = 0x10022
	callq	update_signature
	cmpq	$1000, %rbx             # imm = 0x3E8
	jge	.LBB0_33
# BB#32:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65569, %edx            # imm = 0x10021
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65571, %edx            # imm = 0x10023
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_34
.LBB0_33:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65570, %edx            # imm = 0x10022
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2ssq	User_Time, %xmm2
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	cvtsi2ssl	-40(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm0
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -64(%rbp)        # 8-byte Spill
	movl	$65571, %edx            # imm = 0x10023
	xorl	%ecx, %ecx
	callq	update_signature
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, Microseconds
	cvtsi2ssl	-40(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	cvtsi2ssq	User_Time, %xmm0
	divss	%xmm0, %xmm1
	movss	%xmm1, Dhrystones_Per_Second
.LBB0_34:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65571, %edx            # imm = 0x10023
	callq	verify_signature
	leaq	-80(%rbp), %rdi
	xorl	%esi, %esi
	movb	$0, %al
	callq	gettimeofday
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65572, %edx            # imm = 0x10024
	xorl	%ecx, %ecx
	callq	update_signature
# BB#35:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65572, %edx            # imm = 0x10024
	callq	verify_signature
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65573, %edx            # imm = 0x10025
	xorl	%ecx, %ecx
	callq	update_signature
# BB#36:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65573, %edx            # imm = 0x10025
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-80(%rbp), %rax
	subq	-96(%rbp), %rax
	imulq	$1000000, %rax, %rbx    # imm = 0xF4240
	movl	$65574, %edx            # imm = 0x10026
	xorl	%ecx, %ecx
	callq	update_signature
	movabsq	$.L.str.5, %rdi
	movq	-72(%rbp), %rsi
	subq	-88(%rbp), %rsi
	addq	%rbx, %rsi
	movb	$0, %al
	callq	printf
# BB#37:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65574, %edx            # imm = 0x10026
	callq	verify_signature
	movl	-52(%rbp), %ebx
	movl	$65574, %edi            # imm = 0x10026
	callq	exit_with_remainder_process
	movl	%ebx, %eax
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	Proc_5                  # -- Begin function Proc_5
	.p2align	4, 0x90
	.type	Proc_5,@function
Proc_5:                                 # @Proc_5
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
	movb	$65, Ch_1_Glob
	movl	$0, Bool_Glob
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	Proc_5, .Lfunc_end1-Proc_5
	.cfi_endproc
                                        # -- End function
	.globl	Proc_4                  # -- Begin function Proc_4
	.p2align	4, 0x90
	.type	Proc_4,@function
Proc_4:                                 # @Proc_4
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi8:
	.cfi_def_cfa_offset 16
.Lcfi9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi10:
	.cfi_def_cfa_register %rbp
	movsbl	Ch_1_Glob, %eax
	cmpl	$65, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	orl	Bool_Glob, %eax
	movl	%eax, Bool_Glob
	movb	$66, Ch_2_Glob
	movl	-8(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	Proc_4, .Lfunc_end2-Proc_4
	.cfi_endproc
                                        # -- End function
	.globl	Proc_1                  # -- Begin function Proc_1
	.p2align	4, 0x90
	.type	Proc_1,@function
Proc_1:                                 # @Proc_1
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi11:
	.cfi_def_cfa_offset 16
.Lcfi12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi13:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
.Lcfi14:
	.cfi_offset %rbx, -32
.Lcfi15:
	.cfi_offset %r14, -24
	movabsq	$main_run_signature_1, %rax
	movabsq	$main_run_signature_2, %rsi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rbx
	movq	%rax, %rdi
	movl	$458754, %edx           # imm = 0x70002
	xorl	%ecx, %ecx
	callq	update_signature
	movq	%rbx, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	Ptr_Glob, %rsi
	movl	$56, %edx
	callq	memcpy
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458754, %edx           # imm = 0x70002
	callq	verify_signature
	movq	-32(%rbp), %rax
	movl	$5, 16(%rax)
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rdi
	callq	Proc_3
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458755, %edx           # imm = 0x70003
	xorl	%ecx, %ecx
	callq	update_signature
# BB#2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458755, %edx           # imm = 0x70003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-24(%rbp), %rax
	movl	8(%rax), %ebx
	movl	$458756, %edx           # imm = 0x70004
	movl	$458758, %ecx           # imm = 0x70006
	callq	update_signature
	cmpl	$0, %ebx
	jne	.LBB3_5
# BB#3:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458756, %edx           # imm = 0x70004
	callq	verify_signature
	movq	-24(%rbp), %rax
	movl	$6, 16(%rax)
	movq	-32(%rbp), %rax
	movl	12(%rax), %edi
	movq	-24(%rbp), %rsi
	addq	$12, %rsi
	movb	$0, %al
	callq	Proc_6
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458757, %edx           # imm = 0x70005
	xorl	%ecx, %ecx
	callq	update_signature
# BB#4:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458757, %edx           # imm = 0x70005
	callq	verify_signature
	movq	Ptr_Glob, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movl	16(%rax), %edi
	movq	-24(%rbp), %rdx
	addq	$12, %rdx
	addq	$4, %rdx
	movl	$10, %esi
	movb	$0, %al
	callq	Proc_7
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458759, %edx           # imm = 0x70007
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_6
.LBB3_5:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458758, %edx           # imm = 0x70006
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movl	$56, %edx
	callq	memcpy
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$458759, %edx           # imm = 0x70007
	xorl	%ecx, %ecx
	callq	update_signature
.LBB3_6:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$458759, %edx           # imm = 0x70007
	callq	verify_signature
	movl	-36(%rbp), %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	Proc_1, .Lfunc_end3-Proc_1
	.cfi_endproc
                                        # -- End function
	.globl	Proc_2                  # -- Begin function Proc_2
	.p2align	4, 0x90
	.type	Proc_2,@function
Proc_2:                                 # @Proc_2
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi16:
	.cfi_def_cfa_offset 16
.Lcfi17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi18:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Lcfi19:
	.cfi_offset %rbx, -24
	movabsq	$main_run_signature_1, %rax
	movabsq	$main_run_signature_2, %rsi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rcx
	movl	(%rcx), %ecx
	addl	$10, %ecx
	movl	%ecx, -12(%rbp)
	movq	%rax, %rdi
	movl	$524290, %edx           # imm = 0x80002
	xorl	%ecx, %ecx
	callq	update_signature
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524290, %edx           # imm = 0x80002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsbl	Ch_1_Glob, %ebx
	movl	$524291, %edx           # imm = 0x80003
	movl	$524292, %ecx           # imm = 0x80004
	callq	update_signature
	cmpl	$65, %ebx
	jne	.LBB4_3
# BB#2:                                 #   in Loop: Header=BB4_1 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524291, %edx           # imm = 0x80003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	subl	Int_Glob, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$0, -16(%rbp)
	movl	$524292, %edx           # imm = 0x80004
	xorl	%ecx, %ecx
	callq	update_signature
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524292, %edx           # imm = 0x80004
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524293, %edx           # imm = 0x80005
	xorl	%ecx, %ecx
	callq	update_signature
# BB#4:                                 #   in Loop: Header=BB4_1 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524293, %edx           # imm = 0x80005
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-16(%rbp), %ebx
	movl	$524290, %edx           # imm = 0x80002
	movl	$524294, %ecx           # imm = 0x80006
	callq	update_signature
	cmpl	$0, %ebx
	jne	.LBB4_1
# BB#5:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524294, %edx           # imm = 0x80006
	callq	verify_signature
	movl	-28(%rbp), %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Proc_2, .Lfunc_end4-Proc_2
	.cfi_endproc
                                        # -- End function
	.globl	Proc_3                  # -- Begin function Proc_3
	.p2align	4, 0x90
	.type	Proc_3,@function
Proc_3:                                 # @Proc_3
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi20:
	.cfi_def_cfa_offset 16
.Lcfi21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi22:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Lcfi23:
	.cfi_offset %rbx, -24
	movabsq	$main_run_signature_1, %rax
	movabsq	$main_run_signature_2, %rsi
	movq	%rdi, -16(%rbp)
	movq	Ptr_Glob, %rbx
	movq	%rax, %rdi
	movl	$720898, %edx           # imm = 0xB0002
	movl	$720899, %ecx           # imm = 0xB0003
	callq	update_signature
	cmpq	$0, %rbx
	je	.LBB5_2
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720898, %edx           # imm = 0xB0002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	Ptr_Glob, %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$720899, %edx           # imm = 0xB0003
	xorl	%ecx, %ecx
	callq	update_signature
.LBB5_2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720899, %edx           # imm = 0xB0003
	callq	verify_signature
	movl	Int_Glob, %esi
	movq	Ptr_Glob, %rdx
	addq	$12, %rdx
	addq	$4, %rdx
	movl	$10, %edi
	movb	$0, %al
	callq	Proc_7
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720900, %edx           # imm = 0xB0004
	xorl	%ecx, %ecx
	callq	update_signature
# BB#3:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720900, %edx           # imm = 0xB0004
	callq	verify_signature
	movl	-20(%rbp), %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Proc_3, .Lfunc_end5-Proc_3
	.cfi_endproc
                                        # -- End function
	.globl	Proc_6                  # -- Begin function Proc_6
	.p2align	4, 0x90
	.type	Proc_6,@function
Proc_6:                                 # @Proc_6
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi24:
	.cfi_def_cfa_offset 16
.Lcfi25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi26:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Lcfi27:
	.cfi_offset %rbx, -24
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-12(%rbp), %edi
	callq	Func_3
	movl	%eax, %ebx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$786434, %edx           # imm = 0xC0002
	xorl	%ecx, %ecx
	callq	update_signature
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$786434, %edx           # imm = 0xC0002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$786436, %edx           # imm = 0xC0004
	movl	$786435, %ecx           # imm = 0xC0003
	callq	update_signature
	cmpl	$0, %ebx
	jne	.LBB6_3
# BB#2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$786435, %edx           # imm = 0xC0003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-24(%rbp), %rax
	movl	$3, (%rax)
	movl	$786436, %edx           # imm = 0xC0004
	xorl	%ecx, %ecx
	callq	update_signature
.LBB6_3:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$786436, %edx           # imm = 0xC0004
	callq	verify_signature
	movl	-28(%rbp), %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Proc_6, .Lfunc_end6-Proc_6
	.cfi_endproc
                                        # -- End function
	.globl	Func_3                  # -- Begin function Func_3
	.p2align	4, 0x90
	.type	Func_3,@function
Func_3:                                 # @Func_3
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi28:
	.cfi_def_cfa_offset 16
.Lcfi29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi30:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Lcfi31:
	.cfi_offset %rbx, -24
	movabsq	$main_run_signature_1, %rax
	movabsq	$main_run_signature_2, %rsi
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -16(%rbp)
	movl	-16(%rbp), %ebx
	movq	%rax, %rdi
	movl	$851970, %edx           # imm = 0xD0002
	movl	$851971, %ecx           # imm = 0xD0003
	callq	update_signature
	cmpl	$2, %ebx
	jne	.LBB7_2
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$851970, %edx           # imm = 0xD0002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1, -12(%rbp)
	movl	$851972, %edx           # imm = 0xD0004
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB7_3
.LBB7_2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$851971, %edx           # imm = 0xD0003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$0, -12(%rbp)
	movl	$851972, %edx           # imm = 0xD0004
	xorl	%ecx, %ecx
	callq	update_signature
.LBB7_3:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$851972, %edx           # imm = 0xD0004
	callq	verify_signature
	movl	-12(%rbp), %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Func_3, .Lfunc_end7-Func_3
	.cfi_endproc
                                        # -- End function
	.globl	Proc_7                  # -- Begin function Proc_7
	.p2align	4, 0x90
	.type	Proc_7,@function
Proc_7:                                 # @Proc_7
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi32:
	.cfi_def_cfa_offset 16
.Lcfi33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi34:
	.cfi_def_cfa_register %rbp
	movl	%edi, -12(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-4(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-28(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Proc_7, .Lfunc_end8-Proc_7
	.cfi_endproc
                                        # -- End function
	.globl	Proc_8                  # -- Begin function Proc_8
	.p2align	4, 0x90
	.type	Proc_8,@function
Proc_8:                                 # @Proc_8
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi35:
	.cfi_def_cfa_offset 16
.Lcfi36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi37:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Lcfi38:
	.cfi_offset %rbx, -32
.Lcfi39:
	.cfi_offset %r14, -24
	movabsq	$main_run_signature_1, %rax
	movabsq	$main_run_signature_2, %r8
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -44(%rbp)
	movl	-48(%rbp), %ecx
	addl	$5, %ecx
	movl	%ecx, -20(%rbp)
	movl	-44(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movslq	-20(%rbp), %rsi
	movl	%ecx, (%rdx,%rsi,4)
	movq	%rax, %rdi
	movq	%r8, %rsi
	movl	$983042, %edx           # imm = 0xF0002
	xorl	%ecx, %ecx
	callq	update_signature
	movq	-32(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$30, %edx
	movslq	%edx, %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983042, %edx           # imm = 0xF0002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-24(%rbp), %r14d
	movl	-20(%rbp), %ebx
	addl	$1, %ebx
	movl	$983043, %edx           # imm = 0xF0003
	movl	$983045, %ecx           # imm = 0xF0005
	callq	update_signature
	cmpl	%ebx, %r14d
	jg	.LBB9_4
# BB#2:                                 #   in Loop: Header=BB9_1 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983043, %edx           # imm = 0xF0003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	imulq	$200, %rdx, %rdx
	addq	%rcx, %rdx
	movslq	-24(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
	movl	$983044, %edx           # imm = 0xF0004
	xorl	%ecx, %ecx
	callq	update_signature
# BB#3:                                 #   in Loop: Header=BB9_1 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983044, %edx           # imm = 0xF0004
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movl	$983042, %edx           # imm = 0xF0002
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB9_1
.LBB9_4:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983045, %edx           # imm = 0xF0005
	callq	verify_signature
	movq	-40(%rbp), %rax
	movslq	-20(%rbp), %rcx
	imulq	$200, %rcx, %rcx
	addq	%rax, %rcx
	movl	-20(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	(%rcx,%rax,4), %edx
	addl	$1, %edx
	movl	%edx, (%rcx,%rax,4)
	movq	-32(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$20, %edx
	movslq	%edx, %rdx
	imulq	$200, %rdx, %rdx
	addq	%rcx, %rdx
	movslq	-20(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
	movl	$5, Int_Glob
	movl	-52(%rbp), %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Proc_8, .Lfunc_end9-Proc_8
	.cfi_endproc
                                        # -- End function
	.globl	Func_1                  # -- Begin function Func_1
	.p2align	4, 0x90
	.type	Func_1,@function
Func_1:                                 # @Func_1
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi40:
	.cfi_def_cfa_offset 16
.Lcfi41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi42:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$main_run_signature_1, %rax
	movabsq	$main_run_signature_2, %rcx
	movb	%dil, -4(%rbp)
	movb	%sil, -3(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	$1048578, %edx          # imm = 0x100002
	movl	$1048579, %ecx          # imm = 0x100003
	callq	update_signature
	movb	-4(%rbp), %al
	movb	%al, -1(%rbp)
	movb	-1(%rbp), %al
	movb	%al, -2(%rbp)
	movsbl	-2(%rbp), %eax
	movsbl	-3(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB10_2
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1048578, %edx          # imm = 0x100002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$0, -8(%rbp)
	movl	$1048580, %edx          # imm = 0x100004
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB10_3
.LBB10_2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1048579, %edx          # imm = 0x100003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movb	-1(%rbp), %al
	movb	%al, Ch_1_Glob
	movl	$1, -8(%rbp)
	movl	$1048580, %edx          # imm = 0x100004
	xorl	%ecx, %ecx
	callq	update_signature
.LBB10_3:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1048580, %edx          # imm = 0x100004
	callq	verify_signature
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Func_1, .Lfunc_end10-Func_1
	.cfi_endproc
                                        # -- End function
	.globl	Func_2                  # -- Begin function Func_2
	.p2align	4, 0x90
	.type	Func_2,@function
Func_2:                                 # @Func_2
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi43:
	.cfi_def_cfa_offset 16
.Lcfi44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi45:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
.Lcfi46:
	.cfi_offset %rbx, -40
.Lcfi47:
	.cfi_offset %r14, -32
.Lcfi48:
	.cfi_offset %r15, -24
	movabsq	$main_run_signature_1, %rax
	movabsq	$main_run_signature_2, %rcx
	movq	%rdi, -56(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$2, -32(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	$1114114, %edx          # imm = 0x110002
	xorl	%ecx, %ecx
	callq	update_signature
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1114114, %edx          # imm = 0x110002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-32(%rbp), %ebx
	movl	$1114115, %edx          # imm = 0x110003
	movl	$1114119, %ecx          # imm = 0x110007
	callq	update_signature
	cmpl	$2, %ebx
	jg	.LBB11_6
# BB#2:                                 #   in Loop: Header=BB11_1 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1114115, %edx          # imm = 0x110003
	callq	verify_signature
	movq	-56(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movsbl	(%rax,%rcx), %edi
	movq	-48(%rbp), %rax
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %esi
	callq	Func_1
	movl	%eax, %ebx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1114116, %edx          # imm = 0x110004
	xorl	%ecx, %ecx
	callq	update_signature
# BB#3:                                 #   in Loop: Header=BB11_1 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1114116, %edx          # imm = 0x110004
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1114117, %edx          # imm = 0x110005
	movl	$1114118, %ecx          # imm = 0x110006
	callq	update_signature
	cmpl	$0, %ebx
	jne	.LBB11_5
# BB#4:                                 #   in Loop: Header=BB11_1 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1114117, %edx          # imm = 0x110005
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movb	$65, -25(%rbp)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movl	$1114118, %edx          # imm = 0x110006
	xorl	%ecx, %ecx
	callq	update_signature
.LBB11_5:                               #   in Loop: Header=BB11_1 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1114118, %edx          # imm = 0x110006
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1114114, %edx          # imm = 0x110002
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB11_1
.LBB11_6:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1114119, %edx          # imm = 0x110007
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsbl	-25(%rbp), %ebx
	movl	$1114120, %edx          # imm = 0x110008
	movl	$1114122, %ecx          # imm = 0x11000A
	callq	update_signature
	cmpl	$87, %ebx
	jl	.LBB11_9
# BB#7:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1114120, %edx          # imm = 0x110008
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsbl	-25(%rbp), %ebx
	movl	$1114121, %edx          # imm = 0x110009
	movl	$1114122, %ecx          # imm = 0x11000A
	callq	update_signature
	cmpl	$90, %ebx
	jge	.LBB11_9
# BB#8:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1114121, %edx          # imm = 0x110009
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$7, -32(%rbp)
	movl	$1114122, %edx          # imm = 0x11000A
	xorl	%ecx, %ecx
	callq	update_signature
.LBB11_9:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1114122, %edx          # imm = 0x11000A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsbl	-25(%rbp), %ebx
	movl	$1114123, %edx          # imm = 0x11000B
	movl	$1114124, %ecx          # imm = 0x11000C
	callq	update_signature
	cmpl	$82, %ebx
	jne	.LBB11_11
# BB#10:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1114123, %edx          # imm = 0x11000B
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1, -36(%rbp)
	movl	$1114128, %edx          # imm = 0x110010
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB11_15
.LBB11_11:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1114124, %edx          # imm = 0x11000C
	callq	verify_signature
	movabsq	$main_run_signature_1, %r14
	movabsq	$main_run_signature_2, %r15
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	strcmp
	movl	%eax, %ebx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$1114125, %edx          # imm = 0x11000D
	xorl	%ecx, %ecx
	callq	update_signature
# BB#12:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1114125, %edx          # imm = 0x11000D
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1114126, %edx          # imm = 0x11000E
	movl	$1114127, %ecx          # imm = 0x11000F
	callq	update_signature
	cmpl	$0, %ebx
	jle	.LBB11_14
# BB#13:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1114126, %edx          # imm = 0x11000E
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-32(%rbp), %eax
	addl	$7, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, Int_Glob
	movl	$1, -36(%rbp)
	movl	$1114128, %edx          # imm = 0x110010
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB11_15
.LBB11_14:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1114127, %edx          # imm = 0x11000F
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$0, -36(%rbp)
	movl	$1114128, %edx          # imm = 0x110010
	xorl	%ecx, %ecx
	callq	update_signature
.LBB11_15:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1114128, %edx          # imm = 0x110010
	callq	verify_signature
	movl	-36(%rbp), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Func_2, .Lfunc_end11-Func_2
	.cfi_endproc
                                        # -- End function
	.globl	CallcheckerSet          # -- Begin function CallcheckerSet
	.p2align	4, 0x90
	.type	CallcheckerSet,@function
CallcheckerSet:                         # @CallcheckerSet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi49:
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
.Lfunc_end12:
	.size	CallcheckerSet, .Lfunc_end12-CallcheckerSet
	.cfi_endproc
                                        # -- End function
	.type	Reg,@object             # @Reg
	.bss
	.globl	Reg
	.p2align	2
Reg:
	.long	0                       # 0x0
	.size	Reg, 4

	.type	Next_Ptr_Glob,@object   # @Next_Ptr_Glob
	.comm	Next_Ptr_Glob,8,8
	.type	Ptr_Glob,@object        # @Ptr_Glob
	.comm	Ptr_Glob,8,8
	.type	Arr_2_Glob,@object      # @Arr_2_Glob
	.comm	Arr_2_Glob,10000,16
	.type	Bool_Glob,@object       # @Bool_Glob
	.comm	Bool_Glob,4,4
	.type	Arr_1_Glob,@object      # @Arr_1_Glob
	.comm	Arr_1_Glob,200,16
	.type	Ch_2_Glob,@object       # @Ch_2_Glob
	.comm	Ch_2_Glob,1,1
	.type	Int_Glob,@object        # @Int_Glob
	.comm	Int_Glob,4,4
	.type	End_Time,@object        # @End_Time
	.comm	End_Time,8,8
	.type	Begin_Time,@object      # @Begin_Time
	.comm	Begin_Time,8,8
	.type	User_Time,@object       # @User_Time
	.comm	User_Time,8,8
	.type	Microseconds,@object    # @Microseconds
	.comm	Microseconds,4,4
	.type	Dhrystones_Per_Second,@object # @Dhrystones_Per_Second
	.comm	Dhrystones_Per_Second,4,4
	.type	Ch_1_Glob,@object       # @Ch_1_Glob
	.comm	Ch_1_Glob,1,1
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"DHRYSTONE PROGRAM, SOME STRING"
	.size	.L.str, 31

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DHRYSTONE PROGRAM, 1'ST STRING"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"DHRYSTONE PROGRAM, 2'ND STRING"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"DHRYSTONE PROGRAM, 3'RD STRING"
	.size	.L.str.3, 31

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	" [target finished!]\n"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	" [target] Execution time: %ld\n"
	.size	.L.str.5, 31

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

	.type	strcpy_signature_1,@object # @strcpy_signature_1
	.globl	strcpy_signature_1
	.p2align	2
strcpy_signature_1:
	.long	0                       # 0x0
	.size	strcpy_signature_1, 4

	.type	strcpy_signature_2,@object # @strcpy_signature_2
	.globl	strcpy_signature_2
	.p2align	2
strcpy_signature_2:
	.long	0                       # 0x0
	.size	strcpy_signature_2, 4

	.type	Proc_5_signature_1,@object # @Proc_5_signature_1
	.globl	Proc_5_signature_1
	.p2align	2
Proc_5_signature_1:
	.long	0                       # 0x0
	.size	Proc_5_signature_1, 4

	.type	Proc_5_signature_2,@object # @Proc_5_signature_2
	.globl	Proc_5_signature_2
	.p2align	2
Proc_5_signature_2:
	.long	0                       # 0x0
	.size	Proc_5_signature_2, 4

	.type	Proc_4_signature_1,@object # @Proc_4_signature_1
	.globl	Proc_4_signature_1
	.p2align	2
Proc_4_signature_1:
	.long	0                       # 0x0
	.size	Proc_4_signature_1, 4

	.type	Proc_4_signature_2,@object # @Proc_4_signature_2
	.globl	Proc_4_signature_2
	.p2align	2
Proc_4_signature_2:
	.long	0                       # 0x0
	.size	Proc_4_signature_2, 4

	.type	Proc_1_signature_1,@object # @Proc_1_signature_1
	.globl	Proc_1_signature_1
	.p2align	2
Proc_1_signature_1:
	.long	0                       # 0x0
	.size	Proc_1_signature_1, 4

	.type	Proc_1_signature_2,@object # @Proc_1_signature_2
	.globl	Proc_1_signature_2
	.p2align	2
Proc_1_signature_2:
	.long	0                       # 0x0
	.size	Proc_1_signature_2, 4

	.type	Proc_2_signature_1,@object # @Proc_2_signature_1
	.globl	Proc_2_signature_1
	.p2align	2
Proc_2_signature_1:
	.long	0                       # 0x0
	.size	Proc_2_signature_1, 4

	.type	Proc_2_signature_2,@object # @Proc_2_signature_2
	.globl	Proc_2_signature_2
	.p2align	2
Proc_2_signature_2:
	.long	0                       # 0x0
	.size	Proc_2_signature_2, 4

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

	.type	llvm.memcpy.p0i8.p0i8.i64_signature_1,@object # @llvm.memcpy.p0i8.p0i8.i64_signature_1
	.globl	llvm.memcpy.p0i8.p0i8.i64_signature_1
	.p2align	2
llvm.memcpy.p0i8.p0i8.i64_signature_1:
	.long	0                       # 0x0
	.size	llvm.memcpy.p0i8.p0i8.i64_signature_1, 4

	.type	llvm.memcpy.p0i8.p0i8.i64_signature_2,@object # @llvm.memcpy.p0i8.p0i8.i64_signature_2
	.globl	llvm.memcpy.p0i8.p0i8.i64_signature_2
	.p2align	2
llvm.memcpy.p0i8.p0i8.i64_signature_2:
	.long	0                       # 0x0
	.size	llvm.memcpy.p0i8.p0i8.i64_signature_2, 4

	.type	Proc_3_signature_1,@object # @Proc_3_signature_1
	.globl	Proc_3_signature_1
	.p2align	2
Proc_3_signature_1:
	.long	0                       # 0x0
	.size	Proc_3_signature_1, 4

	.type	Proc_3_signature_2,@object # @Proc_3_signature_2
	.globl	Proc_3_signature_2
	.p2align	2
Proc_3_signature_2:
	.long	0                       # 0x0
	.size	Proc_3_signature_2, 4

	.type	Proc_6_signature_1,@object # @Proc_6_signature_1
	.globl	Proc_6_signature_1
	.p2align	2
Proc_6_signature_1:
	.long	0                       # 0x0
	.size	Proc_6_signature_1, 4

	.type	Proc_6_signature_2,@object # @Proc_6_signature_2
	.globl	Proc_6_signature_2
	.p2align	2
Proc_6_signature_2:
	.long	0                       # 0x0
	.size	Proc_6_signature_2, 4

	.type	Func_3_signature_1,@object # @Func_3_signature_1
	.globl	Func_3_signature_1
	.p2align	2
Func_3_signature_1:
	.long	0                       # 0x0
	.size	Func_3_signature_1, 4

	.type	Func_3_signature_2,@object # @Func_3_signature_2
	.globl	Func_3_signature_2
	.p2align	2
Func_3_signature_2:
	.long	0                       # 0x0
	.size	Func_3_signature_2, 4

	.type	Proc_7_signature_1,@object # @Proc_7_signature_1
	.globl	Proc_7_signature_1
	.p2align	2
Proc_7_signature_1:
	.long	0                       # 0x0
	.size	Proc_7_signature_1, 4

	.type	Proc_7_signature_2,@object # @Proc_7_signature_2
	.globl	Proc_7_signature_2
	.p2align	2
Proc_7_signature_2:
	.long	0                       # 0x0
	.size	Proc_7_signature_2, 4

	.type	Proc_8_signature_1,@object # @Proc_8_signature_1
	.globl	Proc_8_signature_1
	.p2align	2
Proc_8_signature_1:
	.long	0                       # 0x0
	.size	Proc_8_signature_1, 4

	.type	Proc_8_signature_2,@object # @Proc_8_signature_2
	.globl	Proc_8_signature_2
	.p2align	2
Proc_8_signature_2:
	.long	0                       # 0x0
	.size	Proc_8_signature_2, 4

	.type	Func_1_signature_1,@object # @Func_1_signature_1
	.globl	Func_1_signature_1
	.p2align	2
Func_1_signature_1:
	.long	0                       # 0x0
	.size	Func_1_signature_1, 4

	.type	Func_1_signature_2,@object # @Func_1_signature_2
	.globl	Func_1_signature_2
	.p2align	2
Func_1_signature_2:
	.long	0                       # 0x0
	.size	Func_1_signature_2, 4

	.type	Func_2_signature_1,@object # @Func_2_signature_1
	.globl	Func_2_signature_1
	.p2align	2
Func_2_signature_1:
	.long	0                       # 0x0
	.size	Func_2_signature_1, 4

	.type	Func_2_signature_2,@object # @Func_2_signature_2
	.globl	Func_2_signature_2
	.p2align	2
Func_2_signature_2:
	.long	0                       # 0x0
	.size	Func_2_signature_2, 4

	.type	strcmp_signature_1,@object # @strcmp_signature_1
	.globl	strcmp_signature_1
	.p2align	2
strcmp_signature_1:
	.long	0                       # 0x0
	.size	strcmp_signature_1, 4

	.type	strcmp_signature_2,@object # @strcmp_signature_2
	.globl	strcmp_signature_2
	.p2align	2
strcmp_signature_2:
	.long	0                       # 0x0
	.size	strcmp_signature_2, 4

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
