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
	pushq	%rbx
	pushq	%rax
.Lcfi3:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movabsq	$sha_init_signature, %rdi
	movl	$65537, %esi            # imm = 0x10001
	callq	update_signature
	movabsq	$sha_init_signature, %rdi
	movl	$3285377520, %eax       # imm = 0xC3D2E1F0
	movl	$2562383102, %ecx       # imm = 0x98BADCFE
	movl	$4023233417, %edx       # imm = 0xEFCDAB89
	movq	%rbx, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	$1732584193, (%rsi)     # imm = 0x67452301
	movq	-16(%rbp), %rsi
	movq	%rdx, 8(%rsi)
	movq	-16(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	movq	-16(%rbp), %rcx
	movq	$271733878, 24(%rcx)    # imm = 0x10325476
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
	movl	$65537, %esi            # imm = 0x10001
	callq	verify_signature
	addq	$8, %rsp
	popq	%rbx
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
.Lcfi4:
	.cfi_def_cfa_offset 16
.Lcfi5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi6:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
.Lcfi7:
	.cfi_offset %rbx, -40
.Lcfi8:
	.cfi_offset %r14, -32
.Lcfi9:
	.cfi_offset %r15, -24
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movabsq	$sha_update_signature, %rdi
	movl	$131073, %esi           # imm = 0x20001
	callq	update_signature
	movabsq	$sha_update_signature, %rdi
	movq	%rbx, -40(%rbp)
	movq	%r15, -48(%rbp)
	movl	%r14d, -28(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movslq	-28(%rbp), %rbx
	shlq	$3, %rbx
	addq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	40(%rax), %r14
	movl	$131073, %esi           # imm = 0x20001
	callq	verify_signature
	cmpq	%r14, %rbx
	jae	.LBB1_2
# BB#1:
	movabsq	$sha_update_signature, %rdi
	movl	$131074, %esi           # imm = 0x20002
	callq	update_signature
	movabsq	$sha_update_signature, %rdi
	movq	-40(%rbp), %rax
	movq	48(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 48(%rax)
	movl	$131074, %esi           # imm = 0x20002
	callq	verify_signature
.LBB1_2:
	movabsq	$sha_update_signature, %rdi
	movl	$131075, %esi           # imm = 0x20003
	callq	update_signature
	movabsq	$sha_update_signature, %rdi
	movslq	-28(%rbp), %rax
	shlq	$3, %rax
	movq	-40(%rbp), %rcx
	addq	40(%rcx), %rax
	movq	%rax, 40(%rcx)
	movslq	-28(%rbp), %rax
	shrq	$29, %rax
	movq	-40(%rbp), %rcx
	addq	48(%rcx), %rax
	movq	%rax, 48(%rcx)
	movl	$131075, %esi           # imm = 0x20003
	callq	verify_signature
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movabsq	$sha_update_signature, %rdi
	movl	$131076, %esi           # imm = 0x20004
	callq	update_signature
	movabsq	$sha_update_signature, %rdi
	movl	-28(%rbp), %ebx
	movl	$131076, %esi           # imm = 0x20004
	callq	verify_signature
	cmpl	$64, %ebx
	jl	.LBB1_8
# BB#4:                                 #   in Loop: Header=BB1_3 Depth=1
	movabsq	$sha_update_signature, %rdi
	movl	$131077, %esi           # imm = 0x20005
	callq	update_signature
	movabsq	$sha_update_signature, %rbx
	movq	-40(%rbp), %rdi
	addq	$56, %rdi
	movq	-48(%rbp), %rsi
	movl	$64, %edx
	callq	memcpy
	movq	%rbx, %rdi
	movl	$131077, %esi           # imm = 0x20005
	callq	verify_signature
# BB#5:                                 #   in Loop: Header=BB1_3 Depth=1
	movabsq	$sha_update_signature, %rdi
	movl	$131078, %esi           # imm = 0x20006
	callq	update_signature
	movq	-40(%rbp), %rdi
	addq	$56, %rdi
	movl	$64, %esi
	callq	byte_reverse
	movabsq	$sha_update_signature, %rdi
	movl	$131078, %esi           # imm = 0x20006
	callq	verify_signature
# BB#6:                                 #   in Loop: Header=BB1_3 Depth=1
	movabsq	$sha_update_signature, %rdi
	movl	$131079, %esi           # imm = 0x20007
	callq	update_signature
	movq	-40(%rbp), %rdi
	callq	sha_transform
	movabsq	$sha_update_signature, %rdi
	movl	$131079, %esi           # imm = 0x20007
	callq	verify_signature
# BB#7:                                 #   in Loop: Header=BB1_3 Depth=1
	movabsq	$sha_update_signature, %rdi
	movl	$131080, %esi           # imm = 0x20008
	callq	update_signature
	movabsq	$sha_update_signature, %rdi
	movq	-48(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -48(%rbp)
	movl	-28(%rbp), %eax
	subl	$64, %eax
	movl	%eax, -28(%rbp)
	movl	$131080, %esi           # imm = 0x20008
	callq	verify_signature
	jmp	.LBB1_3
.LBB1_8:
	movabsq	$sha_update_signature, %rdi
	movl	$131081, %esi           # imm = 0x20009
	callq	update_signature
	movabsq	$sha_update_signature, %rbx
	movq	-40(%rbp), %rdi
	addq	$56, %rdi
	movq	-48(%rbp), %rsi
	movslq	-28(%rbp), %rdx
	callq	memcpy
	movq	%rbx, %rdi
	movl	$131081, %esi           # imm = 0x20009
	callq	verify_signature
# BB#9:
	movabsq	$sha_update_signature, %rdi
	movl	$131082, %esi           # imm = 0x2000A
	callq	update_signature
	movabsq	$sha_update_signature, %rdi
	movl	$131082, %esi           # imm = 0x2000A
	callq	verify_signature
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
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
.Lcfi10:
	.cfi_def_cfa_offset 16
.Lcfi11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi12:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
.Lcfi13:
	.cfi_offset %rbx, -32
.Lcfi14:
	.cfi_offset %r14, -24
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movabsq	$byte_reverse_signature, %rdi
	movl	$262145, %esi           # imm = 0x40001
	callq	update_signature
	movabsq	$byte_reverse_signature, %rdi
	movq	%rbx, -48(%rbp)
	movl	%r14d, -40(%rbp)
	movslq	-40(%rbp), %rax
	shrq	$3, %rax
	movl	%eax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$262145, %esi           # imm = 0x40001
	callq	verify_signature
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movabsq	$byte_reverse_signature, %rdi
	movl	$262146, %esi           # imm = 0x40002
	callq	update_signature
	movabsq	$byte_reverse_signature, %rdi
	movl	-36(%rbp), %r14d
	movl	-40(%rbp), %ebx
	movl	$262146, %esi           # imm = 0x40002
	callq	verify_signature
	cmpl	%ebx, %r14d
	jge	.LBB2_4
# BB#2:                                 #   in Loop: Header=BB2_1 Depth=1
	movabsq	$byte_reverse_signature, %rdi
	movl	$262147, %esi           # imm = 0x40003
	callq	update_signature
	movabsq	$byte_reverse_signature, %rdi
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
	movl	$262147, %esi           # imm = 0x40003
	callq	verify_signature
# BB#3:                                 #   in Loop: Header=BB2_1 Depth=1
	movabsq	$byte_reverse_signature, %rdi
	movl	$262148, %esi           # imm = 0x40004
	callq	update_signature
	movabsq	$byte_reverse_signature, %rdi
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	$262148, %esi           # imm = 0x40004
	callq	verify_signature
	jmp	.LBB2_1
.LBB2_4:
	movabsq	$byte_reverse_signature, %rdi
	movl	$262149, %esi           # imm = 0x40005
	callq	update_signature
	movabsq	$byte_reverse_signature, %rdi
	movl	$262149, %esi           # imm = 0x40005
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
.Lcfi15:
	.cfi_def_cfa_offset 16
.Lcfi16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi17:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$712, %rsp              # imm = 0x2C8
.Lcfi18:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movabsq	$sha_transform_signature, %rdi
	movl	$327681, %esi           # imm = 0x50001
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movq	%rbx, -56(%rbp)
	movl	$0, -12(%rbp)
	movl	$327681, %esi           # imm = 0x50001
	callq	verify_signature
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movabsq	$sha_transform_signature, %rdi
	movl	$327682, %esi           # imm = 0x50002
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movl	-12(%rbp), %ebx
	movl	$327682, %esi           # imm = 0x50002
	callq	verify_signature
	cmpl	$16, %ebx
	jge	.LBB3_4
# BB#2:                                 #   in Loop: Header=BB3_1 Depth=1
	movabsq	$sha_transform_signature, %rdi
	movl	$327683, %esi           # imm = 0x50003
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movq	-56(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	56(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movq	%rax, -720(%rbp,%rcx,8)
	movl	$327683, %esi           # imm = 0x50003
	callq	verify_signature
# BB#3:                                 #   in Loop: Header=BB3_1 Depth=1
	movabsq	$sha_transform_signature, %rdi
	movl	$327684, %esi           # imm = 0x50004
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	$327684, %esi           # imm = 0x50004
	callq	verify_signature
	jmp	.LBB3_1
.LBB3_4:
	movabsq	$sha_transform_signature, %rdi
	movl	$327685, %esi           # imm = 0x50005
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movl	$16, -12(%rbp)
	movl	$327685, %esi           # imm = 0x50005
	callq	verify_signature
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	movabsq	$sha_transform_signature, %rdi
	movl	$327686, %esi           # imm = 0x50006
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movl	-12(%rbp), %ebx
	movl	$327686, %esi           # imm = 0x50006
	callq	verify_signature
	cmpl	$80, %ebx
	jge	.LBB3_8
# BB#6:                                 #   in Loop: Header=BB3_5 Depth=1
	movabsq	$sha_transform_signature, %rdi
	movl	$327687, %esi           # imm = 0x50007
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movl	-12(%rbp), %eax
	subl	$3, %eax
	cltq
	movq	-720(%rbp,%rax,8), %rax
	movl	-12(%rbp), %ecx
	subl	$8, %ecx
	movslq	%ecx, %rcx
	xorq	-720(%rbp,%rcx,8), %rax
	movl	-12(%rbp), %ecx
	subl	$14, %ecx
	movslq	%ecx, %rcx
	xorq	-720(%rbp,%rcx,8), %rax
	movl	-12(%rbp), %ecx
	subl	$16, %ecx
	movslq	%ecx, %rcx
	xorq	-720(%rbp,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movq	%rax, -720(%rbp,%rcx,8)
	movl	$327687, %esi           # imm = 0x50007
	callq	verify_signature
# BB#7:                                 #   in Loop: Header=BB3_5 Depth=1
	movabsq	$sha_transform_signature, %rdi
	movl	$327688, %esi           # imm = 0x50008
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	$327688, %esi           # imm = 0x50008
	callq	verify_signature
	jmp	.LBB3_5
.LBB3_8:
	movabsq	$sha_transform_signature, %rdi
	movl	$327689, %esi           # imm = 0x50009
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -12(%rbp)
	movl	$327689, %esi           # imm = 0x50009
	callq	verify_signature
.LBB3_9:                                # =>This Inner Loop Header: Depth=1
	movabsq	$sha_transform_signature, %rdi
	movl	$327690, %esi           # imm = 0x5000A
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movl	-12(%rbp), %ebx
	movl	$327690, %esi           # imm = 0x5000A
	callq	verify_signature
	cmpl	$20, %ebx
	jge	.LBB3_12
# BB#10:                                #   in Loop: Header=BB3_9 Depth=1
	movabsq	$sha_transform_signature, %rdi
	movl	$327691, %esi           # imm = 0x5000B
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movq	-32(%rbp), %rax
	shlq	$5, %rax
	movq	-32(%rbp), %rcx
	shrq	$27, %rcx
	orq	%rax, %rcx
	movq	-24(%rbp), %rax
	andq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	xorq	$-1, %rdx
	andq	-40(%rbp), %rdx
	orq	%rax, %rdx
	addq	%rcx, %rdx
	addq	-64(%rbp), %rdx
	movslq	-12(%rbp), %rax
	addq	-720(%rbp,%rax,8), %rdx
	addq	$1518500249, %rdx       # imm = 0x5A827999
	movq	%rdx, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	shlq	$30, %rax
	movq	-24(%rbp), %rcx
	shrq	$2, %rcx
	orq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$327691, %esi           # imm = 0x5000B
	callq	verify_signature
# BB#11:                                #   in Loop: Header=BB3_9 Depth=1
	movabsq	$sha_transform_signature, %rdi
	movl	$327692, %esi           # imm = 0x5000C
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	$327692, %esi           # imm = 0x5000C
	callq	verify_signature
	jmp	.LBB3_9
.LBB3_12:
	movabsq	$sha_transform_signature, %rdi
	movl	$327693, %esi           # imm = 0x5000D
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movl	$20, -12(%rbp)
	movl	$327693, %esi           # imm = 0x5000D
	callq	verify_signature
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	movabsq	$sha_transform_signature, %rdi
	movl	$327694, %esi           # imm = 0x5000E
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movl	-12(%rbp), %ebx
	movl	$327694, %esi           # imm = 0x5000E
	callq	verify_signature
	cmpl	$40, %ebx
	jge	.LBB3_16
# BB#14:                                #   in Loop: Header=BB3_13 Depth=1
	movabsq	$sha_transform_signature, %rdi
	movl	$327695, %esi           # imm = 0x5000F
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movq	-32(%rbp), %rax
	shlq	$5, %rax
	movq	-32(%rbp), %rcx
	shrq	$27, %rcx
	orq	%rax, %rcx
	movq	-24(%rbp), %rax
	xorq	-48(%rbp), %rax
	xorq	-40(%rbp), %rax
	addq	%rcx, %rax
	addq	-64(%rbp), %rax
	movslq	-12(%rbp), %rcx
	addq	-720(%rbp,%rcx,8), %rax
	addq	$1859775393, %rax       # imm = 0x6ED9EBA1
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	shlq	$30, %rax
	movq	-24(%rbp), %rcx
	shrq	$2, %rcx
	orq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$327695, %esi           # imm = 0x5000F
	callq	verify_signature
# BB#15:                                #   in Loop: Header=BB3_13 Depth=1
	movabsq	$sha_transform_signature, %rdi
	movl	$327696, %esi           # imm = 0x50010
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	$327696, %esi           # imm = 0x50010
	callq	verify_signature
	jmp	.LBB3_13
.LBB3_16:
	movabsq	$sha_transform_signature, %rdi
	movl	$327697, %esi           # imm = 0x50011
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movl	$40, -12(%rbp)
	movl	$327697, %esi           # imm = 0x50011
	callq	verify_signature
.LBB3_17:                               # =>This Inner Loop Header: Depth=1
	movabsq	$sha_transform_signature, %rdi
	movl	$327698, %esi           # imm = 0x50012
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movl	-12(%rbp), %ebx
	movl	$327698, %esi           # imm = 0x50012
	callq	verify_signature
	cmpl	$60, %ebx
	jge	.LBB3_20
# BB#18:                                #   in Loop: Header=BB3_17 Depth=1
	movabsq	$sha_transform_signature, %rdi
	movl	$327699, %esi           # imm = 0x50013
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movl	$2400959708, %eax       # imm = 0x8F1BBCDC
	movq	-32(%rbp), %rcx
	shlq	$5, %rcx
	movq	-32(%rbp), %rdx
	shrq	$27, %rdx
	orq	%rcx, %rdx
	movq	-24(%rbp), %rcx
	andq	-48(%rbp), %rcx
	movq	-24(%rbp), %rsi
	andq	-40(%rbp), %rsi
	orq	%rcx, %rsi
	movq	-48(%rbp), %rcx
	andq	-40(%rbp), %rcx
	orq	%rsi, %rcx
	addq	%rdx, %rcx
	addq	-64(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	addq	-720(%rbp,%rdx,8), %rcx
	addq	%rax, %rcx
	movq	%rcx, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	shlq	$30, %rax
	movq	-24(%rbp), %rcx
	shrq	$2, %rcx
	orq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$327699, %esi           # imm = 0x50013
	callq	verify_signature
# BB#19:                                #   in Loop: Header=BB3_17 Depth=1
	movabsq	$sha_transform_signature, %rdi
	movl	$327700, %esi           # imm = 0x50014
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	$327700, %esi           # imm = 0x50014
	callq	verify_signature
	jmp	.LBB3_17
.LBB3_20:
	movabsq	$sha_transform_signature, %rdi
	movl	$327701, %esi           # imm = 0x50015
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movl	$60, -12(%rbp)
	movl	$327701, %esi           # imm = 0x50015
	callq	verify_signature
.LBB3_21:                               # =>This Inner Loop Header: Depth=1
	movabsq	$sha_transform_signature, %rdi
	movl	$327702, %esi           # imm = 0x50016
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movl	-12(%rbp), %ebx
	movl	$327702, %esi           # imm = 0x50016
	callq	verify_signature
	cmpl	$80, %ebx
	jge	.LBB3_24
# BB#22:                                #   in Loop: Header=BB3_21 Depth=1
	movabsq	$sha_transform_signature, %rdi
	movl	$327703, %esi           # imm = 0x50017
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movl	$3395469782, %eax       # imm = 0xCA62C1D6
	movq	-32(%rbp), %rcx
	shlq	$5, %rcx
	movq	-32(%rbp), %rdx
	shrq	$27, %rdx
	orq	%rcx, %rdx
	movq	-24(%rbp), %rcx
	xorq	-48(%rbp), %rcx
	xorq	-40(%rbp), %rcx
	addq	%rdx, %rcx
	addq	-64(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	addq	-720(%rbp,%rdx,8), %rcx
	addq	%rax, %rcx
	movq	%rcx, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	shlq	$30, %rax
	movq	-24(%rbp), %rcx
	shrq	$2, %rcx
	orq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$327703, %esi           # imm = 0x50017
	callq	verify_signature
# BB#23:                                #   in Loop: Header=BB3_21 Depth=1
	movabsq	$sha_transform_signature, %rdi
	movl	$327704, %esi           # imm = 0x50018
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	$327704, %esi           # imm = 0x50018
	callq	verify_signature
	jmp	.LBB3_21
.LBB3_24:
	movabsq	$sha_transform_signature, %rdi
	movl	$327705, %esi           # imm = 0x50019
	callq	update_signature
	movabsq	$sha_transform_signature, %rdi
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	8(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	16(%rcx), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	24(%rcx), %rax
	movq	%rax, 24(%rcx)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	32(%rcx), %rax
	movq	%rax, 32(%rcx)
	movl	$327705, %esi           # imm = 0x50019
	callq	verify_signature
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
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
.Lcfi19:
	.cfi_def_cfa_offset 16
.Lcfi20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi21:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
.Lcfi22:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movabsq	$sha_final_signature, %rdi
	movl	$393217, %esi           # imm = 0x60001
	callq	update_signature
	movabsq	$sha_final_signature, %rdi
	movq	%rbx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	shrq	$3, %rax
	andq	$63, %rax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	leal	1(%rcx), %edx
	movl	%edx, -12(%rbp)
	movslq	%ecx, %rcx
	movb	$-128, 56(%rax,%rcx)
	movl	-12(%rbp), %ebx
	movl	$393217, %esi           # imm = 0x60001
	callq	verify_signature
	cmpl	$56, %ebx
	jle	.LBB4_5
# BB#1:
	movabsq	$sha_final_signature, %rdi
	movl	$393218, %esi           # imm = 0x60002
	callq	update_signature
	movabsq	$sha_final_signature, %rbx
	movl	$64, %eax
	movq	-24(%rbp), %rcx
	addq	$56, %rcx
	movslq	-12(%rbp), %rdi
	addq	%rcx, %rdi
	subl	-12(%rbp), %eax
	movslq	%eax, %rdx
	xorl	%esi, %esi
	callq	memset
	movq	%rbx, %rdi
	movl	$393218, %esi           # imm = 0x60002
	callq	verify_signature
# BB#2:
	movabsq	$sha_final_signature, %rdi
	movl	$393219, %esi           # imm = 0x60003
	callq	update_signature
	movq	-24(%rbp), %rdi
	addq	$56, %rdi
	movl	$64, %esi
	callq	byte_reverse
	movabsq	$sha_final_signature, %rdi
	movl	$393219, %esi           # imm = 0x60003
	callq	verify_signature
# BB#3:
	movabsq	$sha_final_signature, %rdi
	movl	$393220, %esi           # imm = 0x60004
	callq	update_signature
	movq	-24(%rbp), %rdi
	callq	sha_transform
	movabsq	$sha_final_signature, %rdi
	movl	$393220, %esi           # imm = 0x60004
	callq	verify_signature
# BB#4:
	movabsq	$sha_final_signature, %rdi
	movl	$393221, %esi           # imm = 0x60005
	callq	update_signature
	movabsq	$sha_final_signature, %rbx
	movq	-24(%rbp), %rdi
	addq	$56, %rdi
	xorl	%esi, %esi
	movl	$56, %edx
	callq	memset
	movq	%rbx, %rdi
	movl	$393221, %esi           # imm = 0x60005
	callq	verify_signature
	jmp	.LBB4_6
.LBB4_5:
	movabsq	$sha_final_signature, %rdi
	movl	$393222, %esi           # imm = 0x60006
	callq	update_signature
	movabsq	$sha_final_signature, %rbx
	movl	$56, %eax
	movq	-24(%rbp), %rcx
	addq	$56, %rcx
	movslq	-12(%rbp), %rdi
	addq	%rcx, %rdi
	subl	-12(%rbp), %eax
	movslq	%eax, %rdx
	xorl	%esi, %esi
	callq	memset
	movq	%rbx, %rdi
	movl	$393222, %esi           # imm = 0x60006
	callq	verify_signature
.LBB4_6:
	movabsq	$sha_final_signature, %rdi
	movl	$393223, %esi           # imm = 0x60007
	callq	update_signature
	movq	-24(%rbp), %rdi
	addq	$56, %rdi
	movl	$64, %esi
	callq	byte_reverse
	movabsq	$sha_final_signature, %rdi
	movl	$393223, %esi           # imm = 0x60007
	callq	verify_signature
# BB#7:
	movabsq	$sha_final_signature, %rdi
	movl	$393224, %esi           # imm = 0x60008
	callq	update_signature
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 168(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 176(%rcx)
	movq	-24(%rbp), %rdi
	callq	sha_transform
	movabsq	$sha_final_signature, %rdi
	movl	$393224, %esi           # imm = 0x60008
	callq	verify_signature
# BB#8:
	movabsq	$sha_final_signature, %rdi
	movl	$393225, %esi           # imm = 0x60009
	callq	update_signature
	movabsq	$sha_final_signature, %rdi
	movl	$393225, %esi           # imm = 0x60009
	callq	verify_signature
	addq	$40, %rsp
	popq	%rbx
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
	pushq	%r14
	pushq	%rbx
	subq	$8224, %rsp             # imm = 0x2020
.Lcfi26:
	.cfi_offset %rbx, -32
.Lcfi27:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movabsq	$sha_stream_signature, %rdi
	movl	$524289, %esi           # imm = 0x80001
	callq	update_signature
	movq	%rbx, -24(%rbp)
	movq	%r14, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	sha_init
	movabsq	$sha_stream_signature, %rdi
	movl	$524289, %esi           # imm = 0x80001
	callq	verify_signature
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movabsq	$sha_stream_signature, %rdi
	movl	$524290, %esi           # imm = 0x80002
	callq	update_signature
	leaq	-8240(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	$1, %esi
	movl	$8192, %edx             # imm = 0x2000
	callq	fread
	movq	%rax, %rbx
	movabsq	$sha_stream_signature, %rdi
	movl	$524290, %esi           # imm = 0x80002
	callq	verify_signature
# BB#2:                                 #   in Loop: Header=BB5_1 Depth=1
	movabsq	$sha_stream_signature, %rdi
	movl	$524291, %esi           # imm = 0x80003
	callq	update_signature
	movabsq	$sha_stream_signature, %rdi
	movl	%ebx, -28(%rbp)
	movl	$524291, %esi           # imm = 0x80003
	callq	verify_signature
	cmpl	$0, %ebx
	jle	.LBB5_4
# BB#3:                                 #   in Loop: Header=BB5_1 Depth=1
	movabsq	$sha_stream_signature, %rdi
	movl	$524292, %esi           # imm = 0x80004
	callq	update_signature
	leaq	-8240(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %edx
	callq	sha_update
	movabsq	$sha_stream_signature, %rdi
	movl	$524292, %esi           # imm = 0x80004
	callq	verify_signature
	jmp	.LBB5_1
.LBB5_4:
	movabsq	$sha_stream_signature, %rdi
	movl	$524293, %esi           # imm = 0x80005
	callq	update_signature
	movq	-24(%rbp), %rdi
	callq	sha_final
	movabsq	$sha_stream_signature, %rdi
	movl	$524293, %esi           # imm = 0x80005
	callq	verify_signature
# BB#5:
	movabsq	$sha_stream_signature, %rdi
	movl	$524294, %esi           # imm = 0x80006
	callq	update_signature
	movabsq	$sha_stream_signature, %rdi
	movl	$524294, %esi           # imm = 0x80006
	callq	verify_signature
	addq	$8224, %rsp             # imm = 0x2020
	popq	%rbx
	popq	%r14
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
.Lcfi28:
	.cfi_def_cfa_offset 16
.Lcfi29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi30:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Lcfi31:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movabsq	$sha_print_signature, %rdi
	movl	$655361, %esi           # imm = 0xA0001
	callq	update_signature
	movabsq	$sha_print_signature, %rdi
	movq	%rbx, -16(%rbp)
	movl	$655361, %esi           # imm = 0xA0001
	callq	verify_signature
	addq	$8, %rsp
	popq	%rbx
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
.Lcfi32:
	.cfi_def_cfa_offset 16
.Lcfi33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi34:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$240, %rsp
.Lcfi35:
	.cfi_offset %rbx, -32
.Lcfi36:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movl	%edi, %ebx
	movabsq	$main_signature, %rdi
	movl	$720897, %esi           # imm = 0xB0001
	callq	update_signature
	leaq	-64(%rbp), %rdi
	movl	$0, -32(%rbp)
	movl	%ebx, -28(%rbp)
	movq	%r14, -72(%rbp)
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_signature, %rdi
	movl	$720897, %esi           # imm = 0xB0001
	callq	verify_signature
# BB#1:
	movabsq	$main_signature, %rdi
	movl	$720898, %esi           # imm = 0xB0002
	callq	update_signature
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.1, %rsi
	callq	fopen
	movq	%rax, %rbx
	movabsq	$main_signature, %rdi
	movl	$720898, %esi           # imm = 0xB0002
	callq	verify_signature
# BB#2:
	movabsq	$main_signature, %rdi
	movl	$720899, %esi           # imm = 0xB0003
	callq	update_signature
	leaq	-256(%rbp), %rdi
	movq	%rbx, -24(%rbp)
	movq	-24(%rbp), %rsi
	callq	sha_stream
	movabsq	$main_signature, %rdi
	movl	$720899, %esi           # imm = 0xB0003
	callq	verify_signature
# BB#3:
	movabsq	$main_signature, %rdi
	movl	$720900, %esi           # imm = 0xB0004
	callq	update_signature
	leaq	-256(%rbp), %rdi
	callq	sha_print
	movabsq	$main_signature, %rdi
	movl	$720900, %esi           # imm = 0xB0004
	callq	verify_signature
# BB#4:
	movabsq	$main_signature, %rdi
	movl	$720901, %esi           # imm = 0xB0005
	callq	update_signature
	movq	-24(%rbp), %rdi
	callq	fclose
	movabsq	$main_signature, %rdi
	movl	$720901, %esi           # imm = 0xB0005
	callq	verify_signature
# BB#5:
	movabsq	$main_signature, %rdi
	movl	$720902, %esi           # imm = 0xB0006
	callq	update_signature
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$main_signature, %rdi
	movl	$720902, %esi           # imm = 0xB0006
	callq	verify_signature
# BB#6:
	movabsq	$main_signature, %rdi
	movl	$720903, %esi           # imm = 0xB0007
	callq	update_signature
	leaq	-48(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_signature, %rdi
	movl	$720903, %esi           # imm = 0xB0007
	callq	verify_signature
# BB#7:
	movabsq	$main_signature, %rdi
	movl	$720904, %esi           # imm = 0xB0008
	callq	update_signature
	movabsq	$.L.str.3, %rdi
	movq	-48(%rbp), %rax
	subq	-64(%rbp), %rax
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	movq	-40(%rbp), %rsi
	subq	-56(%rbp), %rsi
	addq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movabsq	$main_signature, %rdi
	movl	$720904, %esi           # imm = 0xB0008
	callq	verify_signature
# BB#8:
	movabsq	$main_signature, %rdi
	movl	$720905, %esi           # imm = 0xB0009
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$1, is_signature_queue_full
	movl	$720905, %esi           # imm = 0xB0009
	callq	verify_signature
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
.Lcfi37:
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

	.type	sha_init_signature,@object # @sha_init_signature
	.bss
	.globl	sha_init_signature
	.p2align	2
sha_init_signature:
	.long	0                       # 0x0
	.size	sha_init_signature, 4

	.type	sha_update_signature,@object # @sha_update_signature
	.globl	sha_update_signature
	.p2align	2
sha_update_signature:
	.long	0                       # 0x0
	.size	sha_update_signature, 4

	.type	llvm.memcpy.p0i8.p0i8.i64_signature,@object # @llvm.memcpy.p0i8.p0i8.i64_signature
	.globl	llvm.memcpy.p0i8.p0i8.i64_signature
	.p2align	2
llvm.memcpy.p0i8.p0i8.i64_signature:
	.long	0                       # 0x0
	.size	llvm.memcpy.p0i8.p0i8.i64_signature, 4

	.type	byte_reverse_signature,@object # @byte_reverse_signature
	.globl	byte_reverse_signature
	.p2align	2
byte_reverse_signature:
	.long	0                       # 0x0
	.size	byte_reverse_signature, 4

	.type	sha_transform_signature,@object # @sha_transform_signature
	.globl	sha_transform_signature
	.p2align	2
sha_transform_signature:
	.long	0                       # 0x0
	.size	sha_transform_signature, 4

	.type	sha_final_signature,@object # @sha_final_signature
	.globl	sha_final_signature
	.p2align	2
sha_final_signature:
	.long	0                       # 0x0
	.size	sha_final_signature, 4

	.type	llvm.memset.p0i8.i64_signature,@object # @llvm.memset.p0i8.i64_signature
	.globl	llvm.memset.p0i8.i64_signature
	.p2align	2
llvm.memset.p0i8.i64_signature:
	.long	0                       # 0x0
	.size	llvm.memset.p0i8.i64_signature, 4

	.type	sha_stream_signature,@object # @sha_stream_signature
	.globl	sha_stream_signature
	.p2align	2
sha_stream_signature:
	.long	0                       # 0x0
	.size	sha_stream_signature, 4

	.type	fread_signature,@object # @fread_signature
	.globl	fread_signature
	.p2align	2
fread_signature:
	.long	0                       # 0x0
	.size	fread_signature, 4

	.type	sha_print_signature,@object # @sha_print_signature
	.globl	sha_print_signature
	.p2align	2
sha_print_signature:
	.long	0                       # 0x0
	.size	sha_print_signature, 4

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

	.type	fclose_signature,@object # @fclose_signature
	.globl	fclose_signature
	.p2align	2
fclose_signature:
	.long	0                       # 0x0
	.size	fclose_signature, 4

	.type	printf_signature,@object # @printf_signature
	.globl	printf_signature
	.p2align	2
printf_signature:
	.long	0                       # 0x0
	.size	printf_signature, 4

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
