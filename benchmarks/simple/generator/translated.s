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
	subq	$32, %rsp
	movabsq	$sub_func1_3_signature, %rdi
	movl	$65537, %esi            # imm = 0x10001
	callq	update_signature
	movabsq	$sub_func1_3_signature, %rdi
	movl	$3, -4(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$65537, %esi            # imm = 0x10001
	callq	verify_signature
	movl	$1, %eax
	addq	$32, %rsp
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
	subq	$32, %rsp
	movabsq	$sub_func1_2_signature, %rdi
	movl	$131073, %esi           # imm = 0x20001
	callq	update_signature
	movabsq	$sub_func1_2_signature, %rdi
	movl	$3, -4(%rbp)
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-16(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	$2, -16(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -12(%rbp)
	movl	$5, -20(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -12(%rbp)
	movl	$131073, %esi           # imm = 0x20001
	callq	verify_signature
	movl	$1, %eax
	addq	$32, %rsp
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
	subq	$32, %rsp
	movabsq	$sub_func1_1_signature, %rdi
	movl	$196609, %esi           # imm = 0x30001
	callq	update_signature
	movabsq	$sub_func1_1_signature, %rdi
	movl	$3, -4(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$196609, %esi           # imm = 0x30001
	callq	verify_signature
	movl	$1, %eax
	addq	$32, %rsp
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
	subq	$32, %rsp
	movabsq	$sub_func2_2_signature, %rdi
	movl	$262145, %esi           # imm = 0x40001
	callq	update_signature
	movabsq	$sub_func2_2_signature, %rdi
	movl	$3, -4(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$262145, %esi           # imm = 0x40001
	callq	verify_signature
	movl	$1, %eax
	addq	$32, %rsp
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
	subq	$32, %rsp
	movabsq	$sub_func2_1_signature, %rdi
	movl	$327681, %esi           # imm = 0x50001
	callq	update_signature
	movabsq	$sub_func2_1_signature, %rdi
	movl	$3, -4(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$327681, %esi           # imm = 0x50001
	callq	verify_signature
	movl	$1, %eax
	addq	$32, %rsp
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
	subq	$32, %rsp
	movabsq	$sub_func3_1_signature, %rdi
	movl	$393217, %esi           # imm = 0x60001
	callq	update_signature
	movabsq	$sub_func3_1_signature, %rdi
	movl	$3, -4(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$393217, %esi           # imm = 0x60001
	callq	verify_signature
	movl	$1, %eax
	addq	$32, %rsp
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
	subq	$32, %rsp
	movabsq	$sub_func4_4_signature, %rdi
	movl	$458753, %esi           # imm = 0x70001
	callq	update_signature
	movabsq	$sub_func4_4_signature, %rdi
	movl	$3, -4(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$458753, %esi           # imm = 0x70001
	callq	verify_signature
	movl	$1, %eax
	addq	$32, %rsp
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
	subq	$32, %rsp
	movabsq	$sub_func4_3_signature, %rdi
	movl	$524289, %esi           # imm = 0x80001
	callq	update_signature
	movabsq	$sub_func4_3_signature, %rdi
	movl	$3, -4(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$524289, %esi           # imm = 0x80001
	callq	verify_signature
	movl	$1, %eax
	addq	$32, %rsp
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
	subq	$32, %rsp
	movabsq	$sub_func4_2_signature, %rdi
	movl	$589825, %esi           # imm = 0x90001
	callq	update_signature
	movabsq	$sub_func4_2_signature, %rdi
	movl	$3, -4(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$589825, %esi           # imm = 0x90001
	callq	verify_signature
	movl	$1, %eax
	addq	$32, %rsp
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
	subq	$32, %rsp
	movabsq	$sub_func4_1_signature, %rdi
	movl	$655361, %esi           # imm = 0xA0001
	callq	update_signature
	movabsq	$sub_func4_1_signature, %rdi
	movl	$3, -4(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$655361, %esi           # imm = 0xA0001
	callq	verify_signature
	movl	$1, %eax
	addq	$32, %rsp
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
	subq	$32, %rsp
	movabsq	$sub_func5_1_signature, %rdi
	movl	$720897, %esi           # imm = 0xB0001
	callq	update_signature
	movabsq	$sub_func5_1_signature, %rdi
	movl	$3, -4(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$720897, %esi           # imm = 0xB0001
	callq	verify_signature
	movl	$1, %eax
	addq	$32, %rsp
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
	subq	$32, %rsp
	movabsq	$sub_func5_2_signature, %rdi
	movl	$786433, %esi           # imm = 0xC0001
	callq	update_signature
	movabsq	$sub_func5_2_signature, %rdi
	movl	$3, -4(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$786433, %esi           # imm = 0xC0001
	callq	verify_signature
	movl	$1, %eax
	addq	$32, %rsp
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
	subq	$32, %rsp
	movabsq	$sub_func5_3_signature, %rdi
	movl	$851969, %esi           # imm = 0xD0001
	callq	update_signature
	movabsq	$sub_func5_3_signature, %rdi
	movl	$3, -4(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$851969, %esi           # imm = 0xD0001
	callq	verify_signature
	movl	$1, %eax
	addq	$32, %rsp
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
	subq	$32, %rsp
	movabsq	$sub_func5_4_signature, %rdi
	movl	$917505, %esi           # imm = 0xE0001
	callq	update_signature
	movabsq	$sub_func5_4_signature, %rdi
	movl	$3, -4(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$917505, %esi           # imm = 0xE0001
	callq	verify_signature
	movl	$1, %eax
	addq	$32, %rsp
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
	subq	$32, %rsp
	movabsq	$sub_func5_5_signature, %rdi
	movl	$983041, %esi           # imm = 0xF0001
	callq	update_signature
	movabsq	$sub_func5_5_signature, %rdi
	movl	$3, -4(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$983041, %esi           # imm = 0xF0001
	callq	verify_signature
	movl	$1, %eax
	addq	$32, %rsp
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
	subq	$32, %rsp
	movabsq	$sub_func6_1_signature, %rdi
	movl	$1048577, %esi          # imm = 0x100001
	callq	update_signature
	movabsq	$sub_func6_1_signature, %rdi
	movl	$3, -4(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$1048577, %esi          # imm = 0x100001
	callq	verify_signature
	movl	$1, %eax
	addq	$32, %rsp
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
	subq	$32, %rsp
	movabsq	$func1_signature, %rdi
	movl	$1114113, %esi          # imm = 0x110001
	callq	update_signature
	movl	$3, -4(%rbp)
	callq	sub_func1_1
	movabsq	$func1_signature, %rdi
	movl	$1114113, %esi          # imm = 0x110001
	callq	verify_signature
# BB#1:
	movabsq	$func1_signature, %rdi
	movl	$1114114, %esi          # imm = 0x110002
	callq	update_signature
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	callq	sub_func1_2
	movabsq	$func1_signature, %rdi
	movl	$1114114, %esi          # imm = 0x110002
	callq	verify_signature
# BB#2:
	movabsq	$func1_signature, %rdi
	movl	$1114115, %esi          # imm = 0x110003
	callq	update_signature
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	callq	sub_func1_3
	movabsq	$func1_signature, %rdi
	movl	$1114115, %esi          # imm = 0x110003
	callq	verify_signature
# BB#3:
	movabsq	$func1_signature, %rdi
	movl	$1114116, %esi          # imm = 0x110004
	callq	update_signature
	movabsq	$func1_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$1114116, %esi          # imm = 0x110004
	callq	verify_signature
	movl	$1, %eax
	addq	$32, %rsp
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
	subq	$32, %rsp
	movabsq	$func2_signature, %rdi
	movl	$1179649, %esi          # imm = 0x120001
	callq	update_signature
	movl	$3, -4(%rbp)
	callq	sub_func2_1
	movabsq	$func2_signature, %rdi
	movl	$1179649, %esi          # imm = 0x120001
	callq	verify_signature
# BB#1:
	movabsq	$func2_signature, %rdi
	movl	$1179650, %esi          # imm = 0x120002
	callq	update_signature
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	callq	sub_func2_2
	movabsq	$func2_signature, %rdi
	movl	$1179650, %esi          # imm = 0x120002
	callq	verify_signature
# BB#2:
	movabsq	$func2_signature, %rdi
	movl	$1179651, %esi          # imm = 0x120003
	callq	update_signature
	movabsq	$func2_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$1179651, %esi          # imm = 0x120003
	callq	verify_signature
	movl	$2, %eax
	addq	$32, %rsp
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
	subq	$32, %rsp
	movabsq	$func3_signature, %rdi
	movl	$1245185, %esi          # imm = 0x130001
	callq	update_signature
	movl	$3, -4(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	callq	sub_func3_1
	movabsq	$func3_signature, %rdi
	movl	$1245185, %esi          # imm = 0x130001
	callq	verify_signature
# BB#1:
	movabsq	$func3_signature, %rdi
	movl	$1245186, %esi          # imm = 0x130002
	callq	update_signature
	movabsq	$func3_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$1245186, %esi          # imm = 0x130002
	callq	verify_signature
	movl	$3, %eax
	addq	$32, %rsp
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
	subq	$32, %rsp
	movabsq	$func4_signature, %rdi
	movl	$1310721, %esi          # imm = 0x140001
	callq	update_signature
	movl	$3, -4(%rbp)
	callq	sub_func4_1
	movabsq	$func4_signature, %rdi
	movl	$1310721, %esi          # imm = 0x140001
	callq	verify_signature
# BB#1:
	movabsq	$func4_signature, %rdi
	movl	$1310722, %esi          # imm = 0x140002
	callq	update_signature
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	callq	sub_func4_2
	movabsq	$func4_signature, %rdi
	movl	$1310722, %esi          # imm = 0x140002
	callq	verify_signature
# BB#2:
	movabsq	$func4_signature, %rdi
	movl	$1310723, %esi          # imm = 0x140003
	callq	update_signature
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	callq	sub_func4_3
	movabsq	$func4_signature, %rdi
	movl	$1310723, %esi          # imm = 0x140003
	callq	verify_signature
# BB#3:
	movabsq	$func4_signature, %rdi
	movl	$1310724, %esi          # imm = 0x140004
	callq	update_signature
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	callq	sub_func4_4
	movabsq	$func4_signature, %rdi
	movl	$1310724, %esi          # imm = 0x140004
	callq	verify_signature
# BB#4:
	movabsq	$func4_signature, %rdi
	movl	$1310725, %esi          # imm = 0x140005
	callq	update_signature
	movabsq	$func4_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$1310725, %esi          # imm = 0x140005
	callq	verify_signature
	movl	$4, %eax
	addq	$32, %rsp
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
	subq	$32, %rsp
	movabsq	$func5_signature, %rdi
	movl	$1376257, %esi          # imm = 0x150001
	callq	update_signature
	movl	$3, -4(%rbp)
	callq	sub_func5_1
	movabsq	$func5_signature, %rdi
	movl	$1376257, %esi          # imm = 0x150001
	callq	verify_signature
# BB#1:
	movabsq	$func5_signature, %rdi
	movl	$1376258, %esi          # imm = 0x150002
	callq	update_signature
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	callq	sub_func5_2
	movabsq	$func5_signature, %rdi
	movl	$1376258, %esi          # imm = 0x150002
	callq	verify_signature
# BB#2:
	movabsq	$func5_signature, %rdi
	movl	$1376259, %esi          # imm = 0x150003
	callq	update_signature
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	callq	sub_func5_3
	movabsq	$func5_signature, %rdi
	movl	$1376259, %esi          # imm = 0x150003
	callq	verify_signature
# BB#3:
	movabsq	$func5_signature, %rdi
	movl	$1376260, %esi          # imm = 0x150004
	callq	update_signature
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	callq	sub_func5_4
	movabsq	$func5_signature, %rdi
	movl	$1376260, %esi          # imm = 0x150004
	callq	verify_signature
# BB#4:
	movabsq	$func5_signature, %rdi
	movl	$1376261, %esi          # imm = 0x150005
	callq	update_signature
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	callq	sub_func5_5
	movabsq	$func5_signature, %rdi
	movl	$1376261, %esi          # imm = 0x150005
	callq	verify_signature
# BB#5:
	movabsq	$func5_signature, %rdi
	movl	$1376262, %esi          # imm = 0x150006
	callq	update_signature
	movabsq	$func5_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$1376262, %esi          # imm = 0x150006
	callq	verify_signature
	movl	$5, %eax
	addq	$32, %rsp
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
	subq	$32, %rsp
	movabsq	$func6_signature, %rdi
	movl	$1441793, %esi          # imm = 0x160001
	callq	update_signature
	movl	$3, -4(%rbp)
	callq	sub_func6_1
	movabsq	$func6_signature, %rdi
	movl	$1441793, %esi          # imm = 0x160001
	callq	verify_signature
# BB#1:
	movabsq	$func6_signature, %rdi
	movl	$1441794, %esi          # imm = 0x160002
	callq	update_signature
	movabsq	$func6_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$1441794, %esi          # imm = 0x160002
	callq	verify_signature
	movl	$6, %eax
	addq	$32, %rsp
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
	pushq	%rbx
	subq	$72, %rsp
.Lcfi69:
	.cfi_offset %rbx, -24
	movabsq	$main_signature, %rdi
	movl	$1507329, %esi          # imm = 0x170001
	callq	update_signature
	leaq	-72(%rbp), %rdi
	movl	$0, -40(%rbp)
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_signature, %rdi
	movl	$1507329, %esi          # imm = 0x170001
	callq	verify_signature
# BB#1:
	movabsq	$main_signature, %rdi
	movl	$1507330, %esi          # imm = 0x170002
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$0, -36(%rbp)
	movl	$1507330, %esi          # imm = 0x170002
	callq	verify_signature
.LBB22_2:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_signature, %rdi
	movl	$1507331, %esi          # imm = 0x170003
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-36(%rbp), %ebx
	movl	$1507331, %esi          # imm = 0x170003
	callq	verify_signature
	cmpl	$5000, %ebx             # imm = 0x1388
	jge	.LBB22_11
# BB#3:                                 #   in Loop: Header=BB22_2 Depth=1
	movabsq	$main_signature, %rdi
	movl	$1507332, %esi          # imm = 0x170004
	callq	update_signature
	movl	$3, -12(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$2, -20(%rbp)
	movl	-12(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -24(%rbp)
	movl	$5, -32(%rbp)
	movl	$1, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -12(%rbp)
	movl	$3, -16(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	callq	func1
	movabsq	$main_signature, %rdi
	movl	$1507332, %esi          # imm = 0x170004
	callq	verify_signature
# BB#4:                                 #   in Loop: Header=BB22_2 Depth=1
	movabsq	$main_signature, %rdi
	movl	$1507333, %esi          # imm = 0x170005
	callq	update_signature
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$2, -20(%rbp)
	movl	-12(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -24(%rbp)
	movl	$5, -32(%rbp)
	movl	$1, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -12(%rbp)
	movl	$3, -16(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	callq	func2
	movabsq	$main_signature, %rdi
	movl	$1507333, %esi          # imm = 0x170005
	callq	verify_signature
# BB#5:                                 #   in Loop: Header=BB22_2 Depth=1
	movabsq	$main_signature, %rdi
	movl	$1507334, %esi          # imm = 0x170006
	callq	update_signature
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$2, -20(%rbp)
	movl	-12(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -24(%rbp)
	movl	$5, -32(%rbp)
	movl	$1, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -12(%rbp)
	movl	$3, -16(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	callq	func3
	movabsq	$main_signature, %rdi
	movl	$1507334, %esi          # imm = 0x170006
	callq	verify_signature
# BB#6:                                 #   in Loop: Header=BB22_2 Depth=1
	movabsq	$main_signature, %rdi
	movl	$1507335, %esi          # imm = 0x170007
	callq	update_signature
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$2, -20(%rbp)
	movl	-12(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -24(%rbp)
	movl	$5, -32(%rbp)
	movl	$1, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -12(%rbp)
	movl	$3, -16(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	callq	func4
	movabsq	$main_signature, %rdi
	movl	$1507335, %esi          # imm = 0x170007
	callq	verify_signature
# BB#7:                                 #   in Loop: Header=BB22_2 Depth=1
	movabsq	$main_signature, %rdi
	movl	$1507336, %esi          # imm = 0x170008
	callq	update_signature
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$2, -20(%rbp)
	movl	-12(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -24(%rbp)
	movl	$5, -32(%rbp)
	movl	$1, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -12(%rbp)
	movl	$3, -16(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	callq	func5
	movabsq	$main_signature, %rdi
	movl	$1507336, %esi          # imm = 0x170008
	callq	verify_signature
# BB#8:                                 #   in Loop: Header=BB22_2 Depth=1
	movabsq	$main_signature, %rdi
	movl	$1507337, %esi          # imm = 0x170009
	callq	update_signature
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$2, -20(%rbp)
	movl	-12(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -24(%rbp)
	movl	$5, -32(%rbp)
	movl	$1, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -12(%rbp)
	movl	$3, -16(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	callq	func6
	movabsq	$main_signature, %rdi
	movl	$1507337, %esi          # imm = 0x170009
	callq	verify_signature
# BB#9:                                 #   in Loop: Header=BB22_2 Depth=1
	movabsq	$main_signature, %rdi
	movl	$1507338, %esi          # imm = 0x17000A
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$2, -20(%rbp)
	movl	-12(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -24(%rbp)
	movl	$5, -32(%rbp)
	movl	$1, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -12(%rbp)
	movl	$3, -16(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$1507338, %esi          # imm = 0x17000A
	callq	verify_signature
# BB#10:                                #   in Loop: Header=BB22_2 Depth=1
	movabsq	$main_signature, %rdi
	movl	$1507339, %esi          # imm = 0x17000B
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	$1507339, %esi          # imm = 0x17000B
	callq	verify_signature
	jmp	.LBB22_2
.LBB22_11:
	movabsq	$main_signature, %rdi
	movl	$1507340, %esi          # imm = 0x17000C
	callq	update_signature
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$main_signature, %rdi
	movl	$1507340, %esi          # imm = 0x17000C
	callq	verify_signature
# BB#12:
	movabsq	$main_signature, %rdi
	movl	$1507341, %esi          # imm = 0x17000D
	callq	update_signature
	leaq	-56(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_signature, %rdi
	movl	$1507341, %esi          # imm = 0x17000D
	callq	verify_signature
# BB#13:
	movabsq	$main_signature, %rdi
	movl	$1507342, %esi          # imm = 0x17000E
	callq	update_signature
	movabsq	$.L.str.1, %rdi
	movq	-56(%rbp), %rax
	subq	-72(%rbp), %rax
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	movq	-48(%rbp), %rsi
	subq	-64(%rbp), %rsi
	addq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movabsq	$main_signature, %rdi
	movl	$1507342, %esi          # imm = 0x17000E
	callq	verify_signature
# BB#14:
	movabsq	$main_signature, %rdi
	movl	$1507343, %esi          # imm = 0x17000F
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$1, is_signature_queue_full
	movl	-40(%rbp), %ebx
	movl	$1507343, %esi          # imm = 0x17000F
	callq	verify_signature
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end22:
	.size	main, .Lfunc_end22-main
	.cfi_endproc
                                        # -- End function
	.globl	CallcheckerSet          # -- Begin function CallcheckerSet
	.p2align	4, 0x90
	.type	CallcheckerSet,@function
CallcheckerSet:                         # @CallcheckerSet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi70:
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
.Lfunc_end23:
	.size	CallcheckerSet, .Lfunc_end23-CallcheckerSet
	.cfi_endproc
                                        # -- End function
	.type	global_value1,@object   # @global_value1
	.bss
	.globl	global_value1
	.p2align	2
global_value1:
	.long	0                       # 0x0
	.size	global_value1, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" [target finished!]\n"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	" [target] Execution Time: %ld\n"
	.size	.L.str.1, 31

	.type	sub_func1_3_signature,@object # @sub_func1_3_signature
	.bss
	.globl	sub_func1_3_signature
	.p2align	2
sub_func1_3_signature:
	.long	0                       # 0x0
	.size	sub_func1_3_signature, 4

	.type	sub_func1_2_signature,@object # @sub_func1_2_signature
	.globl	sub_func1_2_signature
	.p2align	2
sub_func1_2_signature:
	.long	0                       # 0x0
	.size	sub_func1_2_signature, 4

	.type	sub_func1_1_signature,@object # @sub_func1_1_signature
	.globl	sub_func1_1_signature
	.p2align	2
sub_func1_1_signature:
	.long	0                       # 0x0
	.size	sub_func1_1_signature, 4

	.type	sub_func2_2_signature,@object # @sub_func2_2_signature
	.globl	sub_func2_2_signature
	.p2align	2
sub_func2_2_signature:
	.long	0                       # 0x0
	.size	sub_func2_2_signature, 4

	.type	sub_func2_1_signature,@object # @sub_func2_1_signature
	.globl	sub_func2_1_signature
	.p2align	2
sub_func2_1_signature:
	.long	0                       # 0x0
	.size	sub_func2_1_signature, 4

	.type	sub_func3_1_signature,@object # @sub_func3_1_signature
	.globl	sub_func3_1_signature
	.p2align	2
sub_func3_1_signature:
	.long	0                       # 0x0
	.size	sub_func3_1_signature, 4

	.type	sub_func4_4_signature,@object # @sub_func4_4_signature
	.globl	sub_func4_4_signature
	.p2align	2
sub_func4_4_signature:
	.long	0                       # 0x0
	.size	sub_func4_4_signature, 4

	.type	sub_func4_3_signature,@object # @sub_func4_3_signature
	.globl	sub_func4_3_signature
	.p2align	2
sub_func4_3_signature:
	.long	0                       # 0x0
	.size	sub_func4_3_signature, 4

	.type	sub_func4_2_signature,@object # @sub_func4_2_signature
	.globl	sub_func4_2_signature
	.p2align	2
sub_func4_2_signature:
	.long	0                       # 0x0
	.size	sub_func4_2_signature, 4

	.type	sub_func4_1_signature,@object # @sub_func4_1_signature
	.globl	sub_func4_1_signature
	.p2align	2
sub_func4_1_signature:
	.long	0                       # 0x0
	.size	sub_func4_1_signature, 4

	.type	sub_func5_1_signature,@object # @sub_func5_1_signature
	.globl	sub_func5_1_signature
	.p2align	2
sub_func5_1_signature:
	.long	0                       # 0x0
	.size	sub_func5_1_signature, 4

	.type	sub_func5_2_signature,@object # @sub_func5_2_signature
	.globl	sub_func5_2_signature
	.p2align	2
sub_func5_2_signature:
	.long	0                       # 0x0
	.size	sub_func5_2_signature, 4

	.type	sub_func5_3_signature,@object # @sub_func5_3_signature
	.globl	sub_func5_3_signature
	.p2align	2
sub_func5_3_signature:
	.long	0                       # 0x0
	.size	sub_func5_3_signature, 4

	.type	sub_func5_4_signature,@object # @sub_func5_4_signature
	.globl	sub_func5_4_signature
	.p2align	2
sub_func5_4_signature:
	.long	0                       # 0x0
	.size	sub_func5_4_signature, 4

	.type	sub_func5_5_signature,@object # @sub_func5_5_signature
	.globl	sub_func5_5_signature
	.p2align	2
sub_func5_5_signature:
	.long	0                       # 0x0
	.size	sub_func5_5_signature, 4

	.type	sub_func6_1_signature,@object # @sub_func6_1_signature
	.globl	sub_func6_1_signature
	.p2align	2
sub_func6_1_signature:
	.long	0                       # 0x0
	.size	sub_func6_1_signature, 4

	.type	func1_signature,@object # @func1_signature
	.globl	func1_signature
	.p2align	2
func1_signature:
	.long	0                       # 0x0
	.size	func1_signature, 4

	.type	func2_signature,@object # @func2_signature
	.globl	func2_signature
	.p2align	2
func2_signature:
	.long	0                       # 0x0
	.size	func2_signature, 4

	.type	func3_signature,@object # @func3_signature
	.globl	func3_signature
	.p2align	2
func3_signature:
	.long	0                       # 0x0
	.size	func3_signature, 4

	.type	func4_signature,@object # @func4_signature
	.globl	func4_signature
	.p2align	2
func4_signature:
	.long	0                       # 0x0
	.size	func4_signature, 4

	.type	func5_signature,@object # @func5_signature
	.globl	func5_signature
	.p2align	2
func5_signature:
	.long	0                       # 0x0
	.size	func5_signature, 4

	.type	func6_signature,@object # @func6_signature
	.globl	func6_signature
	.p2align	2
func6_signature:
	.long	0                       # 0x0
	.size	func6_signature, 4

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
	.section	".note.GNU-stack","",@progbits
