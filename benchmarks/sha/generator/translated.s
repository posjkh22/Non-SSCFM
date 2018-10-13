	.text
	.file	"llvm-link"
	.globl	sha_init                # -- Begin function sha_init
	.p2align	4, 0x90
	.type	sha_init,@function
sha_init:                               # @sha_init
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
	movl	$3285377520, %eax       # imm = 0xC3D2E1F0
	movl	$2562383102, %ecx       # imm = 0x98BADCFE
	movl	$4023233417, %edx       # imm = 0xEFCDAB89
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	$1732584193, (%rsi)     # imm = 0x67452301
	movq	-8(%rbp), %rsi
	movq	%rdx, 8(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	movq	-8(%rbp), %rcx
	movq	$271733878, 24(%rcx)    # imm = 0x10325476
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sha_init, .Lfunc_end0-sha_init
	.cfi_endproc
                                        # -- End function
	.globl	sha_update              # -- Begin function sha_update
	.p2align	4, 0x90
	.type	sha_update,@function
sha_update:                             # @sha_update
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi3:
	.cfi_def_cfa_offset 16
.Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi5:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
.Lcfi6:
	.cfi_offset %rbx, -32
.Lcfi7:
	.cfi_offset %r14, -24
	movabsq	$main_run_signature_1, %rax
	movabsq	$main_run_signature_2, %rcx
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	%edx, -20(%rbp)
	movq	-32(%rbp), %rbx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	$131074, %edx           # imm = 0x20002
	movl	$131075, %ecx           # imm = 0x20003
	callq	update_signature
	movq	40(%rbx), %rax
	movslq	-20(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	cmpq	40(%rax), %rcx
	jae	.LBB1_2
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131074, %edx           # imm = 0x20002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 48(%rax)
	movl	$131075, %edx           # imm = 0x20003
	xorl	%ecx, %ecx
	callq	update_signature
.LBB1_2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131075, %edx           # imm = 0x20003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movslq	-20(%rbp), %rax
	shlq	$3, %rax
	movq	-32(%rbp), %rcx
	addq	40(%rcx), %rax
	movq	%rax, 40(%rcx)
	movl	$131076, %edx           # imm = 0x20004
	xorl	%ecx, %ecx
	callq	update_signature
	movslq	-20(%rbp), %rax
	shrq	$29, %rax
	movq	-32(%rbp), %rcx
	addq	48(%rcx), %rax
	movq	%rax, 48(%rcx)
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131076, %edx           # imm = 0x20004
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %ebx
	movl	$131077, %edx           # imm = 0x20005
	movl	$131081, %ecx           # imm = 0x20009
	callq	update_signature
	cmpl	$64, %ebx
	jl	.LBB1_8
# BB#4:                                 #   in Loop: Header=BB1_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131077, %edx           # imm = 0x20005
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movq	-32(%rbp), %rdi
	addq	$56, %rdi
	movq	-40(%rbp), %rsi
	movl	$64, %edx
	callq	memcpy
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$131078, %edx           # imm = 0x20006
	xorl	%ecx, %ecx
	callq	update_signature
# BB#5:                                 #   in Loop: Header=BB1_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131078, %edx           # imm = 0x20006
	callq	verify_signature
	movq	-32(%rbp), %rdi
	addq	$56, %rdi
	movl	$64, %esi
	callq	byte_reverse
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131079, %edx           # imm = 0x20007
	xorl	%ecx, %ecx
	callq	update_signature
# BB#6:                                 #   in Loop: Header=BB1_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131079, %edx           # imm = 0x20007
	callq	verify_signature
	movq	-32(%rbp), %rdi
	callq	sha_transform
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131080, %edx           # imm = 0x20008
	xorl	%ecx, %ecx
	callq	update_signature
# BB#7:                                 #   in Loop: Header=BB1_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131080, %edx           # imm = 0x20008
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %eax
	subl	$64, %eax
	movl	%eax, -20(%rbp)
	movl	$131076, %edx           # imm = 0x20004
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB1_3
.LBB1_8:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131081, %edx           # imm = 0x20009
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movq	-32(%rbp), %rdi
	addq	$56, %rdi
	movq	-40(%rbp), %rsi
	movslq	-20(%rbp), %rdx
	callq	memcpy
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$131082, %edx           # imm = 0x2000A
	xorl	%ecx, %ecx
	callq	update_signature
# BB#9:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131082, %edx           # imm = 0x2000A
	callq	verify_signature
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	sha_update, .Lfunc_end1-sha_update
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function byte_reverse
	.type	byte_reverse,@function
byte_reverse:                           # @byte_reverse
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
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
.Lcfi11:
	.cfi_offset %rbx, -32
.Lcfi12:
	.cfi_offset %r14, -24
	movabsq	$main_run_signature_1, %rax
	movabsq	$main_run_signature_2, %rcx
	movq	%rdi, -48(%rbp)
	movl	%esi, -40(%rbp)
	movl	-40(%rbp), %ebx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	$262146, %edx           # imm = 0x40002
	xorl	%ecx, %ecx
	callq	update_signature
	movslq	%ebx, %rax
	shrq	$3, %rax
	movl	%eax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$262146, %edx           # imm = 0x40002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-36(%rbp), %r14d
	movl	-40(%rbp), %ebx
	movl	$262147, %edx           # imm = 0x40003
	movl	$262149, %ecx           # imm = 0x40005
	callq	update_signature
	cmpl	%ebx, %r14d
	jge	.LBB2_4
# BB#2:                                 #   in Loop: Header=BB2_1 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$262147, %edx           # imm = 0x40003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -20(%rbp)
	movq	-32(%rbp), %rax
	movb	1(%rax), %al
	movb	%al, -19(%rbp)
	movq	-32(%rbp), %rax
	movb	2(%rax), %al
	movb	%al, -18(%rbp)
	movq	-32(%rbp), %rax
	movb	3(%rax), %al
	movb	%al, -17(%rbp)
	movl	$262148, %edx           # imm = 0x40004
	xorl	%ecx, %ecx
	callq	update_signature
	movb	-17(%rbp), %al
	movq	-32(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-18(%rbp), %al
	movq	-32(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-19(%rbp), %al
	movq	-32(%rbp), %rcx
	movb	%al, 2(%rcx)
	movb	-20(%rbp), %al
	movq	-32(%rbp), %rcx
	movb	%al, 3(%rcx)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
# BB#3:                                 #   in Loop: Header=BB2_1 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$262148, %edx           # imm = 0x40004
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	$262146, %edx           # imm = 0x40002
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB2_1
.LBB2_4:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$262149, %edx           # imm = 0x40005
	callq	verify_signature
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	byte_reverse, .Lfunc_end2-byte_reverse
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sha_transform
	.type	sha_transform,@function
sha_transform:                          # @sha_transform
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
	subq	$704, %rsp              # imm = 0x2C0
.Lcfi16:
	.cfi_offset %rbx, -32
.Lcfi17:
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327682, %edx           # imm = 0x50002
	xorl	%ecx, %ecx
	callq	update_signature
	movq	%rbx, -64(%rbp)
	movl	$0, -20(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327682, %edx           # imm = 0x50002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %ebx
	movl	$327683, %edx           # imm = 0x50003
	movl	$327685, %ecx           # imm = 0x50005
	callq	update_signature
	cmpl	$16, %ebx
	jge	.LBB3_4
# BB#2:                                 #   in Loop: Header=BB3_1 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327683, %edx           # imm = 0x50003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-64(%rbp), %r14
	movslq	-20(%rbp), %rbx
	movl	$327684, %edx           # imm = 0x50004
	xorl	%ecx, %ecx
	callq	update_signature
	movq	56(%r14,%rbx,8), %rax
	movslq	-20(%rbp), %rcx
	movq	%rax, -720(%rbp,%rcx,8)
# BB#3:                                 #   in Loop: Header=BB3_1 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327684, %edx           # imm = 0x50004
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$327682, %edx           # imm = 0x50002
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_1
.LBB3_4:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327685, %edx           # imm = 0x50005
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$16, -20(%rbp)
	movl	$327686, %edx           # imm = 0x50006
	xorl	%ecx, %ecx
	callq	update_signature
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327686, %edx           # imm = 0x50006
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %ebx
	movl	$327687, %edx           # imm = 0x50007
	movl	$327689, %ecx           # imm = 0x50009
	callq	update_signature
	cmpl	$80, %ebx
	jge	.LBB3_8
# BB#6:                                 #   in Loop: Header=BB3_5 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327687, %edx           # imm = 0x50007
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %eax
	subl	$3, %eax
	cltq
	movq	-720(%rbp,%rax,8), %rbx
	movl	-20(%rbp), %eax
	subl	$8, %eax
	cltq
	xorq	-720(%rbp,%rax,8), %rbx
	movl	-20(%rbp), %r14d
	subl	$14, %r14d
	movl	$327688, %edx           # imm = 0x50008
	xorl	%ecx, %ecx
	callq	update_signature
	movslq	%r14d, %rax
	xorq	-720(%rbp,%rax,8), %rbx
	movl	-20(%rbp), %eax
	subl	$16, %eax
	cltq
	xorq	-720(%rbp,%rax,8), %rbx
	movslq	-20(%rbp), %rax
	movq	%rbx, -720(%rbp,%rax,8)
# BB#7:                                 #   in Loop: Header=BB3_5 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327688, %edx           # imm = 0x50008
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$327686, %edx           # imm = 0x50006
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_5
.LBB3_8:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327689, %edx           # imm = 0x50009
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rbx
	movl	$327690, %edx           # imm = 0x5000A
	xorl	%ecx, %ecx
	callq	update_signature
	movq	16(%rbx), %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -20(%rbp)
.LBB3_9:                                # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327690, %edx           # imm = 0x5000A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %ebx
	movl	$327691, %edx           # imm = 0x5000B
	movl	$327693, %ecx           # imm = 0x5000D
	callq	update_signature
	cmpl	$20, %ebx
	jge	.LBB3_12
# BB#10:                                #   in Loop: Header=BB3_9 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327691, %edx           # imm = 0x5000B
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rax
	shlq	$5, %rax
	movq	-40(%rbp), %rcx
	shrq	$27, %rcx
	orq	%rax, %rcx
	movq	-32(%rbp), %rax
	andq	-56(%rbp), %rax
	movq	-32(%rbp), %rbx
	xorq	$-1, %rbx
	andq	-48(%rbp), %rbx
	orq	%rax, %rbx
	addq	%rcx, %rbx
	addq	-72(%rbp), %rbx
	movslq	-20(%rbp), %r14
	movl	$327692, %edx           # imm = 0x5000C
	xorl	%ecx, %ecx
	callq	update_signature
	addq	-720(%rbp,%r14,8), %rbx
	addq	$1518500249, %rbx       # imm = 0x5A827999
	movq	%rbx, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	shlq	$30, %rax
	movq	-32(%rbp), %rcx
	shrq	$2, %rcx
	orq	%rax, %rcx
	movq	%rcx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
# BB#11:                                #   in Loop: Header=BB3_9 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327692, %edx           # imm = 0x5000C
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$327690, %edx           # imm = 0x5000A
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_9
.LBB3_12:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327693, %edx           # imm = 0x5000D
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$20, -20(%rbp)
	movl	$327694, %edx           # imm = 0x5000E
	xorl	%ecx, %ecx
	callq	update_signature
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327694, %edx           # imm = 0x5000E
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %ebx
	movl	$327695, %edx           # imm = 0x5000F
	movl	$327697, %ecx           # imm = 0x50011
	callq	update_signature
	cmpl	$40, %ebx
	jge	.LBB3_16
# BB#14:                                #   in Loop: Header=BB3_13 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327695, %edx           # imm = 0x5000F
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rax
	shlq	$5, %rax
	movq	-40(%rbp), %rcx
	shrq	$27, %rcx
	orq	%rax, %rcx
	movq	-32(%rbp), %rbx
	xorq	-56(%rbp), %rbx
	xorq	-48(%rbp), %rbx
	addq	%rcx, %rbx
	addq	-72(%rbp), %rbx
	movslq	-20(%rbp), %rax
	movq	-720(%rbp,%rax,8), %r14
	movl	$327696, %edx           # imm = 0x50010
	xorl	%ecx, %ecx
	callq	update_signature
	addq	%rbx, %r14
	addq	$1859775393, %r14       # imm = 0x6ED9EBA1
	movq	%r14, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	shlq	$30, %rax
	movq	-32(%rbp), %rcx
	shrq	$2, %rcx
	orq	%rax, %rcx
	movq	%rcx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
# BB#15:                                #   in Loop: Header=BB3_13 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327696, %edx           # imm = 0x50010
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$327694, %edx           # imm = 0x5000E
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_13
.LBB3_16:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327697, %edx           # imm = 0x50011
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$40, -20(%rbp)
	movl	$327698, %edx           # imm = 0x50012
	xorl	%ecx, %ecx
	callq	update_signature
.LBB3_17:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327698, %edx           # imm = 0x50012
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %ebx
	movl	$327699, %edx           # imm = 0x50013
	movl	$327701, %ecx           # imm = 0x50015
	callq	update_signature
	cmpl	$60, %ebx
	jge	.LBB3_20
# BB#18:                                #   in Loop: Header=BB3_17 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327699, %edx           # imm = 0x50013
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rax
	shlq	$5, %rax
	movq	-40(%rbp), %rcx
	shrq	$27, %rcx
	orq	%rax, %rcx
	movq	-32(%rbp), %rax
	andq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	andq	-48(%rbp), %rdx
	orq	%rax, %rdx
	movq	-56(%rbp), %rbx
	andq	-48(%rbp), %rbx
	orq	%rdx, %rbx
	addq	%rcx, %rbx
	addq	-72(%rbp), %rbx
	movl	-20(%rbp), %r14d
	movl	$327700, %edx           # imm = 0x50014
	xorl	%ecx, %ecx
	callq	update_signature
	movl	$2400959708, %eax       # imm = 0x8F1BBCDC
	movslq	%r14d, %rcx
	addq	-720(%rbp,%rcx,8), %rbx
	addq	%rax, %rbx
	movq	%rbx, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	shlq	$30, %rax
	movq	-32(%rbp), %rcx
	shrq	$2, %rcx
	orq	%rax, %rcx
	movq	%rcx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
# BB#19:                                #   in Loop: Header=BB3_17 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327700, %edx           # imm = 0x50014
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$327698, %edx           # imm = 0x50012
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_17
.LBB3_20:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327701, %edx           # imm = 0x50015
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$60, -20(%rbp)
	movl	$327702, %edx           # imm = 0x50016
	xorl	%ecx, %ecx
	callq	update_signature
.LBB3_21:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327702, %edx           # imm = 0x50016
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %ebx
	movl	$327703, %edx           # imm = 0x50017
	movl	$327705, %ecx           # imm = 0x50019
	callq	update_signature
	cmpl	$80, %ebx
	jge	.LBB3_24
# BB#22:                                #   in Loop: Header=BB3_21 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327703, %edx           # imm = 0x50017
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-40(%rbp), %rax
	shlq	$5, %rax
	movq	-40(%rbp), %rcx
	shrq	$27, %rcx
	orq	%rax, %rcx
	movq	-32(%rbp), %rbx
	xorq	-56(%rbp), %rbx
	xorq	-48(%rbp), %rbx
	addq	%rcx, %rbx
	addq	-72(%rbp), %rbx
	movslq	-20(%rbp), %rax
	movq	-720(%rbp,%rax,8), %r14
	movl	$327704, %edx           # imm = 0x50018
	xorl	%ecx, %ecx
	callq	update_signature
	movl	$3395469782, %eax       # imm = 0xCA62C1D6
	addq	%rbx, %r14
	addq	%rax, %r14
	movq	%r14, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	shlq	$30, %rax
	movq	-32(%rbp), %rcx
	shrq	$2, %rcx
	orq	%rax, %rcx
	movq	%rcx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
# BB#23:                                #   in Loop: Header=BB3_21 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327704, %edx           # imm = 0x50018
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$327702, %edx           # imm = 0x50016
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB3_21
.LBB3_24:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327705, %edx           # imm = 0x50019
	callq	verify_signature
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	8(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	16(%rcx), %rax
	movq	%rax, 16(%rcx)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	24(%rcx), %rax
	movq	%rax, 24(%rcx)
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	32(%rcx), %rax
	movq	%rax, 32(%rcx)
	addq	$704, %rsp              # imm = 0x2C0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	sha_transform, .Lfunc_end3-sha_transform
	.cfi_endproc
                                        # -- End function
	.globl	sha_final               # -- Begin function sha_final
	.p2align	4, 0x90
	.type	sha_final,@function
sha_final:                              # @sha_final
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
	subq	$32, %rsp
.Lcfi21:
	.cfi_offset %rbx, -32
.Lcfi22:
	.cfi_offset %r14, -24
	movabsq	$main_run_signature_1, %rax
	movabsq	$main_run_signature_2, %rsi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rbx
	shrq	$3, %rbx
	movq	%rax, %rdi
	movl	$393218, %edx           # imm = 0x60002
	movl	$393222, %ecx           # imm = 0x60006
	callq	update_signature
	andq	$63, %rbx
	movl	%ebx, -20(%rbp)
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	leal	1(%rcx), %edx
	movl	%edx, -20(%rbp)
	movslq	%ecx, %rcx
	movb	$-128, 56(%rax,%rcx)
	cmpl	$56, -20(%rbp)
	jle	.LBB4_5
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393218, %edx           # imm = 0x60002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rbx
	addq	$56, %rbx
	movslq	-20(%rbp), %r14
	movl	$393219, %edx           # imm = 0x60003
	xorl	%ecx, %ecx
	callq	update_signature
	movl	$64, %eax
	addq	%rbx, %r14
	subl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	memset
# BB#2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393219, %edx           # imm = 0x60003
	callq	verify_signature
	movq	-32(%rbp), %rdi
	addq	$56, %rdi
	movl	$64, %esi
	callq	byte_reverse
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
	movq	-32(%rbp), %rdi
	callq	sha_transform
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393221, %edx           # imm = 0x60005
	xorl	%ecx, %ecx
	callq	update_signature
# BB#4:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393221, %edx           # imm = 0x60005
	callq	verify_signature
	movabsq	$main_run_signature_1, %rbx
	movabsq	$main_run_signature_2, %r14
	movq	-32(%rbp), %rdi
	addq	$56, %rdi
	xorl	%esi, %esi
	movl	$56, %edx
	callq	memset
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$393223, %edx           # imm = 0x60007
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB4_6
.LBB4_5:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393222, %edx           # imm = 0x60006
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-32(%rbp), %rbx
	addq	$56, %rbx
	movslq	-20(%rbp), %r14
	movl	$393223, %edx           # imm = 0x60007
	xorl	%ecx, %ecx
	callq	update_signature
	movl	$56, %eax
	addq	%rbx, %r14
	subl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	memset
.LBB4_6:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393223, %edx           # imm = 0x60007
	callq	verify_signature
	movq	-32(%rbp), %rdi
	addq	$56, %rdi
	movl	$64, %esi
	callq	byte_reverse
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
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 168(%rcx)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 176(%rcx)
	movq	-32(%rbp), %rdi
	callq	sha_transform
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393225, %edx           # imm = 0x60009
	xorl	%ecx, %ecx
	callq	update_signature
# BB#8:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$393225, %edx           # imm = 0x60009
	callq	verify_signature
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	sha_final, .Lfunc_end4-sha_final
	.cfi_endproc
                                        # -- End function
	.globl	sha_stream              # -- Begin function sha_stream
	.p2align	4, 0x90
	.type	sha_stream,@function
sha_stream:                             # @sha_stream
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
	pushq	%rbx
	subq	$8216, %rsp             # imm = 0x2018
.Lcfi26:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	sha_init
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524290, %edx           # imm = 0x80002
	xorl	%ecx, %ecx
	callq	update_signature
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524290, %edx           # imm = 0x80002
	callq	verify_signature
	leaq	-8224(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	$1, %esi
	movl	$8192, %edx             # imm = 0x2000
	callq	fread
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524291, %edx           # imm = 0x80003
	xorl	%ecx, %ecx
	callq	update_signature
# BB#2:                                 #   in Loop: Header=BB5_1 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524291, %edx           # imm = 0x80003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	%ebx, -20(%rbp)
	movl	$524292, %edx           # imm = 0x80004
	movl	$524293, %ecx           # imm = 0x80005
	callq	update_signature
	cmpl	$0, %ebx
	jle	.LBB5_4
# BB#3:                                 #   in Loop: Header=BB5_1 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524292, %edx           # imm = 0x80004
	callq	verify_signature
	leaq	-8224(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %edx
	callq	sha_update
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524290, %edx           # imm = 0x80002
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB5_1
.LBB5_4:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524293, %edx           # imm = 0x80005
	callq	verify_signature
	movq	-16(%rbp), %rdi
	callq	sha_final
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524294, %edx           # imm = 0x80006
	xorl	%ecx, %ecx
	callq	update_signature
# BB#5:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524294, %edx           # imm = 0x80006
	callq	verify_signature
	addq	$8216, %rsp             # imm = 0x2018
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	sha_stream, .Lfunc_end5-sha_stream
	.cfi_endproc
                                        # -- End function
	.globl	sha_print               # -- Begin function sha_print
	.p2align	4, 0x90
	.type	sha_print,@function
sha_print:                              # @sha_print
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	sha_print, .Lfunc_end6-sha_print
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi30:
	.cfi_def_cfa_offset 16
.Lcfi31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi32:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$240, %rsp
.Lcfi33:
	.cfi_offset %rbx, -32
.Lcfi34:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movl	%edi, %ebx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720898, %edx           # imm = 0xB0002
	xorl	%ecx, %ecx
	callq	update_signature
	leaq	-64(%rbp), %rdi
	movl	$0, -32(%rbp)
	movl	%ebx, -28(%rbp)
	movq	%r14, -72(%rbp)
	xorl	%esi, %esi
	callq	gettimeofday
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720898, %edx           # imm = 0xB0002
	callq	verify_signature
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.1, %rsi
	callq	fopen
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720899, %edx           # imm = 0xB0003
	xorl	%ecx, %ecx
	callq	update_signature
# BB#2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720899, %edx           # imm = 0xB0003
	callq	verify_signature
	leaq	-256(%rbp), %rdi
	movq	%rbx, -24(%rbp)
	movq	-24(%rbp), %rsi
	callq	sha_stream
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
	leaq	-256(%rbp), %rdi
	callq	sha_print
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720901, %edx           # imm = 0xB0005
	xorl	%ecx, %ecx
	callq	update_signature
# BB#4:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720901, %edx           # imm = 0xB0005
	callq	verify_signature
	movq	-24(%rbp), %rdi
	callq	fclose
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720902, %edx           # imm = 0xB0006
	xorl	%ecx, %ecx
	callq	update_signature
# BB#5:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720902, %edx           # imm = 0xB0006
	callq	verify_signature
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720903, %edx           # imm = 0xB0007
	xorl	%ecx, %ecx
	callq	update_signature
# BB#6:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720903, %edx           # imm = 0xB0007
	callq	verify_signature
	leaq	-48(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720904, %edx           # imm = 0xB0008
	xorl	%ecx, %ecx
	callq	update_signature
# BB#7:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720904, %edx           # imm = 0xB0008
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-48(%rbp), %rax
	subq	-64(%rbp), %rax
	imulq	$1000000, %rax, %rbx    # imm = 0xF4240
	movl	$720905, %edx           # imm = 0xB0009
	xorl	%ecx, %ecx
	callq	update_signature
	movabsq	$.L.str.3, %rdi
	movq	-40(%rbp), %rsi
	subq	-56(%rbp), %rsi
	addq	%rbx, %rsi
	movb	$0, %al
	callq	printf
# BB#8:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$720905, %edx           # imm = 0xB0009
	callq	verify_signature
	movl	$720905, %edi           # imm = 0xB0009
	callq	exit_with_remainder_process
	xorl	%eax, %eax
	addq	$240, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	main, .Lfunc_end7-main
	.cfi_endproc
                                        # -- End function
	.globl	CallcheckerSet          # -- Begin function CallcheckerSet
	.p2align	4, 0x90
	.type	CallcheckerSet,@function
CallcheckerSet:                         # @CallcheckerSet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi35:
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
.Lfunc_end8:
	.size	CallcheckerSet, .Lfunc_end8-CallcheckerSet
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"input_small.asc"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"rb"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	" [target finished!]\n"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	" [target] Execution Time: %ld\n"
	.size	.L.str.3, 31

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

	.type	sha_init_signature_1,@object # @sha_init_signature_1
	.globl	sha_init_signature_1
	.p2align	2
sha_init_signature_1:
	.long	0                       # 0x0
	.size	sha_init_signature_1, 4

	.type	sha_init_signature_2,@object # @sha_init_signature_2
	.globl	sha_init_signature_2
	.p2align	2
sha_init_signature_2:
	.long	0                       # 0x0
	.size	sha_init_signature_2, 4

	.type	sha_update_signature_1,@object # @sha_update_signature_1
	.globl	sha_update_signature_1
	.p2align	2
sha_update_signature_1:
	.long	0                       # 0x0
	.size	sha_update_signature_1, 4

	.type	sha_update_signature_2,@object # @sha_update_signature_2
	.globl	sha_update_signature_2
	.p2align	2
sha_update_signature_2:
	.long	0                       # 0x0
	.size	sha_update_signature_2, 4

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

	.type	byte_reverse_signature_1,@object # @byte_reverse_signature_1
	.globl	byte_reverse_signature_1
	.p2align	2
byte_reverse_signature_1:
	.long	0                       # 0x0
	.size	byte_reverse_signature_1, 4

	.type	byte_reverse_signature_2,@object # @byte_reverse_signature_2
	.globl	byte_reverse_signature_2
	.p2align	2
byte_reverse_signature_2:
	.long	0                       # 0x0
	.size	byte_reverse_signature_2, 4

	.type	sha_transform_signature_1,@object # @sha_transform_signature_1
	.globl	sha_transform_signature_1
	.p2align	2
sha_transform_signature_1:
	.long	0                       # 0x0
	.size	sha_transform_signature_1, 4

	.type	sha_transform_signature_2,@object # @sha_transform_signature_2
	.globl	sha_transform_signature_2
	.p2align	2
sha_transform_signature_2:
	.long	0                       # 0x0
	.size	sha_transform_signature_2, 4

	.type	sha_final_signature_1,@object # @sha_final_signature_1
	.globl	sha_final_signature_1
	.p2align	2
sha_final_signature_1:
	.long	0                       # 0x0
	.size	sha_final_signature_1, 4

	.type	sha_final_signature_2,@object # @sha_final_signature_2
	.globl	sha_final_signature_2
	.p2align	2
sha_final_signature_2:
	.long	0                       # 0x0
	.size	sha_final_signature_2, 4

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

	.type	sha_stream_signature_1,@object # @sha_stream_signature_1
	.globl	sha_stream_signature_1
	.p2align	2
sha_stream_signature_1:
	.long	0                       # 0x0
	.size	sha_stream_signature_1, 4

	.type	sha_stream_signature_2,@object # @sha_stream_signature_2
	.globl	sha_stream_signature_2
	.p2align	2
sha_stream_signature_2:
	.long	0                       # 0x0
	.size	sha_stream_signature_2, 4

	.type	fread_signature_1,@object # @fread_signature_1
	.globl	fread_signature_1
	.p2align	2
fread_signature_1:
	.long	0                       # 0x0
	.size	fread_signature_1, 4

	.type	fread_signature_2,@object # @fread_signature_2
	.globl	fread_signature_2
	.p2align	2
fread_signature_2:
	.long	0                       # 0x0
	.size	fread_signature_2, 4

	.type	sha_print_signature_1,@object # @sha_print_signature_1
	.globl	sha_print_signature_1
	.p2align	2
sha_print_signature_1:
	.long	0                       # 0x0
	.size	sha_print_signature_1, 4

	.type	sha_print_signature_2,@object # @sha_print_signature_2
	.globl	sha_print_signature_2
	.p2align	2
sha_print_signature_2:
	.long	0                       # 0x0
	.size	sha_print_signature_2, 4

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

	.type	fclose_signature_1,@object # @fclose_signature_1
	.globl	fclose_signature_1
	.p2align	2
fclose_signature_1:
	.long	0                       # 0x0
	.size	fclose_signature_1, 4

	.type	fclose_signature_2,@object # @fclose_signature_2
	.globl	fclose_signature_2
	.p2align	2
fclose_signature_2:
	.long	0                       # 0x0
	.size	fclose_signature_2, 4

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
