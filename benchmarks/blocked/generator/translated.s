	.text
	.file	"blocked.c"
	.globl	calculation_type_A      # -- Begin function calculation_type_A
	.p2align	4, 0x90
	.type	calculation_type_A,@function
calculation_type_A:                     # @calculation_type_A
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
	movabsq	$calculation_type_A_signature, %rdi
	movl	$65537, %esi            # imm = 0x10001
	callq	update_signature
	movabsq	$calculation_type_A_signature, %rdi
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$65537, %esi            # imm = 0x10001
	callq	verify_signature
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movabsq	$calculation_type_A_signature, %rdi
	movl	$65538, %esi            # imm = 0x10002
	callq	update_signature
	movabsq	$calculation_type_A_signature, %rdi
	movl	-16(%rbp), %ebx
	movl	$65538, %esi            # imm = 0x10002
	callq	verify_signature
	cmpl	$30, %ebx
	jge	.LBB0_4
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	movabsq	$calculation_type_A_signature, %rdi
	movl	$65539, %esi            # imm = 0x10003
	callq	update_signature
	movabsq	$calculation_type_A_signature, %rdi
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	$65539, %esi            # imm = 0x10003
	callq	verify_signature
# BB#3:                                 #   in Loop: Header=BB0_1 Depth=1
	movabsq	$calculation_type_A_signature, %rdi
	movl	$65540, %esi            # imm = 0x10004
	callq	update_signature
	movabsq	$calculation_type_A_signature, %rdi
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	$65540, %esi            # imm = 0x10004
	callq	verify_signature
	jmp	.LBB0_1
.LBB0_4:
	movabsq	$calculation_type_A_signature, %rdi
	movl	$65541, %esi            # imm = 0x10005
	callq	update_signature
	movabsq	$calculation_type_A_signature, %rdi
	movl	$65541, %esi            # imm = 0x10005
	callq	verify_signature
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	calculation_type_A, .Lfunc_end0-calculation_type_A
	.cfi_endproc
                                        # -- End function
	.globl	calculation_type_B      # -- Begin function calculation_type_B
	.p2align	4, 0x90
	.type	calculation_type_B,@function
calculation_type_B:                     # @calculation_type_B
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
	pushq	%rbx
	pushq	%rax
.Lcfi7:
	.cfi_offset %rbx, -24
	movabsq	$calculation_type_B_signature, %rdi
	movl	$131073, %esi           # imm = 0x20001
	callq	update_signature
	movabsq	$calculation_type_B_signature, %rdi
	movl	$1, -16(%rbp)
	movl	$1, -12(%rbp)
	movl	$131073, %esi           # imm = 0x20001
	callq	verify_signature
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movabsq	$calculation_type_B_signature, %rdi
	movl	$131074, %esi           # imm = 0x20002
	callq	update_signature
	movabsq	$calculation_type_B_signature, %rdi
	movl	-12(%rbp), %ebx
	movl	$131074, %esi           # imm = 0x20002
	callq	verify_signature
	cmpl	$50, %ebx
	jge	.LBB1_4
# BB#2:                                 #   in Loop: Header=BB1_1 Depth=1
	movabsq	$calculation_type_B_signature, %rdi
	movl	$131075, %esi           # imm = 0x20003
	callq	update_signature
	movabsq	$calculation_type_B_signature, %rdi
	movl	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	movl	$131075, %esi           # imm = 0x20003
	callq	verify_signature
# BB#3:                                 #   in Loop: Header=BB1_1 Depth=1
	movabsq	$calculation_type_B_signature, %rdi
	movl	$131076, %esi           # imm = 0x20004
	callq	update_signature
	movabsq	$calculation_type_B_signature, %rdi
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	$131076, %esi           # imm = 0x20004
	callq	verify_signature
	jmp	.LBB1_1
.LBB1_4:
	movabsq	$calculation_type_B_signature, %rdi
	movl	$131077, %esi           # imm = 0x20005
	callq	update_signature
	movabsq	$calculation_type_B_signature, %rdi
	movl	$131077, %esi           # imm = 0x20005
	callq	verify_signature
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	calculation_type_B, .Lfunc_end1-calculation_type_B
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$96, %rsp
.Lcfi11:
	.cfi_offset %rbx, -32
.Lcfi12:
	.cfi_offset %r14, -24
	movabsq	$main_signature, %rdi
	movl	$196609, %esi           # imm = 0x30001
	callq	update_signature
	leaq	-88(%rbp), %rdi
	movl	$0, -52(%rbp)
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_signature, %rdi
	movl	$196609, %esi           # imm = 0x30001
	callq	verify_signature
# BB#1:
	movabsq	$main_signature, %rdi
	movl	$196610, %esi           # imm = 0x30002
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$50, -28(%rbp)
	movl	$0, -24(%rbp)
	movl	$196610, %esi           # imm = 0x30002
	callq	verify_signature
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	movabsq	$main_signature, %rdi
	movl	$196611, %esi           # imm = 0x30003
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-24(%rbp), %r14d
	movl	-28(%rbp), %ebx
	movl	$196611, %esi           # imm = 0x30003
	callq	verify_signature
	cmpl	%ebx, %r14d
	jge	.LBB2_21
# BB#3:                                 #   in Loop: Header=BB2_2 Depth=1
	movabsq	$main_signature, %rdi
	movl	$196612, %esi           # imm = 0x30004
	callq	update_signature
	callq	calculation_type_A
	movabsq	$main_signature, %rdi
	movl	$196612, %esi           # imm = 0x30004
	callq	verify_signature
# BB#4:                                 #   in Loop: Header=BB2_2 Depth=1
	movabsq	$main_signature, %rdi
	movl	$196613, %esi           # imm = 0x30005
	callq	update_signature
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.1, %rsi
	callq	fopen
	movq	%rax, %rbx
	movabsq	$main_signature, %rdi
	movl	$196613, %esi           # imm = 0x30005
	callq	verify_signature
# BB#5:                                 #   in Loop: Header=BB2_2 Depth=1
	movabsq	$main_signature, %rdi
	movl	$196614, %esi           # imm = 0x30006
	callq	update_signature
	movq	%rbx, -48(%rbp)
	callq	calculation_type_B
	movabsq	$main_signature, %rdi
	movl	$196614, %esi           # imm = 0x30006
	callq	verify_signature
# BB#6:                                 #   in Loop: Header=BB2_2 Depth=1
	movabsq	$main_signature, %rdi
	movl	$196615, %esi           # imm = 0x30007
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$0, -20(%rbp)
	movl	$196615, %esi           # imm = 0x30007
	callq	verify_signature
.LBB2_7:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_signature, %rdi
	movl	$196616, %esi           # imm = 0x30008
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %ebx
	movl	$196616, %esi           # imm = 0x30008
	callq	verify_signature
	cmpl	$50, %ebx
	jge	.LBB2_18
# BB#8:                                 #   in Loop: Header=BB2_7 Depth=2
	movabsq	$main_signature, %rdi
	movl	$196617, %esi           # imm = 0x30009
	callq	update_signature
	callq	calculation_type_B
	movabsq	$main_signature, %rdi
	movl	$196617, %esi           # imm = 0x30009
	callq	verify_signature
# BB#9:                                 #   in Loop: Header=BB2_7 Depth=2
	movabsq	$main_signature, %rdi
	movl	$196618, %esi           # imm = 0x3000A
	callq	update_signature
	leaq	-112(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movl	$20, %esi
	callq	fgets
	movabsq	$main_signature, %rdi
	movl	$196618, %esi           # imm = 0x3000A
	callq	verify_signature
# BB#10:                                #   in Loop: Header=BB2_7 Depth=2
	movabsq	$main_signature, %rdi
	movl	$196619, %esi           # imm = 0x3000B
	callq	update_signature
	callq	calculation_type_A
	movabsq	$main_signature, %rdi
	movl	$196619, %esi           # imm = 0x3000B
	callq	verify_signature
# BB#11:                                #   in Loop: Header=BB2_7 Depth=2
	movabsq	$main_signature, %rdi
	movl	$196620, %esi           # imm = 0x3000C
	callq	update_signature
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	callq	fopen
	movq	%rax, %rbx
	movabsq	$main_signature, %rdi
	movl	$196620, %esi           # imm = 0x3000C
	callq	verify_signature
# BB#12:                                #   in Loop: Header=BB2_7 Depth=2
	movabsq	$main_signature, %rdi
	movl	$196621, %esi           # imm = 0x3000D
	callq	update_signature
	movq	%rbx, -40(%rbp)
	callq	calculation_type_B
	movabsq	$main_signature, %rdi
	movl	$196621, %esi           # imm = 0x3000D
	callq	verify_signature
# BB#13:                                #   in Loop: Header=BB2_7 Depth=2
	movabsq	$main_signature, %rdi
	movl	$196622, %esi           # imm = 0x3000E
	callq	update_signature
	leaq	-112(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	fputs
	movabsq	$main_signature, %rdi
	movl	$196622, %esi           # imm = 0x3000E
	callq	verify_signature
# BB#14:                                #   in Loop: Header=BB2_7 Depth=2
	movabsq	$main_signature, %rdi
	movl	$196623, %esi           # imm = 0x3000F
	callq	update_signature
	callq	calculation_type_A
	movabsq	$main_signature, %rdi
	movl	$196623, %esi           # imm = 0x3000F
	callq	verify_signature
# BB#15:                                #   in Loop: Header=BB2_7 Depth=2
	movabsq	$main_signature, %rdi
	movl	$196624, %esi           # imm = 0x30010
	callq	update_signature
	movq	-40(%rbp), %rdi
	callq	fclose
	movabsq	$main_signature, %rdi
	movl	$196624, %esi           # imm = 0x30010
	callq	verify_signature
# BB#16:                                #   in Loop: Header=BB2_7 Depth=2
	movabsq	$main_signature, %rdi
	movl	$196625, %esi           # imm = 0x30011
	callq	update_signature
	callq	calculation_type_B
	movabsq	$main_signature, %rdi
	movl	$196625, %esi           # imm = 0x30011
	callq	verify_signature
# BB#17:                                #   in Loop: Header=BB2_7 Depth=2
	movabsq	$main_signature, %rdi
	movl	$196626, %esi           # imm = 0x30012
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$196626, %esi           # imm = 0x30012
	callq	verify_signature
	jmp	.LBB2_7
.LBB2_18:                               #   in Loop: Header=BB2_2 Depth=1
	movabsq	$main_signature, %rdi
	movl	$196627, %esi           # imm = 0x30013
	callq	update_signature
	callq	calculation_type_A
	movabsq	$main_signature, %rdi
	movl	$196627, %esi           # imm = 0x30013
	callq	verify_signature
# BB#19:                                #   in Loop: Header=BB2_2 Depth=1
	movabsq	$main_signature, %rdi
	movl	$196628, %esi           # imm = 0x30014
	callq	update_signature
	movq	-48(%rbp), %rdi
	callq	fclose
	movabsq	$main_signature, %rdi
	movl	$196628, %esi           # imm = 0x30014
	callq	verify_signature
# BB#20:                                #   in Loop: Header=BB2_2 Depth=1
	movabsq	$main_signature, %rdi
	movl	$196629, %esi           # imm = 0x30015
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movl	$196629, %esi           # imm = 0x30015
	callq	verify_signature
	jmp	.LBB2_2
.LBB2_21:
	movabsq	$main_signature, %rdi
	movl	$196630, %esi           # imm = 0x30016
	callq	update_signature
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$main_signature, %rdi
	movl	$196630, %esi           # imm = 0x30016
	callq	verify_signature
# BB#22:
	movabsq	$main_signature, %rdi
	movl	$196631, %esi           # imm = 0x30017
	callq	update_signature
	leaq	-72(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_signature, %rdi
	movl	$196631, %esi           # imm = 0x30017
	callq	verify_signature
# BB#23:
	movabsq	$main_signature, %rdi
	movl	$196632, %esi           # imm = 0x30018
	callq	update_signature
	movabsq	$.L.str.5, %rdi
	movq	-72(%rbp), %rax
	subq	-88(%rbp), %rax
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	movq	-64(%rbp), %rsi
	subq	-80(%rbp), %rsi
	addq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movabsq	$main_signature, %rdi
	movl	$196632, %esi           # imm = 0x30018
	callq	verify_signature
# BB#24:
	movabsq	$main_signature, %rdi
	movl	$196633, %esi           # imm = 0x30019
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$1, is_signature_queue_full
	movl	$196633, %esi           # imm = 0x30019
	callq	verify_signature
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.globl	CallcheckerSet          # -- Begin function CallcheckerSet
	.p2align	4, 0x90
	.type	CallcheckerSet,@function
CallcheckerSet:                         # @CallcheckerSet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi13:
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
.Lfunc_end3:
	.size	CallcheckerSet, .Lfunc_end3-CallcheckerSet
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"hello.txt"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"write.txt"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"a"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	" [target finished!]\n"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	" [target] Execution Time: %ld\n"
	.size	.L.str.5, 31

	.type	calculation_type_A_signature,@object # @calculation_type_A_signature
	.bss
	.globl	calculation_type_A_signature
	.p2align	2
calculation_type_A_signature:
	.long	0                       # 0x0
	.size	calculation_type_A_signature, 4

	.type	calculation_type_B_signature,@object # @calculation_type_B_signature
	.globl	calculation_type_B_signature
	.p2align	2
calculation_type_B_signature:
	.long	0                       # 0x0
	.size	calculation_type_B_signature, 4

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

	.type	fgets_signature,@object # @fgets_signature
	.globl	fgets_signature
	.p2align	2
fgets_signature:
	.long	0                       # 0x0
	.size	fgets_signature, 4

	.type	fputs_signature,@object # @fputs_signature
	.globl	fputs_signature
	.p2align	2
fputs_signature:
	.long	0                       # 0x0
	.size	fputs_signature, 4

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
	.section	".note.GNU-stack","",@progbits
