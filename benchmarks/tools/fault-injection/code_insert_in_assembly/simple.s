	.text
	.file	"simple.c"
	.globl	sub_func1_3             # -- Begin function sub_func1_3
	.p2align	4, 0x90
	.type	sub_func1_3,@function
sub_func1_3:                            # @sub_func1_3
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
	subq	$16, %rsp
	movabsq	$.L.str, %rdi
	movl	$3, -4(%rbp)
	movb	$0, %al
	callq	printf
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sub_func1_3, .Lfunc_end0-sub_func1_3
	.cfi_endproc
                                        # -- End function
	.globl	sub_func1_2             # -- Begin function sub_func1_2
	.p2align	4, 0x90
	.type	sub_func1_2,@function
sub_func1_2:                            # @sub_func1_2
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
	subq	$16, %rsp
	movabsq	$.L.str, %rdi
	movl	$3, -4(%rbp)
	movb	$0, %al
	callq	printf
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	sub_func1_2, .Lfunc_end1-sub_func1_2
	.cfi_endproc
                                        # -- End function
	.globl	sub_func1_1             # -- Begin function sub_func1_1
	.p2align	4, 0x90
	.type	sub_func1_1,@function
sub_func1_1:                            # @sub_func1_1
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
	subq	$16, %rsp
	movabsq	$.L.str.1, %rdi
	movl	$3, -4(%rbp)
	movb	$0, %al
	callq	printf
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	sub_func1_1, .Lfunc_end2-sub_func1_1
	.cfi_endproc
                                        # -- End function
	.globl	sub_func2_2             # -- Begin function sub_func2_2
	.p2align	4, 0x90
	.type	sub_func2_2,@function
sub_func2_2:                            # @sub_func2_2
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
	subq	$16, %rsp
	movabsq	$.L.str.2, %rdi
	movl	$3, -4(%rbp)
	movb	$0, %al
	callq	printf
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	sub_func2_2, .Lfunc_end3-sub_func2_2
	.cfi_endproc
                                        # -- End function
	.globl	sub_func2_1             # -- Begin function sub_func2_1
	.p2align	4, 0x90
	.type	sub_func2_1,@function
sub_func2_1:                            # @sub_func2_1
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi12:
	.cfi_def_cfa_offset 16
.Lcfi13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi14:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.3, %rdi
	movl	$3, -4(%rbp)
	movb	$0, %al
	callq	printf
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	sub_func2_1, .Lfunc_end4-sub_func2_1
	.cfi_endproc
                                        # -- End function
	.globl	sub_func3_1             # -- Begin function sub_func3_1
	.p2align	4, 0x90
	.type	sub_func3_1,@function
sub_func3_1:                            # @sub_func3_1
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
	subq	$16, %rsp
	movabsq	$.L.str.4, %rdi
	movl	$3, -4(%rbp)
	movb	$0, %al
	callq	printf
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	sub_func3_1, .Lfunc_end5-sub_func3_1
	.cfi_endproc
                                        # -- End function
	.globl	sub_func4_4             # -- Begin function sub_func4_4
	.p2align	4, 0x90
	.type	sub_func4_4,@function
sub_func4_4:                            # @sub_func4_4
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
	subq	$16, %rsp
	movabsq	$.L.str.5, %rdi
	movl	$3, -4(%rbp)
	movb	$0, %al
	callq	printf
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	sub_func4_4, .Lfunc_end6-sub_func4_4
	.cfi_endproc
                                        # -- End function
	.globl	sub_func4_3             # -- Begin function sub_func4_3
	.p2align	4, 0x90
	.type	sub_func4_3,@function
sub_func4_3:                            # @sub_func4_3
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi21:
	.cfi_def_cfa_offset 16
.Lcfi22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi23:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.6, %rdi
	movl	$3, -4(%rbp)
	movb	$0, %al
	callq	printf
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	sub_func4_3, .Lfunc_end7-sub_func4_3
	.cfi_endproc
                                        # -- End function
	.globl	sub_func4_2             # -- Begin function sub_func4_2
	.p2align	4, 0x90
	.type	sub_func4_2,@function
sub_func4_2:                            # @sub_func4_2
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
	subq	$16, %rsp
	movabsq	$.L.str.7, %rdi
	movl	$3, -4(%rbp)
	movb	$0, %al
	callq	printf
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	sub_func4_2, .Lfunc_end8-sub_func4_2
	.cfi_endproc
                                        # -- End function
	.globl	sub_func4_1             # -- Begin function sub_func4_1
	.p2align	4, 0x90
	.type	sub_func4_1,@function
sub_func4_1:                            # @sub_func4_1
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
	subq	$16, %rsp
	movabsq	$.L.str.8, %rdi
	movl	$3, -4(%rbp)
	movb	$0, %al
	callq	printf
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	sub_func4_1, .Lfunc_end9-sub_func4_1
	.cfi_endproc
                                        # -- End function
	.globl	sub_func5_1             # -- Begin function sub_func5_1
	.p2align	4, 0x90
	.type	sub_func5_1,@function
sub_func5_1:                            # @sub_func5_1
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
	subq	$16, %rsp
	movabsq	$.L.str.9, %rdi
	movl	$3, -4(%rbp)
	movb	$0, %al
	callq	printf
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	sub_func5_1, .Lfunc_end10-sub_func5_1
	.cfi_endproc
                                        # -- End function
	.globl	sub_func5_2             # -- Begin function sub_func5_2
	.p2align	4, 0x90
	.type	sub_func5_2,@function
sub_func5_2:                            # @sub_func5_2
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi33:
	.cfi_def_cfa_offset 16
.Lcfi34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi35:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.10, %rdi
	movl	$3, -4(%rbp)
	movb	$0, %al
	callq	printf
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	sub_func5_2, .Lfunc_end11-sub_func5_2
	.cfi_endproc
                                        # -- End function
	.globl	sub_func5_3             # -- Begin function sub_func5_3
	.p2align	4, 0x90
	.type	sub_func5_3,@function
sub_func5_3:                            # @sub_func5_3
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi36:
	.cfi_def_cfa_offset 16
.Lcfi37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi38:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.11, %rdi
	movl	$3, -4(%rbp)
	movb	$0, %al
	callq	printf
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	sub_func5_3, .Lfunc_end12-sub_func5_3
	.cfi_endproc
                                        # -- End function
	.globl	sub_func5_4             # -- Begin function sub_func5_4
	.p2align	4, 0x90
	.type	sub_func5_4,@function
sub_func5_4:                            # @sub_func5_4
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi39:
	.cfi_def_cfa_offset 16
.Lcfi40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi41:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.12, %rdi
	movl	$3, -4(%rbp)
	movb	$0, %al
	callq	printf
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	sub_func5_4, .Lfunc_end13-sub_func5_4
	.cfi_endproc
                                        # -- End function
	.globl	sub_func5_5             # -- Begin function sub_func5_5
	.p2align	4, 0x90
	.type	sub_func5_5,@function
sub_func5_5:                            # @sub_func5_5
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi42:
	.cfi_def_cfa_offset 16
.Lcfi43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi44:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.13, %rdi
	movl	$3, -4(%rbp)
	movb	$0, %al
	callq	printf
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	sub_func5_5, .Lfunc_end14-sub_func5_5
	.cfi_endproc
                                        # -- End function
	.globl	sub_func6_1             # -- Begin function sub_func6_1
	.p2align	4, 0x90
	.type	sub_func6_1,@function
sub_func6_1:                            # @sub_func6_1
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi45:
	.cfi_def_cfa_offset 16
.Lcfi46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi47:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.14, %rdi
	movl	$3, -4(%rbp)
	movb	$0, %al
	callq	printf
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	sub_func6_1, .Lfunc_end15-sub_func6_1
	.cfi_endproc
                                        # -- End function
	.globl	func1                   # -- Begin function func1
	.p2align	4, 0x90
	.type	func1,@function
func1:                                  # @func1
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi48:
	.cfi_def_cfa_offset 16
.Lcfi49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi50:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.15, %rdi
	movb	$0, %al
	callq	printf
	movl	$3, -4(%rbp)
	callq	sub_func1_1
	callq	sub_func1_2
	callq	sub_func1_3
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	func1, .Lfunc_end16-func1
	.cfi_endproc
                                        # -- End function
	.globl	func2                   # -- Begin function func2
	.p2align	4, 0x90
	.type	func2,@function
func2:                                  # @func2
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi51:
	.cfi_def_cfa_offset 16
.Lcfi52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi53:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.16, %rdi
	movb	$0, %al
	callq	printf
	movl	$3, -4(%rbp)
	callq	sub_func2_1
	callq	sub_func2_2
	movl	$2, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	func2, .Lfunc_end17-func2
	.cfi_endproc
                                        # -- End function
	.globl	func3                   # -- Begin function func3
	.p2align	4, 0x90
	.type	func3,@function
func3:                                  # @func3
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi54:
	.cfi_def_cfa_offset 16
.Lcfi55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi56:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.17, %rdi
	movb	$0, %al
	callq	printf
	movl	$3, -4(%rbp)
	callq	sub_func3_1
	movl	$3, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	func3, .Lfunc_end18-func3
	.cfi_endproc
                                        # -- End function
	.globl	func4                   # -- Begin function func4
	.p2align	4, 0x90
	.type	func4,@function
func4:                                  # @func4
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi57:
	.cfi_def_cfa_offset 16
.Lcfi58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi59:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.18, %rdi
	movb	$0, %al
	callq	printf
	movl	$3, -4(%rbp)
	callq	sub_func4_1
	callq	sub_func4_2
	callq	sub_func4_3
	callq	sub_func4_4
	movl	$4, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	func4, .Lfunc_end19-func4
	.cfi_endproc
                                        # -- End function
	.globl	func5                   # -- Begin function func5
	.p2align	4, 0x90
	.type	func5,@function
func5:                                  # @func5
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi60:
	.cfi_def_cfa_offset 16
.Lcfi61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi62:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.19, %rdi
	movb	$0, %al
	callq	printf
	movl	$3, -4(%rbp)
	callq	sub_func5_1
	callq	sub_func5_2
	callq	sub_func5_3
	callq	sub_func5_4
	callq	sub_func5_5
	movl	$5, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	func5, .Lfunc_end20-func5
	.cfi_endproc
                                        # -- End function
	.globl	func6                   # -- Begin function func6
	.p2align	4, 0x90
	.type	func6,@function
func6:                                  # @func6
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi63:
	.cfi_def_cfa_offset 16
.Lcfi64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi65:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.20, %rdi
	movb	$0, %al
	callq	printf
	movl	$3, -4(%rbp)
	callq	sub_func6_1
	movl	$6, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	func6, .Lfunc_end21-func6
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi66:
	.cfi_def_cfa_offset 16
.Lcfi67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi68:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-48(%rbp), %rdi
	movl	$0, -8(%rbp)
	xorl	%esi, %esi
	callq	gettimeofday
	movl	$0, -4(%rbp)
.LBB22_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$100, -4(%rbp)
	jge	.LBB22_4
# BB#2:                                 #   in Loop: Header=BB22_1 Depth=1
	movabsq	$.L.str.21, %rdi
	movb	$0, %al
	callq	printf
	movl	$3, -12(%rbp)
	callq	func1
	callq	func2
	callq	func3
	callq	func4
	callq	func5
	callq	func6
# BB#3:                                 #   in Loop: Header=BB22_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB22_1
.LBB22_4:
	movabsq	$.L.str.22, %rdi
	movb	$0, %al
	callq	printf
	leaq	-32(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$.L.str.23, %rdi
	movl	$1000, %ecx             # imm = 0x3E8
	movq	-32(%rbp), %rax
	subq	-48(%rbp), %rax
	imulq	$1000, %rax, %rsi       # imm = 0x3E8
	movq	-24(%rbp), %rax
	subq	-40(%rbp), %rax
	cqto
	idivq	%rcx
	addq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movl	$1, is_signature_queue_full
	movl	-8(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	main, .Lfunc_end22-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" [target function] sub_func1_2\n"
	.size	.L.str, 32

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	" [target function] sub_func1_1\n"
	.size	.L.str.1, 32

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	" [target function] sub_func2_2\n"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	" [target function] sub_func2_1\n"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	" [target function] sub_func3_1\n"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	" [target function] sub_func4_4\n"
	.size	.L.str.5, 32

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	" [target function] sub_func4_3\n"
	.size	.L.str.6, 32

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	" [target function] sub_func4_2\n"
	.size	.L.str.7, 32

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	" [target function] sub_func4_1\n"
	.size	.L.str.8, 32

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	" [target function] sub_func5_1\n"
	.size	.L.str.9, 32

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	" [target function] sub_func5_2\n"
	.size	.L.str.10, 32

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	" [target function] sub_func5_3\n"
	.size	.L.str.11, 32

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	" [target function] sub_func5_4\n"
	.size	.L.str.12, 32

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	" [target function] sub_func5_5\n"
	.size	.L.str.13, 32

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	" [target function] sub_func6_1\n"
	.size	.L.str.14, 32

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	" [target function] func_1\n"
	.size	.L.str.15, 27

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	" [target function] func_2\n"
	.size	.L.str.16, 27

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	" [target function] func_3\n"
	.size	.L.str.17, 27

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	" [target function] func_4\n"
	.size	.L.str.18, 27

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	" [target function] func_5\n"
	.size	.L.str.19, 27

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	" [target function] func_6\n"
	.size	.L.str.20, 27

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	" [target function] main\n"
	.size	.L.str.21, 25

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	" [target finished!]\n"
	.size	.L.str.22, 21

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	" [target] Execution Time: %ld\n"
	.size	.L.str.23, 31


	.ident	"clang version 5.0.0 (tags/RELEASE_500/final)"
	.section	".note.GNU-stack","",@progbits
