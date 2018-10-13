	.text
	.file	"llvm-link"
	.globl	print_path              # -- Begin function print_path
	.p2align	4, 0x90
	.type	print_path,@function
print_path:                             # @print_path
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
	subq	$24, %rsp
.Lcfi3:
	.cfi_offset %rbx, -24
	movabsq	$main_run_signature_1, %rax
	movabsq	$main_run_signature_2, %rcx
	movq	%rdi, -24(%rbp)
	movl	%esi, -12(%rbp)
	movq	-24(%rbp), %rbx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	$65538, %edx            # imm = 0x10002
	movl	$65539, %ecx            # imm = 0x10003
	callq	update_signature
	movslq	-12(%rbp), %rax
	cmpl	$9999, 4(%rbx,%rax,8)   # imm = 0x270F
	je	.LBB0_2
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65538, %edx            # imm = 0x10002
	callq	verify_signature
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movl	4(%rax,%rcx,8), %esi
	callq	print_path
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65539, %edx            # imm = 0x10003
	xorl	%ecx, %ecx
	callq	update_signature
.LBB0_2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$65539, %edx            # imm = 0x10003
	callq	verify_signature
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	print_path, .Lfunc_end0-print_path
	.cfi_endproc
                                        # -- End function
	.globl	enqueue                 # -- Begin function enqueue
	.p2align	4, 0x90
	.type	enqueue,@function
enqueue:                                # @enqueue
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
	subq	$40, %rsp
.Lcfi7:
	.cfi_offset %rbx, -24
	movl	%edi, -36(%rbp)
	movl	%esi, -32(%rbp)
	movl	%edx, -28(%rbp)
	movl	$24, %edi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131074, %edx           # imm = 0x20002
	xorl	%ecx, %ecx
	callq	update_signature
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131074, %edx           # imm = 0x20002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	%rbx, -16(%rbp)
	movq	qHead, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rbx
	movl	$131076, %edx           # imm = 0x20004
	movl	$131075, %ecx           # imm = 0x20003
	callq	update_signature
	cmpq	$0, %rbx
	jne	.LBB1_3
# BB#2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131075, %edx           # imm = 0x20003
	callq	verify_signature
	movabsq	$.L.str, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131076, %edx           # imm = 0x20004
	xorl	%ecx, %ecx
	callq	update_signature
.LBB1_3:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131076, %edx           # imm = 0x20004
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movl	$131078, %edx           # imm = 0x20006
	movl	$131077, %ecx           # imm = 0x20005
	callq	update_signature
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_5
# BB#4:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131077, %edx           # imm = 0x20005
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-16(%rbp), %rax
	movq	%rax, qHead
	movl	$131082, %edx           # imm = 0x2000A
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB1_9
.LBB1_5:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131078, %edx           # imm = 0x20006
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131079, %edx           # imm = 0x20007
	xorl	%ecx, %ecx
	callq	update_signature
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131079, %edx           # imm = 0x20007
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rbx
	movl	$131080, %edx           # imm = 0x20008
	movl	$131081, %ecx           # imm = 0x20009
	callq	update_signature
	cmpq	$0, %rbx
	je	.LBB1_8
# BB#7:                                 #   in Loop: Header=BB1_6 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131080, %edx           # imm = 0x20008
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$131079, %edx           # imm = 0x20007
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB1_6
.LBB1_8:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131081, %edx           # imm = 0x20009
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movl	$131082, %edx           # imm = 0x2000A
	xorl	%ecx, %ecx
	callq	update_signature
.LBB1_9:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$131082, %edx           # imm = 0x2000A
	callq	verify_signature
	movl	g_qCount, %eax
	addl	$1, %eax
	movl	%eax, g_qCount
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	enqueue, .Lfunc_end1-enqueue
	.cfi_endproc
                                        # -- End function
	.globl	dequeue                 # -- Begin function dequeue
	.p2align	4, 0x90
	.type	dequeue,@function
dequeue:                                # @dequeue
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
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movabsq	$main_run_signature_1, %rax
	movabsq	$main_run_signature_2, %rsi
	movq	%rdi, -48(%rbp)
	movq	%rax, %rdi
	movl	$327682, %edx           # imm = 0x50002
	movl	$327684, %ecx           # imm = 0x50004
	callq	update_signature
	movq	%rbx, -40(%rbp)
	movq	%r14, -32(%rbp)
	movq	qHead, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, qHead
	je	.LBB2_3
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327682, %edx           # imm = 0x50002
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	qHead, %rax
	movl	(%rax), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	qHead, %rax
	movl	4(%rax), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$327683, %edx           # imm = 0x50003
	xorl	%ecx, %ecx
	callq	update_signature
	movq	qHead, %rax
	movl	8(%rax), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	qHead, %rax
	movq	16(%rax), %rax
	movq	%rax, qHead
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	free
# BB#2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327683, %edx           # imm = 0x50003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	g_qCount, %eax
	addl	$-1, %eax
	movl	%eax, g_qCount
	movl	$327684, %edx           # imm = 0x50004
	xorl	%ecx, %ecx
	callq	update_signature
.LBB2_3:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$327684, %edx           # imm = 0x50004
	callq	verify_signature
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	dequeue, .Lfunc_end2-dequeue
	.cfi_endproc
                                        # -- End function
	.globl	qcount                  # -- Begin function qcount
	.p2align	4, 0x90
	.type	qcount,@function
qcount:                                 # @qcount
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
	movl	g_qCount, %eax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	qcount, .Lfunc_end3-qcount
	.cfi_endproc
                                        # -- End function
	.globl	dijkstra                # -- Begin function dijkstra
	.p2align	4, 0x90
	.type	dijkstra,@function
dijkstra:                               # @dijkstra
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
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
.Lcfi19:
	.cfi_offset %rbx, -32
.Lcfi20:
	.cfi_offset %r14, -24
	movabsq	$main_run_signature_1, %rax
	movabsq	$main_run_signature_2, %rcx
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$0, ch
	movq	%rax, %rdi
	movq	%rcx, %rsi
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
	movl	ch, %ebx
	movl	$524291, %edx           # imm = 0x80003
	movl	$524293, %ecx           # imm = 0x80005
	callq	update_signature
	cmpl	$100, %ebx
	jge	.LBB4_4
# BB#2:                                 #   in Loop: Header=BB4_1 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524291, %edx           # imm = 0x80003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movslq	ch, %rax
	movl	$9999, rgnNodes(,%rax,8) # imm = 0x270F
	movl	$524292, %edx           # imm = 0x80004
	xorl	%ecx, %ecx
	callq	update_signature
	movslq	ch, %rax
	movl	$9999, rgnNodes+4(,%rax,8) # imm = 0x270F
# BB#3:                                 #   in Loop: Header=BB4_1 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524292, %edx           # imm = 0x80004
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	ch, %eax
	addl	$1, %eax
	movl	%eax, ch
	movl	$524290, %edx           # imm = 0x80002
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB4_1
.LBB4_4:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524293, %edx           # imm = 0x80005
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %r14d
	movl	-24(%rbp), %ebx
	movl	$524294, %edx           # imm = 0x80006
	movl	$524295, %ecx           # imm = 0x80007
	callq	update_signature
	cmpl	%ebx, %r14d
	jne	.LBB4_6
# BB#5:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524294, %edx           # imm = 0x80006
	callq	verify_signature
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524310, %edx           # imm = 0x80016
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB4_21
.LBB4_6:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524295, %edx           # imm = 0x80007
	callq	verify_signature
	movslq	-20(%rbp), %rax
	movl	$0, rgnNodes(,%rax,8)
	movslq	-20(%rbp), %rax
	movl	$9999, rgnNodes+4(,%rax,8) # imm = 0x270F
	movl	-20(%rbp), %edi
	xorl	%esi, %esi
	movl	$9999, %edx             # imm = 0x270F
	callq	enqueue
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524296, %edx           # imm = 0x80008
	xorl	%ecx, %ecx
	callq	update_signature
.LBB4_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524296, %edx           # imm = 0x80008
	callq	verify_signature
	callq	qcount
	movl	%eax, %ebx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524297, %edx           # imm = 0x80009
	xorl	%ecx, %ecx
	callq	update_signature
# BB#8:                                 #   in Loop: Header=BB4_7 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524297, %edx           # imm = 0x80009
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524298, %edx           # imm = 0x8000A
	movl	$524309, %ecx           # imm = 0x80015
	callq	update_signature
	cmpl	$0, %ebx
	jle	.LBB4_20
# BB#9:                                 #   in Loop: Header=BB4_7 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524298, %edx           # imm = 0x8000A
	callq	verify_signature
	movabsq	$iNode, %rdi
	movabsq	$iDist, %rsi
	movabsq	$iPrev, %rdx
	callq	dequeue
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524299, %edx           # imm = 0x8000B
	xorl	%ecx, %ecx
	callq	update_signature
# BB#10:                                #   in Loop: Header=BB4_7 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524299, %edx           # imm = 0x8000B
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$0, i
	movl	$524300, %edx           # imm = 0x8000C
	xorl	%ecx, %ecx
	callq	update_signature
.LBB4_11:                               #   Parent Loop BB4_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524300, %edx           # imm = 0x8000C
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	i, %ebx
	movl	$524301, %edx           # imm = 0x8000D
	movl	$524308, %ecx           # imm = 0x80014
	callq	update_signature
	cmpl	$100, %ebx
	jge	.LBB4_19
# BB#12:                                #   in Loop: Header=BB4_11 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524301, %edx           # imm = 0x8000D
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movabsq	$AdjMatrix, %rax
	movslq	iNode, %rcx
	imulq	$400, %rcx, %rcx        # imm = 0x190
	addq	%rax, %rcx
	movslq	i, %rax
	movl	(%rcx,%rax,4), %ebx
	movl	%ebx, iCost
	movl	$524302, %edx           # imm = 0x8000E
	movl	$524306, %ecx           # imm = 0x80012
	callq	update_signature
	cmpl	$9999, %ebx             # imm = 0x270F
	je	.LBB4_17
# BB#13:                                #   in Loop: Header=BB4_11 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524302, %edx           # imm = 0x8000E
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movslq	i, %rax
	movl	rgnNodes(,%rax,8), %ebx
	movl	$524304, %edx           # imm = 0x80010
	movl	$524303, %ecx           # imm = 0x8000F
	callq	update_signature
	movl	$9999, %eax             # imm = 0x270F
	cmpl	%ebx, %eax
	je	.LBB4_15
# BB#14:                                #   in Loop: Header=BB4_11 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524303, %edx           # imm = 0x8000F
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movslq	i, %rax
	movl	rgnNodes(,%rax,8), %r14d
	movl	iCost, %ebx
	addl	iDist, %ebx
	movl	$524304, %edx           # imm = 0x80010
	movl	$524305, %ecx           # imm = 0x80011
	callq	update_signature
	cmpl	%ebx, %r14d
	jle	.LBB4_16
.LBB4_15:                               #   in Loop: Header=BB4_11 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524304, %edx           # imm = 0x80010
	callq	verify_signature
	movl	iDist, %eax
	addl	iCost, %eax
	movslq	i, %rcx
	movl	%eax, rgnNodes(,%rcx,8)
	movl	iNode, %eax
	movslq	i, %rcx
	movl	%eax, rgnNodes+4(,%rcx,8)
	movl	i, %edi
	movl	iDist, %esi
	addl	iCost, %esi
	movl	iNode, %edx
	callq	enqueue
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524305, %edx           # imm = 0x80011
	xorl	%ecx, %ecx
	callq	update_signature
.LBB4_16:                               #   in Loop: Header=BB4_11 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524305, %edx           # imm = 0x80011
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524306, %edx           # imm = 0x80012
	xorl	%ecx, %ecx
	callq	update_signature
.LBB4_17:                               #   in Loop: Header=BB4_11 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524306, %edx           # imm = 0x80012
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524307, %edx           # imm = 0x80013
	xorl	%ecx, %ecx
	callq	update_signature
# BB#18:                                #   in Loop: Header=BB4_11 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524307, %edx           # imm = 0x80013
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	i, %eax
	addl	$1, %eax
	movl	%eax, i
	movl	$524300, %edx           # imm = 0x8000C
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB4_11
.LBB4_19:                               #   in Loop: Header=BB4_7 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524308, %edx           # imm = 0x80014
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524296, %edx           # imm = 0x80008
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB4_7
.LBB4_20:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524309, %edx           # imm = 0x80015
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524310, %edx           # imm = 0x80016
	xorl	%ecx, %ecx
	callq	update_signature
.LBB4_21:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$524310, %edx           # imm = 0x80016
	callq	verify_signature
	movl	-28(%rbp), %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	dijkstra, .Lfunc_end4-dijkstra
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
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
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
.Lcfi24:
	.cfi_offset %rbx, -32
.Lcfi25:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movl	%edi, %ebx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655362, %edx           # imm = 0xA0002
	xorl	%ecx, %ecx
	callq	update_signature
	leaq	-80(%rbp), %rdi
	movl	$0, -32(%rbp)
	movl	%ebx, -44(%rbp)
	movq	%r14, -88(%rbp)
	xorl	%esi, %esi
	callq	gettimeofday
# BB#1:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655362, %edx           # imm = 0xA0002
	callq	verify_signature
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	callq	fopen
	movq	%rax, %rbx
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655363, %edx           # imm = 0xA0003
	xorl	%ecx, %ecx
	callq	update_signature
# BB#2:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655363, %edx           # imm = 0xA0003
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	%rbx, -40(%rbp)
	movl	$0, -24(%rbp)
	movl	$655364, %edx           # imm = 0xA0004
	xorl	%ecx, %ecx
	callq	update_signature
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655364, %edx           # imm = 0xA0004
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-24(%rbp), %ebx
	movl	$655365, %edx           # imm = 0xA0005
	movl	$655372, %ecx           # imm = 0xA000C
	callq	update_signature
	cmpl	$100, %ebx
	jge	.LBB5_11
# BB#4:                                 #   in Loop: Header=BB5_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655365, %edx           # imm = 0xA0005
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$0, -20(%rbp)
	movl	$655366, %edx           # imm = 0xA0006
	xorl	%ecx, %ecx
	callq	update_signature
.LBB5_5:                                #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655366, %edx           # imm = 0xA0006
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %ebx
	movl	$655367, %edx           # imm = 0xA0007
	movl	$655370, %ecx           # imm = 0xA000A
	callq	update_signature
	cmpl	$100, %ebx
	jge	.LBB5_9
# BB#6:                                 #   in Loop: Header=BB5_5 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655367, %edx           # imm = 0xA0007
	callq	verify_signature
	movabsq	$.L.str.4, %rsi
	leaq	-28(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_fscanf
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655368, %edx           # imm = 0xA0008
	xorl	%ecx, %ecx
	callq	update_signature
# BB#7:                                 #   in Loop: Header=BB5_5 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655368, %edx           # imm = 0xA0008
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movabsq	$AdjMatrix, %rax
	movl	-28(%rbp), %ecx
	movslq	-24(%rbp), %rdx
	imulq	$400, %rdx, %rdx        # imm = 0x190
	addq	%rax, %rdx
	movslq	-20(%rbp), %rax
	movl	%ecx, (%rdx,%rax,4)
	movl	$655369, %edx           # imm = 0xA0009
	xorl	%ecx, %ecx
	callq	update_signature
# BB#8:                                 #   in Loop: Header=BB5_5 Depth=2
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655369, %edx           # imm = 0xA0009
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$655366, %edx           # imm = 0xA0006
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB5_5
.LBB5_9:                                #   in Loop: Header=BB5_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655370, %edx           # imm = 0xA000A
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655371, %edx           # imm = 0xA000B
	xorl	%ecx, %ecx
	callq	update_signature
# BB#10:                                #   in Loop: Header=BB5_3 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655371, %edx           # imm = 0xA000B
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movl	$655364, %edx           # imm = 0xA0004
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB5_3
.LBB5_11:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655372, %edx           # imm = 0xA000C
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$0, -24(%rbp)
	movl	$50, -20(%rbp)
	movl	$655373, %edx           # imm = 0xA000D
	xorl	%ecx, %ecx
	callq	update_signature
.LBB5_12:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655373, %edx           # imm = 0xA000D
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-24(%rbp), %ebx
	movl	$655374, %edx           # imm = 0xA000E
	movl	$655376, %ecx           # imm = 0xA0010
	callq	update_signature
	cmpl	$20, %ebx
	jge	.LBB5_15
# BB#13:                                #   in Loop: Header=BB5_12 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655374, %edx           # imm = 0xA000E
	callq	verify_signature
	movl	$100, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, -20(%rbp)
	movl	-24(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	dijkstra
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655375, %edx           # imm = 0xA000F
	xorl	%ecx, %ecx
	callq	update_signature
# BB#14:                                #   in Loop: Header=BB5_12 Depth=1
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655375, %edx           # imm = 0xA000F
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$655373, %edx           # imm = 0xA000D
	xorl	%ecx, %ecx
	callq	update_signature
	jmp	.LBB5_12
.LBB5_15:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655376, %edx           # imm = 0xA0010
	callq	verify_signature
	leaq	-64(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655377, %edx           # imm = 0xA0011
	xorl	%ecx, %ecx
	callq	update_signature
# BB#16:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655377, %edx           # imm = 0xA0011
	callq	verify_signature
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655378, %edx           # imm = 0xA0012
	xorl	%ecx, %ecx
	callq	update_signature
# BB#17:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655378, %edx           # imm = 0xA0012
	callq	verify_signature
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movq	-64(%rbp), %rax
	subq	-80(%rbp), %rax
	imulq	$1000000, %rax, %rbx    # imm = 0xF4240
	movl	$655379, %edx           # imm = 0xA0013
	xorl	%ecx, %ecx
	callq	update_signature
	movabsq	$.L.str.6, %rdi
	movq	-56(%rbp), %rsi
	subq	-72(%rbp), %rsi
	addq	%rbx, %rsi
	movb	$0, %al
	callq	printf
# BB#18:
	movabsq	$main_run_signature_1, %rdi
	movabsq	$main_run_signature_2, %rsi
	movl	$655379, %edx           # imm = 0xA0013
	callq	verify_signature
	movl	-32(%rbp), %ebx
	movl	$655379, %edi           # imm = 0xA0013
	callq	exit_with_remainder_process
	movl	%ebx, %eax
	addq	$80, %rsp
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
.Lcfi26:
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
	.type	qHead,@object           # @qHead
	.bss
	.globl	qHead
	.p2align	3
qHead:
	.quad	0
	.size	qHead, 8

	.type	g_qCount,@object        # @g_qCount
	.globl	g_qCount
	.p2align	2
g_qCount:
	.long	0                       # 0x0
	.size	g_qCount, 4

	.type	ch,@object              # @ch
	.comm	ch,4,4
	.type	rgnNodes,@object        # @rgnNodes
	.comm	rgnNodes,800,16
	.type	iNode,@object           # @iNode
	.comm	iNode,4,4
	.type	iDist,@object           # @iDist
	.comm	iDist,4,4
	.type	iPrev,@object           # @iPrev
	.comm	iPrev,4,4
	.type	i,@object               # @i
	.comm	i,4,4
	.type	AdjMatrix,@object       # @AdjMatrix
	.comm	AdjMatrix,40000,16
	.type	iCost,@object           # @iCost
	.comm	iCost,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Out of memory.\n"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Shortest path is 0 in cost. Just stay where you are.\n"
	.size	.L.str.1, 54

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"./input.dat"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"r"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%d"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	" [target has finished!]\n"
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	" [target] Execution time: %ld\n"
	.size	.L.str.6, 31

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

	.type	print_path_signature_1,@object # @print_path_signature_1
	.globl	print_path_signature_1
	.p2align	2
print_path_signature_1:
	.long	0                       # 0x0
	.size	print_path_signature_1, 4

	.type	print_path_signature_2,@object # @print_path_signature_2
	.globl	print_path_signature_2
	.p2align	2
print_path_signature_2:
	.long	0                       # 0x0
	.size	print_path_signature_2, 4

	.type	enqueue_signature_1,@object # @enqueue_signature_1
	.globl	enqueue_signature_1
	.p2align	2
enqueue_signature_1:
	.long	0                       # 0x0
	.size	enqueue_signature_1, 4

	.type	enqueue_signature_2,@object # @enqueue_signature_2
	.globl	enqueue_signature_2
	.p2align	2
enqueue_signature_2:
	.long	0                       # 0x0
	.size	enqueue_signature_2, 4

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

	.type	dequeue_signature_1,@object # @dequeue_signature_1
	.globl	dequeue_signature_1
	.p2align	2
dequeue_signature_1:
	.long	0                       # 0x0
	.size	dequeue_signature_1, 4

	.type	dequeue_signature_2,@object # @dequeue_signature_2
	.globl	dequeue_signature_2
	.p2align	2
dequeue_signature_2:
	.long	0                       # 0x0
	.size	dequeue_signature_2, 4

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

	.type	qcount_signature_1,@object # @qcount_signature_1
	.globl	qcount_signature_1
	.p2align	2
qcount_signature_1:
	.long	0                       # 0x0
	.size	qcount_signature_1, 4

	.type	qcount_signature_2,@object # @qcount_signature_2
	.globl	qcount_signature_2
	.p2align	2
qcount_signature_2:
	.long	0                       # 0x0
	.size	qcount_signature_2, 4

	.type	dijkstra_signature_1,@object # @dijkstra_signature_1
	.globl	dijkstra_signature_1
	.p2align	2
dijkstra_signature_1:
	.long	0                       # 0x0
	.size	dijkstra_signature_1, 4

	.type	dijkstra_signature_2,@object # @dijkstra_signature_2
	.globl	dijkstra_signature_2
	.p2align	2
dijkstra_signature_2:
	.long	0                       # 0x0
	.size	dijkstra_signature_2, 4

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

	.type	__isoc99_fscanf_signature_1,@object # @__isoc99_fscanf_signature_1
	.globl	__isoc99_fscanf_signature_1
	.p2align	2
__isoc99_fscanf_signature_1:
	.long	0                       # 0x0
	.size	__isoc99_fscanf_signature_1, 4

	.type	__isoc99_fscanf_signature_2,@object # @__isoc99_fscanf_signature_2
	.globl	__isoc99_fscanf_signature_2
	.p2align	2
__isoc99_fscanf_signature_2:
	.long	0                       # 0x0
	.size	__isoc99_fscanf_signature_2, 4

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
	.section	".note.GNU-stack","",@progbits
