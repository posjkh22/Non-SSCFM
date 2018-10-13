	.text
	.file	"llvm-link"
	.globl	main                    # -- Begin function main
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
	subq	$128, %rsp
.Lcfi3:
	.cfi_offset %rbx, -32
.Lcfi4:
	.cfi_offset %r14, -24
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65538, %edx            # imm = 0x10002
	xorl	%ecx, %ecx
	callq	update_signature
	leaq	-136(%rbp), %rdi
	movl	$0, -88(%rbp)
	movl	$0, -84(%rbp)
	xorl	%esi, %esi
	callq	gettimeofday
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65538, %edx            # imm = 0x10002
	callq	verify_signature
	movl	$8, -32(%rbp)
	movl	$32768, -24(%rbp)       # imm = 0x8000
	movl	$1, %edi
	callq	srand
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
	movl	-24(%rbp), %edi
	shlq	$2, %rdi
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
	movq	%rbx, -48(%rbp)
	movl	-24(%rbp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65541, %edx            # imm = 0x10005
	xorl	%ecx, %ecx
	callq	update_signature
# BB#4:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65541, %edx            # imm = 0x10005
	callq	verify_signature
	movq	%rbx, -80(%rbp)
	movl	-24(%rbp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65542, %edx            # imm = 0x10006
	xorl	%ecx, %ecx
	callq	update_signature
# BB#5:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65542, %edx            # imm = 0x10006
	callq	verify_signature
	movq	%rbx, -104(%rbp)
	movl	-24(%rbp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65543, %edx            # imm = 0x10007
	xorl	%ecx, %ecx
	callq	update_signature
# BB#6:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65543, %edx            # imm = 0x10007
	callq	verify_signature
	movq	%rbx, -96(%rbp)
	movl	-32(%rbp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65544, %edx            # imm = 0x10008
	xorl	%ecx, %ecx
	callq	update_signature
# BB#7:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65544, %edx            # imm = 0x10008
	callq	verify_signature
	movq	%rbx, -64(%rbp)
	movl	-32(%rbp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65545, %edx            # imm = 0x10009
	xorl	%ecx, %ecx
	callq	update_signature
# BB#8:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65545, %edx            # imm = 0x10009
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	%rbx, -56(%rbp)
	movl	$0, -20(%rbp)
	movl	$65546, %edx            # imm = 0x1000A
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65546, %edx            # imm = 0x1000A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %r14d
	movl	-32(%rbp), %ebx
	movl	$65547, %edx            # imm = 0x1000B
	movl	$65551, %ecx            # imm = 0x1000F
	callq	update_signature
	cmpl	%ebx, %r14d
	jae	.LBB0_14
# BB#10:                                #   in Loop: Header=BB0_9 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65547, %edx            # imm = 0x1000B
	callq	verify_signature
	callq	rand
	movl	%eax, %ebx
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
	movl	$1000, %ecx             # imm = 0x3E8
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	cvtsi2ssl	%edx, %xmm0
	movq	-64(%rbp), %rax
	movl	-20(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	callq	rand
	movl	%eax, %ebx
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
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1000, %ecx             # imm = 0x3E8
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	cvtsi2ssl	%edx, %xmm0
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	movl	$65550, %edx            # imm = 0x1000E
	xorl	%ecx, %ecx
	callq	update_signature
# BB#13:                                #   in Loop: Header=BB0_9 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65550, %edx            # imm = 0x1000E
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$65546, %edx            # imm = 0x1000A
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_9
.LBB0_14:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65551, %edx            # imm = 0x1000F
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$0, -20(%rbp)
	movl	$65552, %edx            # imm = 0x10010
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65552, %edx            # imm = 0x10010
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %r14d
	movl	-24(%rbp), %ebx
	movl	$65553, %edx            # imm = 0x10011
	movl	$65565, %ecx            # imm = 0x1001D
	callq	update_signature
	cmpl	%ebx, %r14d
	jae	.LBB0_28
# BB#16:                                #   in Loop: Header=BB0_15 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65553, %edx            # imm = 0x10011
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rax
	movl	-20(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	movl	$0, -28(%rbp)
	movl	$65554, %edx            # imm = 0x10012
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_17:                               #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65554, %edx            # imm = 0x10012
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-28(%rbp), %r14d
	movl	-32(%rbp), %ebx
	movl	$65555, %edx            # imm = 0x10013
	movl	$65563, %ecx            # imm = 0x1001B
	callq	update_signature
	cmpl	%ebx, %r14d
	jae	.LBB0_26
# BB#18:                                #   in Loop: Header=BB0_17 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65555, %edx            # imm = 0x10013
	callq	verify_signature
	callq	rand
	movl	%eax, %ebx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65556, %edx            # imm = 0x10014
	xorl	%ecx, %ecx
	callq	update_signature
# BB#19:                                #   in Loop: Header=BB0_17 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65556, %edx            # imm = 0x10014
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$2, %ecx
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ebx
	movl	$65557, %edx            # imm = 0x10015
	movl	$65559, %ecx            # imm = 0x10017
	callq	update_signature
	cmpl	$0, %ebx
	je	.LBB0_22
# BB#20:                                #   in Loop: Header=BB0_17 Depth=2
	movl	$main_run_signature_1, %edi
	movl	$main_run_signature_2, %esi
	movl	$65557, %edx            # imm = 0x10015
	callq	verify_signature
	movq	-64(%rbp), %rax
	movl	-28(%rbp), %ebx
	movss	(%rax,%rbx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movq	-56(%rbp), %r14
	movl	$main_run_signature_1, %edi
	movl	$main_run_signature_2, %esi
	movl	$65558, %edx            # imm = 0x10016
	xorl	%ecx, %ecx
	callq	update_signature
	movss	(%r14,%rbx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movl	-20(%rbp), %eax
	cvtsi2ssq	%rax, %xmm1
	mulss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm0
	callq	cos
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
# BB#21:                                #   in Loop: Header=BB0_17 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65558, %edx            # imm = 0x10016
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movq	-48(%rbp), %r14
	movl	-20(%rbp), %ebx
	movl	$65561, %edx            # imm = 0x10019
	xorl	%ecx, %ecx
	callq	update_signature
	cvtss2sd	(%r14,%rbx,4), %xmm0
	addsd	-40(%rbp), %xmm0        # 8-byte Folded Reload
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%r14,%rbx,4)
	jmp	.LBB0_24
.LBB0_22:                               #   in Loop: Header=BB0_17 Depth=2
	movl	$main_run_signature_1, %edi
	movl	$main_run_signature_2, %esi
	movl	$65559, %edx            # imm = 0x10017
	callq	verify_signature
	movq	-64(%rbp), %rax
	movl	-28(%rbp), %ebx
	movss	(%rax,%rbx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movq	-56(%rbp), %r14
	movl	$main_run_signature_1, %edi
	movl	$main_run_signature_2, %esi
	movl	$65560, %edx            # imm = 0x10018
	xorl	%ecx, %ecx
	callq	update_signature
	movss	(%r14,%rbx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movl	-20(%rbp), %eax
	cvtsi2ssq	%rax, %xmm1
	mulss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm0
	callq	sin
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
# BB#23:                                #   in Loop: Header=BB0_17 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65560, %edx            # imm = 0x10018
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movq	-48(%rbp), %r14
	movl	-20(%rbp), %ebx
	movl	$65561, %edx            # imm = 0x10019
	xorl	%ecx, %ecx
	callq	update_signature
	cvtss2sd	(%r14,%rbx,4), %xmm0
	addsd	-40(%rbp), %xmm0        # 8-byte Folded Reload
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%r14,%rbx,4)
.LBB0_24:                               #   in Loop: Header=BB0_17 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65561, %edx            # imm = 0x10019
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	xorps	%xmm0, %xmm0
	movq	-80(%rbp), %rax
	movl	-20(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	movl	$65562, %edx            # imm = 0x1001A
	xorl	%ecx, %ecx
	callq	update_signature
# BB#25:                                #   in Loop: Header=BB0_17 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65562, %edx            # imm = 0x1001A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	$65554, %edx            # imm = 0x10012
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_17
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65563, %edx            # imm = 0x1001B
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65564, %edx            # imm = 0x1001C
	xorl	%ecx, %ecx
	callq	update_signature
# BB#27:                                #   in Loop: Header=BB0_15 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65564, %edx            # imm = 0x1001C
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$65552, %edx            # imm = 0x10010
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB0_15
.LBB0_28:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65565, %edx            # imm = 0x1001D
	callq	verify_signature
	movl	-24(%rbp), %edi
	movl	-84(%rbp), %esi
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-104(%rbp), %r8
	movq	-96(%rbp), %r9
	movb	$0, %al
	callq	fft_float
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65566, %edx            # imm = 0x1001E
	xorl	%ecx, %ecx
	callq	update_signature
# BB#29:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65566, %edx            # imm = 0x1001E
	callq	verify_signature
	movq	-48(%rbp), %rdi
	callq	free
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65567, %edx            # imm = 0x1001F
	xorl	%ecx, %ecx
	callq	update_signature
# BB#30:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65567, %edx            # imm = 0x1001F
	callq	verify_signature
	movq	-80(%rbp), %rdi
	callq	free
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65568, %edx            # imm = 0x10020
	xorl	%ecx, %ecx
	callq	update_signature
# BB#31:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65568, %edx            # imm = 0x10020
	callq	verify_signature
	movq	-104(%rbp), %rdi
	callq	free
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65569, %edx            # imm = 0x10021
	xorl	%ecx, %ecx
	callq	update_signature
# BB#32:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65569, %edx            # imm = 0x10021
	callq	verify_signature
	movq	-96(%rbp), %rdi
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
	movq	-64(%rbp), %rdi
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
	movq	-56(%rbp), %rdi
	callq	free
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
	leaq	-120(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
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
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65574, %edx            # imm = 0x10026
	xorl	%ecx, %ecx
	callq	update_signature
# BB#37:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65574, %edx            # imm = 0x10026
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-120(%rbp), %rax
	subq	-136(%rbp), %rax
	imulq	$1000000, %rax, %rbx    # imm = 0xF4240
	movl	$65575, %edx            # imm = 0x10027
	xorl	%ecx, %ecx
	callq	update_signature
	movabsq	$.L.str.1, %rdi
	movq	-112(%rbp), %rsi
	subq	-128(%rbp), %rsi
	addq	%rbx, %rsi
	movb	$0, %al
	callq	printf
# BB#38:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65575, %edx            # imm = 0x10027
	callq	verify_signature
	movl	-88(%rbp), %ebx
	movl	$65575, %edi            # imm = 0x10027
	callq	exit_with_remainder_process
	movl	%ebx, %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	IsPowerOfTwo            # -- Begin function IsPowerOfTwo
	.p2align	4, 0x90
	.type	IsPowerOfTwo,@function
IsPowerOfTwo:                           # @IsPowerOfTwo
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
	pushq	%rbx
	pushq	%rax
.Lcfi8:
	.cfi_offset %rbx, -24
	movabsq	$main_run_signature_1, %rax
	movabsq	$main_run_signature_2, %rsi
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %ebx
	movq	%rax, %rdi
	movl	$655362, %edx           # imm = 0xA0002
	movl	$655363, %ecx           # imm = 0xA0003
	callq	update_signature
	cmpl	$2, %ebx
	jae	.LBB1_2
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655362, %edx           # imm = 0xA0002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$0, -16(%rbp)
	movl	$655366, %edx           # imm = 0xA0006
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB1_5
.LBB1_2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655363, %edx           # imm = 0xA0003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-12(%rbp), %eax
	movl	-12(%rbp), %ebx
	subl	$1, %ebx
	andl	%eax, %ebx
	movl	$655364, %edx           # imm = 0xA0004
	movl	$655365, %ecx           # imm = 0xA0005
	callq	update_signature
	cmpl	$0, %ebx
	je	.LBB1_4
# BB#3:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655364, %edx           # imm = 0xA0004
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$0, -16(%rbp)
	movl	$655366, %edx           # imm = 0xA0006
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB1_5
.LBB1_4:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655365, %edx           # imm = 0xA0005
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1, -16(%rbp)
	movl	$655366, %edx           # imm = 0xA0006
	xorl	%ecx, %ecx
	callq	update_signature
.LBB1_5:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655366, %edx           # imm = 0xA0006
	callq	verify_signature
	movl	-16(%rbp), %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	IsPowerOfTwo, .Lfunc_end1-IsPowerOfTwo
	.cfi_endproc
                                        # -- End function
	.globl	NumberOfBitsNeeded      # -- Begin function NumberOfBitsNeeded
	.p2align	4, 0x90
	.type	NumberOfBitsNeeded,@function
NumberOfBitsNeeded:                     # @NumberOfBitsNeeded
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
	pushq	%rbx
	pushq	%rax
.Lcfi12:
	.cfi_offset %rbx, -24
	movabsq	$main_run_signature_1, %rax
	movabsq	$main_run_signature_2, %rsi
	movl	%edi, -16(%rbp)
	movl	-16(%rbp), %ebx
	movq	%rax, %rdi
	movl	$720898, %edx           # imm = 0xB0002
	movl	$720899, %ecx           # imm = 0xB0003
	callq	update_signature
	cmpl	$2, %ebx
	jae	.LBB2_2
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720898, %edx           # imm = 0xB0002
	callq	verify_signature
	movabsq	$.L.str.2, %rsi
	movq	stderr, %rdi
	movl	-16(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720899, %edx           # imm = 0xB0003
	xorl	%ecx, %ecx
	callq	update_signature
.LBB2_2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720899, %edx           # imm = 0xB0003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$0, -12(%rbp)
	movl	$720900, %edx           # imm = 0xB0004
	xorl	%ecx, %ecx
	callq	update_signature
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720900, %edx           # imm = 0xB0004
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1, %ebx
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
                                        # kill: %CL<def> %ECX<kill>
	shll	%cl, %ebx
	andl	%eax, %ebx
	movl	$720901, %edx           # imm = 0xB0005
	movl	$720902, %ecx           # imm = 0xB0006
	callq	update_signature
	cmpl	$0, %ebx
	je	.LBB2_5
# BB#4:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720901, %edx           # imm = 0xB0005
	callq	verify_signature
	movl	-12(%rbp), %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB2_5:                                #   in Loop: Header=BB2_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720902, %edx           # imm = 0xB0006
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720903, %edx           # imm = 0xB0007
	xorl	%ecx, %ecx
	callq	update_signature
# BB#6:                                 #   in Loop: Header=BB2_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720903, %edx           # imm = 0xB0007
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	$720900, %edx           # imm = 0xB0004
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB2_3
.Lfunc_end2:
	.size	NumberOfBitsNeeded, .Lfunc_end2-NumberOfBitsNeeded
	.cfi_endproc
                                        # -- End function
	.globl	ReverseBits             # -- Begin function ReverseBits
	.p2align	4, 0x90
	.type	ReverseBits,@function
ReverseBits:                            # @ReverseBits
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi13:
	.cfi_def_cfa_offset 16
.Lcfi14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi15:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
.Lcfi16:
	.cfi_offset %rbx, -32
.Lcfi17:
	.cfi_offset %r14, -24
	movabsq	$main_run_signature_1, %rax
	movabsq	$main_run_signature_2, %rcx
	movl	%edi, -28(%rbp)
	movl	%esi, -32(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	$851970, %edx           # imm = 0xD0002
	xorl	%ecx, %ecx
	callq	update_signature
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$851970, %edx           # imm = 0xD0002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-24(%rbp), %r14d
	movl	-32(%rbp), %ebx
	movl	$851971, %edx           # imm = 0xD0003
	movl	$851973, %ecx           # imm = 0xD0005
	callq	update_signature
	cmpl	%ebx, %r14d
	jae	.LBB3_4
# BB#2:                                 #   in Loop: Header=BB3_1 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$851971, %edx           # imm = 0xD0003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %eax
	shll	$1, %eax
	movl	-28(%rbp), %ecx
	andl	$1, %ecx
	orl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movl	-28(%rbp), %eax
	shrl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	$851972, %edx           # imm = 0xD0004
	xorl	%ecx, %ecx
	callq	update_signature
# BB#3:                                 #   in Loop: Header=BB3_1 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$851972, %edx           # imm = 0xD0004
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movl	$851970, %edx           # imm = 0xD0002
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_1
.LBB3_4:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$851973, %edx           # imm = 0xD0005
	callq	verify_signature
	movl	-20(%rbp), %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ReverseBits, .Lfunc_end3-ReverseBits
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function Index_to_frequency
.LCPI4_0:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	Index_to_frequency
	.p2align	4, 0x90
	.type	Index_to_frequency,@function
Index_to_frequency:                     # @Index_to_frequency
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi18:
	.cfi_def_cfa_offset 16
.Lcfi19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi20:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
.Lcfi21:
	.cfi_offset %rbx, -32
.Lcfi22:
	.cfi_offset %r14, -24
	movabsq	$main_run_signature_1, %rax
	movabsq	$main_run_signature_2, %rcx
	movl	%edi, -24(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %r14d
	movl	-24(%rbp), %ebx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	$917506, %edx           # imm = 0xE0002
	movl	$917507, %ecx           # imm = 0xE0003
	callq	update_signature
	cmpl	%ebx, %r14d
	jb	.LBB4_2
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$917506, %edx           # imm = 0xE0002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	$917511, %edx           # imm = 0xE0007
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB4_6
.LBB4_2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$917507, %edx           # imm = 0xE0003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %r14d
	movl	-24(%rbp), %ebx
	shrl	$1, %ebx
	movl	$917508, %edx           # imm = 0xE0004
	movl	$917509, %ecx           # imm = 0xE0005
	callq	update_signature
	cmpl	%ebx, %r14d
	ja	.LBB4_4
# BB#3:
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movl	$main_run_signature_1, %edi
	movl	$main_run_signature_2, %esi
	movl	$917508, %edx           # imm = 0xE0004
	callq	verify_signature
	movl	-20(%rbp), %eax
	cvtsi2sdq	%rax, %xmm0
	movl	-24(%rbp), %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$917511, %edx           # imm = 0xE0007
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB4_6
.LBB4_4:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$917509, %edx           # imm = 0xE0005
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$917510, %edx           # imm = 0xE0006
	xorl	%ecx, %ecx
	callq	update_signature
# BB#5:
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movl	$main_run_signature_1, %edi
	movl	$main_run_signature_2, %esi
	movl	$917510, %edx           # imm = 0xE0006
	callq	verify_signature
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	movl	%eax, %edx
	subl	%ecx, %edx
	cvtsi2sdq	%rdx, %xmm0
	movaps	.LCPI4_0(%rip), %xmm1   # xmm1 = [-0.000000e+00,-0.000000e+00]
	pxor	%xmm0, %xmm1
	cvtsi2sdq	%rax, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$917511, %edx           # imm = 0xE0007
	xorl	%ecx, %ecx
	callq	update_signature
.LBB4_6:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$917511, %edx           # imm = 0xE0007
	callq	verify_signature
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Index_to_frequency, .Lfunc_end4-Index_to_frequency
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function fft_float
.LCPI5_0:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI5_1:
	.quad	-4611686018427387904    # double -2
.LCPI5_2:
	.quad	4611686018427387904     # double 2
	.text
	.globl	fft_float
	.p2align	4, 0x90
	.type	fft_float,@function
fft_float:                              # @fft_float
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi23:
	.cfi_def_cfa_offset 16
.Lcfi24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi25:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$240, %rsp
.Lcfi26:
	.cfi_offset %rbx, -32
.Lcfi27:
	.cfi_offset %r14, -24
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	%edi, -36(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -56(%rbp)
	movsd	%xmm0, -96(%rbp)
	movl	-36(%rbp), %edi
	callq	IsPowerOfTwo
	movl	%eax, %ebx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983042, %edx           # imm = 0xF0002
	xorl	%ecx, %ecx
	callq	update_signature
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983042, %edx           # imm = 0xF0002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983044, %edx           # imm = 0xF0004
	movl	$983043, %ecx           # imm = 0xF0003
	callq	update_signature
	cmpl	$0, %ebx
	jne	.LBB5_3
# BB#2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983043, %edx           # imm = 0xF0003
	callq	verify_signature
	movabsq	$.L.str.5, %rsi
	movq	stderr, %rdi
	movl	-36(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983044, %edx           # imm = 0xF0004
	xorl	%ecx, %ecx
	callq	update_signature
.LBB5_3:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983044, %edx           # imm = 0xF0004
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-76(%rbp), %ebx
	movl	$983045, %edx           # imm = 0xF0005
	movl	$983046, %ecx           # imm = 0xF0006
	callq	update_signature
	cmpl	$0, %ebx
	je	.LBB5_5
# BB#4:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983045, %edx           # imm = 0xF0005
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%xmm0, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm0
	movsd	%xmm0, -96(%rbp)
	movl	$983046, %edx           # imm = 0xF0006
	xorl	%ecx, %ecx
	callq	update_signature
.LBB5_5:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983046, %edx           # imm = 0xF0006
	callq	verify_signature
	movabsq	$.L.str.1.6, %rsi
	movq	-216(%rbp), %rdi
	callq	CheckPointer
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983047, %edx           # imm = 0xF0007
	xorl	%ecx, %ecx
	callq	update_signature
# BB#6:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983047, %edx           # imm = 0xF0007
	callq	verify_signature
	movabsq	$.L.str.2.7, %rsi
	movq	-64(%rbp), %rdi
	callq	CheckPointer
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983048, %edx           # imm = 0xF0008
	xorl	%ecx, %ecx
	callq	update_signature
# BB#7:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983048, %edx           # imm = 0xF0008
	callq	verify_signature
	movabsq	$.L.str.3, %rsi
	movq	-56(%rbp), %rdi
	callq	CheckPointer
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983049, %edx           # imm = 0xF0009
	xorl	%ecx, %ecx
	callq	update_signature
# BB#8:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983049, %edx           # imm = 0xF0009
	callq	verify_signature
	movl	-36(%rbp), %edi
	callq	NumberOfBitsNeeded
	movl	%eax, %ebx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983050, %edx           # imm = 0xF000A
	xorl	%ecx, %ecx
	callq	update_signature
# BB#9:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983050, %edx           # imm = 0xF000A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	%ebx, -100(%rbp)
	movl	$0, -20(%rbp)
	movl	$983051, %edx           # imm = 0xF000B
	xorl	%ecx, %ecx
	callq	update_signature
.LBB5_10:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983051, %edx           # imm = 0xF000B
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %r14d
	movl	-36(%rbp), %ebx
	movl	$983052, %edx           # imm = 0xF000C
	movl	$983058, %ecx           # imm = 0xF0012
	callq	update_signature
	cmpl	%ebx, %r14d
	jae	.LBB5_17
# BB#11:                                #   in Loop: Header=BB5_10 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983052, %edx           # imm = 0xF000C
	callq	verify_signature
	movl	-20(%rbp), %edi
	movl	-100(%rbp), %esi
	callq	ReverseBits
	movl	%eax, %ebx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983053, %edx           # imm = 0xF000D
	xorl	%ecx, %ecx
	callq	update_signature
# BB#12:                                #   in Loop: Header=BB5_10 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983053, %edx           # imm = 0xF000D
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	%ebx, -24(%rbp)
	movq	-216(%rbp), %rax
	movl	-20(%rbp), %ecx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -32(%rbp)        # 4-byte Spill
	movl	$983054, %edx           # imm = 0xF000E
	movl	$983055, %ecx           # imm = 0xF000F
	callq	update_signature
	movq	-64(%rbp), %rax
	movl	-24(%rbp), %ecx
	movss	-32(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rax,%rcx,4)
	cmpq	$0, -208(%rbp)
	jne	.LBB5_14
# BB#13:                                #   in Loop: Header=BB5_10 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983054, %edx           # imm = 0xF000E
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983056, %edx           # imm = 0xF0010
	xorl	%ecx, %ecx
	callq	update_signature
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB5_15
.LBB5_14:                               #   in Loop: Header=BB5_10 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983055, %edx           # imm = 0xF000F
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-208(%rbp), %rax
	movl	-20(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm0
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movl	$983056, %edx           # imm = 0xF0010
	xorl	%ecx, %ecx
	callq	update_signature
.LBB5_15:                               #   in Loop: Header=BB5_10 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983056, %edx           # imm = 0xF0010
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movl	-24(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	movl	$983057, %edx           # imm = 0xF0011
	xorl	%ecx, %ecx
	callq	update_signature
# BB#16:                                #   in Loop: Header=BB5_10 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983057, %edx           # imm = 0xF0011
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$983051, %edx           # imm = 0xF000B
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB5_10
.LBB5_17:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983058, %edx           # imm = 0xF0012
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1, -68(%rbp)
	movl	$2, -40(%rbp)
	movl	$983059, %edx           # imm = 0xF0013
	xorl	%ecx, %ecx
	callq	update_signature
.LBB5_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_24 Depth 2
                                        #       Child Loop BB5_26 Depth 3
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983059, %edx           # imm = 0xF0013
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-40(%rbp), %r14d
	movl	-36(%rbp), %ebx
	movl	$983060, %edx           # imm = 0xF0014
	movl	$983074, %ecx           # imm = 0xF0022
	callq	update_signature
	cmpl	%ebx, %r14d
	ja	.LBB5_33
# BB#19:                                #   in Loop: Header=BB5_18 Depth=1
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movsd	.LCPI5_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movl	$main_run_signature_1, %edi
	movl	$main_run_signature_2, %esi
	movl	$983060, %edx           # imm = 0xF0014
	callq	verify_signature
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-40(%rbp), %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-88(%rbp), %xmm0
	callq	sin
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$983061, %edx           # imm = 0xF0015
	xorl	%ecx, %ecx
	callq	update_signature
# BB#20:                                #   in Loop: Header=BB5_18 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983061, %edx           # imm = 0xF0015
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%xmm0, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm0
	callq	sin
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$983062, %edx           # imm = 0xF0016
	xorl	%ecx, %ecx
	callq	update_signature
# BB#21:                                #   in Loop: Header=BB5_18 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983062, %edx           # imm = 0xF0016
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movsd	.LCPI5_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -232(%rbp)
	mulsd	-88(%rbp), %xmm0
	callq	cos
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$983063, %edx           # imm = 0xF0017
	xorl	%ecx, %ecx
	callq	update_signature
# BB#22:                                #   in Loop: Header=BB5_18 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983063, %edx           # imm = 0xF0017
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%xmm0, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm0
	callq	cos
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$983064, %edx           # imm = 0xF0018
	xorl	%ecx, %ecx
	callq	update_signature
# BB#23:                                #   in Loop: Header=BB5_18 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983064, %edx           # imm = 0xF0018
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsd	.LCPI5_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -184(%rbp)
	mulsd	-184(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movl	$0, -20(%rbp)
	movl	$983065, %edx           # imm = 0xF0019
	xorl	%ecx, %ecx
	callq	update_signature
.LBB5_24:                               #   Parent Loop BB5_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_26 Depth 3
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983065, %edx           # imm = 0xF0019
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %r14d
	movl	-36(%rbp), %ebx
	movl	$983066, %edx           # imm = 0xF001A
	movl	$983072, %ecx           # imm = 0xF0020
	callq	update_signature
	cmpl	%ebx, %r14d
	jae	.LBB5_31
# BB#25:                                #   in Loop: Header=BB5_24 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983066, %edx           # imm = 0xF001A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movl	$983067, %edx           # imm = 0xF001B
	xorl	%ecx, %ecx
	callq	update_signature
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	$0, -72(%rbp)
.LBB5_26:                               #   Parent Loop BB5_18 Depth=1
                                        #     Parent Loop BB5_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983067, %edx           # imm = 0xF001B
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-72(%rbp), %r14d
	movl	-68(%rbp), %ebx
	movl	$983068, %edx           # imm = 0xF001C
	movl	$983070, %ecx           # imm = 0xF001E
	callq	update_signature
	cmpl	%ebx, %r14d
	jae	.LBB5_29
# BB#27:                                #   in Loop: Header=BB5_26 Depth=3
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983068, %edx           # imm = 0xF001C
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-152(%rbp), %xmm0
	subsd	-144(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	subsd	-112(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movl	-24(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	%eax, -44(%rbp)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movl	-44(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movl	-44(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -200(%rbp)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movq	-56(%rbp), %r14
	movl	-44(%rbp), %ebx
	movl	$983069, %edx           # imm = 0xF001D
	xorl	%ecx, %ecx
	callq	update_signature
	cvtss2sd	(%r14,%rbx,4), %xmm0
	mulsd	-32(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-64(%rbp), %rax
	movl	-44(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -192(%rbp)
	movq	-64(%rbp), %rax
	movl	-24(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm0
	subsd	-200(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-64(%rbp), %rax
	movl	-44(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-56(%rbp), %rax
	movl	-24(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm0
	subsd	-192(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movl	-44(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movl	-24(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movl	-24(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# BB#28:                                #   in Loop: Header=BB5_26 Depth=3
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983069, %edx           # imm = 0xF001D
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	$983067, %edx           # imm = 0xF001B
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB5_26
.LBB5_29:                               #   in Loop: Header=BB5_24 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983070, %edx           # imm = 0xF001E
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983071, %edx           # imm = 0xF001F
	xorl	%ecx, %ecx
	callq	update_signature
# BB#30:                                #   in Loop: Header=BB5_24 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983071, %edx           # imm = 0xF001F
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-40(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$983065, %edx           # imm = 0xF0019
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB5_24
.LBB5_31:                               #   in Loop: Header=BB5_18 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983072, %edx           # imm = 0xF0020
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-40(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	$983073, %edx           # imm = 0xF0021
	xorl	%ecx, %ecx
	callq	update_signature
# BB#32:                                #   in Loop: Header=BB5_18 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983073, %edx           # imm = 0xF0021
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-40(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -40(%rbp)
	movl	$983059, %edx           # imm = 0xF0013
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB5_18
.LBB5_33:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983074, %edx           # imm = 0xF0022
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-76(%rbp), %ebx
	movl	$983075, %edx           # imm = 0xF0023
	movl	$983080, %ecx           # imm = 0xF0028
	callq	update_signature
	cmpl	$0, %ebx
	je	.LBB5_39
# BB#34:
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movl	$main_run_signature_1, %edi
	movl	$main_run_signature_2, %esi
	movl	$983075, %edx           # imm = 0xF0023
	callq	verify_signature
	movl	-36(%rbp), %eax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -168(%rbp)
	movl	$0, -20(%rbp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$983076, %edx           # imm = 0xF0024
	xorl	%ecx, %ecx
	callq	update_signature
.LBB5_35:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983076, %edx           # imm = 0xF0024
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %r14d
	movl	-36(%rbp), %ebx
	movl	$983077, %edx           # imm = 0xF0025
	movl	$983079, %ecx           # imm = 0xF0027
	callq	update_signature
	cmpl	%ebx, %r14d
	jae	.LBB5_38
# BB#36:                                #   in Loop: Header=BB5_35 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983077, %edx           # imm = 0xF0025
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movl	-20(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	$983078, %edx           # imm = 0xF0026
	xorl	%ecx, %ecx
	callq	update_signature
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# BB#37:                                #   in Loop: Header=BB5_35 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983078, %edx           # imm = 0xF0026
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$983076, %edx           # imm = 0xF0024
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB5_35
.LBB5_38:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983079, %edx           # imm = 0xF0027
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983080, %edx           # imm = 0xF0028
	xorl	%ecx, %ecx
	callq	update_signature
.LBB5_39:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$983080, %edx           # imm = 0xF0028
	callq	verify_signature
	addq	$240, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	fft_float, .Lfunc_end5-fft_float
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function CheckPointer
	.type	CheckPointer,@function
CheckPointer:                           # @CheckPointer
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
	movabsq	$main_run_signature_2, %rcx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-24(%rbp), %rbx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	$1048578, %edx          # imm = 0x100002
	movl	$1048579, %ecx          # imm = 0x100003
	callq	update_signature
	cmpq	$0, %rbx
	jne	.LBB6_2
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1048578, %edx          # imm = 0x100002
	callq	verify_signature
	movabsq	$.L.str.4, %rsi
	movq	stderr, %rdi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1048579, %edx          # imm = 0x100003
	xorl	%ecx, %ecx
	callq	update_signature
.LBB6_2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$1048579, %edx          # imm = 0x100003
	callq	verify_signature
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	CheckPointer, .Lfunc_end6-CheckPointer
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
.Lfunc_end7:
	.size	CallcheckerSet, .Lfunc_end7-CallcheckerSet
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" [target finished!]\n"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	" [target] Execution time: %ld\n"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\n"
	.size	.L.str.2, 73

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Error in fft():  NumSamples=%u is not power of two\n"
	.size	.L.str.5, 52

	.type	.L.str.1.6,@object      # @.str.1.6
.L.str.1.6:
	.asciz	"RealIn"
	.size	.L.str.1.6, 7

	.type	.L.str.2.7,@object      # @.str.2.7
.L.str.2.7:
	.asciz	"RealOut"
	.size	.L.str.2.7, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ImagOut"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Error in fft_float():  %s == NULL\n"
	.size	.L.str.4, 35

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

	.type	srand_signature_1,@object # @srand_signature_1
	.globl	srand_signature_1
	.p2align	2
srand_signature_1:
	.long	0                       # 0x0
	.size	srand_signature_1, 4

	.type	srand_signature_2,@object # @srand_signature_2
	.globl	srand_signature_2
	.p2align	2
srand_signature_2:
	.long	0                       # 0x0
	.size	srand_signature_2, 4

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

	.type	rand_signature_1,@object # @rand_signature_1
	.globl	rand_signature_1
	.p2align	2
rand_signature_1:
	.long	0                       # 0x0
	.size	rand_signature_1, 4

	.type	rand_signature_2,@object # @rand_signature_2
	.globl	rand_signature_2
	.p2align	2
rand_signature_2:
	.long	0                       # 0x0
	.size	rand_signature_2, 4

	.type	cos_signature_1,@object # @cos_signature_1
	.globl	cos_signature_1
	.p2align	2
cos_signature_1:
	.long	0                       # 0x0
	.size	cos_signature_1, 4

	.type	cos_signature_2,@object # @cos_signature_2
	.globl	cos_signature_2
	.p2align	2
cos_signature_2:
	.long	0                       # 0x0
	.size	cos_signature_2, 4

	.type	sin_signature_1,@object # @sin_signature_1
	.globl	sin_signature_1
	.p2align	2
sin_signature_1:
	.long	0                       # 0x0
	.size	sin_signature_1, 4

	.type	sin_signature_2,@object # @sin_signature_2
	.globl	sin_signature_2
	.p2align	2
sin_signature_2:
	.long	0                       # 0x0
	.size	sin_signature_2, 4

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

	.type	IsPowerOfTwo_signature_1,@object # @IsPowerOfTwo_signature_1
	.globl	IsPowerOfTwo_signature_1
	.p2align	2
IsPowerOfTwo_signature_1:
	.long	0                       # 0x0
	.size	IsPowerOfTwo_signature_1, 4

	.type	IsPowerOfTwo_signature_2,@object # @IsPowerOfTwo_signature_2
	.globl	IsPowerOfTwo_signature_2
	.p2align	2
IsPowerOfTwo_signature_2:
	.long	0                       # 0x0
	.size	IsPowerOfTwo_signature_2, 4

	.type	NumberOfBitsNeeded_signature_1,@object # @NumberOfBitsNeeded_signature_1
	.globl	NumberOfBitsNeeded_signature_1
	.p2align	2
NumberOfBitsNeeded_signature_1:
	.long	0                       # 0x0
	.size	NumberOfBitsNeeded_signature_1, 4

	.type	NumberOfBitsNeeded_signature_2,@object # @NumberOfBitsNeeded_signature_2
	.globl	NumberOfBitsNeeded_signature_2
	.p2align	2
NumberOfBitsNeeded_signature_2:
	.long	0                       # 0x0
	.size	NumberOfBitsNeeded_signature_2, 4

	.type	fprintf_signature_1,@object # @fprintf_signature_1
	.globl	fprintf_signature_1
	.p2align	2
fprintf_signature_1:
	.long	0                       # 0x0
	.size	fprintf_signature_1, 4

	.type	fprintf_signature_2,@object # @fprintf_signature_2
	.globl	fprintf_signature_2
	.p2align	2
fprintf_signature_2:
	.long	0                       # 0x0
	.size	fprintf_signature_2, 4

	.type	ReverseBits_signature_1,@object # @ReverseBits_signature_1
	.globl	ReverseBits_signature_1
	.p2align	2
ReverseBits_signature_1:
	.long	0                       # 0x0
	.size	ReverseBits_signature_1, 4

	.type	ReverseBits_signature_2,@object # @ReverseBits_signature_2
	.globl	ReverseBits_signature_2
	.p2align	2
ReverseBits_signature_2:
	.long	0                       # 0x0
	.size	ReverseBits_signature_2, 4

	.type	Index_to_frequency_signature_1,@object # @Index_to_frequency_signature_1
	.globl	Index_to_frequency_signature_1
	.p2align	2
Index_to_frequency_signature_1:
	.long	0                       # 0x0
	.size	Index_to_frequency_signature_1, 4

	.type	Index_to_frequency_signature_2,@object # @Index_to_frequency_signature_2
	.globl	Index_to_frequency_signature_2
	.p2align	2
Index_to_frequency_signature_2:
	.long	0                       # 0x0
	.size	Index_to_frequency_signature_2, 4

	.type	fft_float_signature_1,@object # @fft_float_signature_1
	.globl	fft_float_signature_1
	.p2align	2
fft_float_signature_1:
	.long	0                       # 0x0
	.size	fft_float_signature_1, 4

	.type	fft_float_signature_2,@object # @fft_float_signature_2
	.globl	fft_float_signature_2
	.p2align	2
fft_float_signature_2:
	.long	0                       # 0x0
	.size	fft_float_signature_2, 4

	.type	CheckPointer_signature_1,@object # @CheckPointer_signature_1
	.globl	CheckPointer_signature_1
	.p2align	2
CheckPointer_signature_1:
	.long	0                       # 0x0
	.size	CheckPointer_signature_1, 4

	.type	CheckPointer_signature_2,@object # @CheckPointer_signature_2
	.globl	CheckPointer_signature_2
	.p2align	2
CheckPointer_signature_2:
	.long	0                       # 0x0
	.size	CheckPointer_signature_2, 4

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
	.ident	"clang version 5.0.0 (tags/RELEASE_500/final)"
	.section	".note.GNU-stack","",@progbits
