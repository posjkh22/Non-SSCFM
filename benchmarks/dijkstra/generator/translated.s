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
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
.Lcfi3:
	.cfi_offset %rbx, -32
.Lcfi4:
	.cfi_offset %r14, -24
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movabsq	$print_path_signature, %rdi
	movl	$65537, %esi            # imm = 0x10001
	callq	update_signature
	movabsq	$print_path_signature, %rdi
	movq	%rbx, -32(%rbp)
	movl	%r14d, -20(%rbp)
	movq	-32(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movl	4(%rax,%rcx,8), %ebx
	movl	$65537, %esi            # imm = 0x10001
	callq	verify_signature
	cmpl	$9999, %ebx             # imm = 0x270F
	je	.LBB0_2
# BB#1:
	movabsq	$print_path_signature, %rdi
	movl	$65538, %esi            # imm = 0x10002
	callq	update_signature
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movl	4(%rax,%rcx,8), %esi
	callq	print_path
	movabsq	$print_path_signature, %rdi
	movl	$65538, %esi            # imm = 0x10002
	callq	verify_signature
.LBB0_2:
	movabsq	$print_path_signature, %rdi
	movl	$65539, %esi            # imm = 0x10003
	callq	update_signature
	movabsq	$print_path_signature, %rdi
	movl	$65539, %esi            # imm = 0x10003
	callq	verify_signature
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
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
.Lcfi5:
	.cfi_def_cfa_offset 16
.Lcfi6:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi7:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
.Lcfi8:
	.cfi_offset %rbx, -40
.Lcfi9:
	.cfi_offset %r14, -32
.Lcfi10:
	.cfi_offset %r15, -24
	movl	%edx, %r14d
	movl	%esi, %r15d
	movl	%edi, %ebx
	movabsq	$enqueue_signature, %rdi
	movl	$131073, %esi           # imm = 0x20001
	callq	update_signature
	movl	%ebx, -52(%rbp)
	movl	%r15d, -48(%rbp)
	movl	%r14d, -44(%rbp)
	movl	$24, %edi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$enqueue_signature, %rdi
	movl	$131073, %esi           # imm = 0x20001
	callq	verify_signature
# BB#1:
	movabsq	$enqueue_signature, %rdi
	movl	$131074, %esi           # imm = 0x20002
	callq	update_signature
	movabsq	$enqueue_signature, %rdi
	movq	%rbx, -32(%rbp)
	movq	qHead, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rbx
	movl	$131074, %esi           # imm = 0x20002
	callq	verify_signature
	cmpq	$0, %rbx
	jne	.LBB1_3
# BB#2:
	movabsq	$enqueue_signature, %rdi
	movl	$131075, %esi           # imm = 0x20003
	callq	update_signature
	movabsq	$.L.str, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$enqueue_signature, %rdi
	movl	$131075, %esi           # imm = 0x20003
	callq	verify_signature
.LBB1_3:
	movabsq	$enqueue_signature, %rdi
	movl	$131076, %esi           # imm = 0x20004
	callq	update_signature
	movabsq	$enqueue_signature, %rdi
	movl	-52(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-40(%rbp), %rbx
	movl	$131076, %esi           # imm = 0x20004
	callq	verify_signature
	cmpq	$0, %rbx
	jne	.LBB1_5
# BB#4:
	movabsq	$enqueue_signature, %rdi
	movl	$131077, %esi           # imm = 0x20005
	callq	update_signature
	movabsq	$enqueue_signature, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, qHead
	movl	$131077, %esi           # imm = 0x20005
	callq	verify_signature
	jmp	.LBB1_9
.LBB1_5:
	movabsq	$enqueue_signature, %rdi
	movl	$131078, %esi           # imm = 0x20006
	callq	update_signature
	movabsq	$enqueue_signature, %rdi
	movl	$131078, %esi           # imm = 0x20006
	callq	verify_signature
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	movabsq	$enqueue_signature, %rdi
	movl	$131079, %esi           # imm = 0x20007
	callq	update_signature
	movabsq	$enqueue_signature, %rdi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rbx
	movl	$131079, %esi           # imm = 0x20007
	callq	verify_signature
	cmpq	$0, %rbx
	je	.LBB1_8
# BB#7:                                 #   in Loop: Header=BB1_6 Depth=1
	movabsq	$enqueue_signature, %rdi
	movl	$131080, %esi           # imm = 0x20008
	callq	update_signature
	movabsq	$enqueue_signature, %rdi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$131080, %esi           # imm = 0x20008
	callq	verify_signature
	jmp	.LBB1_6
.LBB1_8:
	movabsq	$enqueue_signature, %rdi
	movl	$131081, %esi           # imm = 0x20009
	callq	update_signature
	movabsq	$enqueue_signature, %rdi
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movl	$131081, %esi           # imm = 0x20009
	callq	verify_signature
.LBB1_9:
	movabsq	$enqueue_signature, %rdi
	movl	$131082, %esi           # imm = 0x2000A
	callq	update_signature
	movabsq	$enqueue_signature, %rdi
	movl	g_qCount, %eax
	addl	$1, %eax
	movl	%eax, g_qCount
	movl	$131082, %esi           # imm = 0x2000A
	callq	verify_signature
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
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
.Lcfi11:
	.cfi_def_cfa_offset 16
.Lcfi12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi13:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
.Lcfi14:
	.cfi_offset %rbx, -40
.Lcfi15:
	.cfi_offset %r14, -32
.Lcfi16:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movabsq	$dequeue_signature, %rdi
	movl	$327681, %esi           # imm = 0x50001
	callq	update_signature
	movabsq	$dequeue_signature, %rdi
	movq	%rbx, -56(%rbp)
	movq	%r15, -48(%rbp)
	movq	%r14, -40(%rbp)
	movq	qHead, %rax
	movq	%rax, -32(%rbp)
	movq	qHead, %rbx
	movl	$327681, %esi           # imm = 0x50001
	callq	verify_signature
	cmpq	$0, %rbx
	je	.LBB2_3
# BB#1:
	movabsq	$dequeue_signature, %rdi
	movl	$327682, %esi           # imm = 0x50002
	callq	update_signature
	movq	qHead, %rax
	movl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	qHead, %rax
	movl	4(%rax), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	qHead, %rax
	movl	8(%rax), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	qHead, %rax
	movq	16(%rax), %rax
	movq	%rax, qHead
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	free
	movabsq	$dequeue_signature, %rdi
	movl	$327682, %esi           # imm = 0x50002
	callq	verify_signature
# BB#2:
	movabsq	$dequeue_signature, %rdi
	movl	$327683, %esi           # imm = 0x50003
	callq	update_signature
	movabsq	$dequeue_signature, %rdi
	movl	g_qCount, %eax
	addl	$-1, %eax
	movl	%eax, g_qCount
	movl	$327683, %esi           # imm = 0x50003
	callq	verify_signature
.LBB2_3:
	movabsq	$dequeue_signature, %rdi
	movl	$327684, %esi           # imm = 0x50004
	callq	update_signature
	movabsq	$dequeue_signature, %rdi
	movl	$327684, %esi           # imm = 0x50004
	callq	verify_signature
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
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
.Lcfi17:
	.cfi_def_cfa_offset 16
.Lcfi18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi19:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Lcfi20:
	.cfi_offset %rbx, -24
	movabsq	$qcount_signature, %rdi
	movl	$458753, %esi           # imm = 0x70001
	callq	update_signature
	movabsq	$qcount_signature, %rdi
	movl	g_qCount, %ebx
	movl	$458753, %esi           # imm = 0x70001
	callq	verify_signature
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
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
.Lcfi21:
	.cfi_def_cfa_offset 16
.Lcfi22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi23:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
.Lcfi24:
	.cfi_offset %rbx, -32
.Lcfi25:
	.cfi_offset %r14, -24
	movl	%esi, %r14d
	movl	%edi, %ebx
	movabsq	$dijkstra_signature, %rdi
	movl	$524289, %esi           # imm = 0x80001
	callq	update_signature
	movabsq	$dijkstra_signature, %rdi
	movl	%ebx, -20(%rbp)
	movl	%r14d, -24(%rbp)
	movl	$0, ch
	movl	$524289, %esi           # imm = 0x80001
	callq	verify_signature
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movabsq	$dijkstra_signature, %rdi
	movl	$524290, %esi           # imm = 0x80002
	callq	update_signature
	movabsq	$dijkstra_signature, %rdi
	movl	ch, %ebx
	movl	$524290, %esi           # imm = 0x80002
	callq	verify_signature
	cmpl	$100, %ebx
	jge	.LBB4_4
# BB#2:                                 #   in Loop: Header=BB4_1 Depth=1
	movabsq	$dijkstra_signature, %rdi
	movl	$524291, %esi           # imm = 0x80003
	callq	update_signature
	movabsq	$dijkstra_signature, %rdi
	movslq	ch, %rax
	movl	$9999, rgnNodes(,%rax,8) # imm = 0x270F
	movslq	ch, %rax
	movl	$9999, rgnNodes+4(,%rax,8) # imm = 0x270F
	movl	$524291, %esi           # imm = 0x80003
	callq	verify_signature
# BB#3:                                 #   in Loop: Header=BB4_1 Depth=1
	movabsq	$dijkstra_signature, %rdi
	movl	$524292, %esi           # imm = 0x80004
	callq	update_signature
	movabsq	$dijkstra_signature, %rdi
	movl	ch, %eax
	addl	$1, %eax
	movl	%eax, ch
	movl	$524292, %esi           # imm = 0x80004
	callq	verify_signature
	jmp	.LBB4_1
.LBB4_4:
	movabsq	$dijkstra_signature, %rdi
	movl	$524293, %esi           # imm = 0x80005
	callq	update_signature
	movabsq	$dijkstra_signature, %rdi
	movl	-20(%rbp), %r14d
	movl	-24(%rbp), %ebx
	movl	$524293, %esi           # imm = 0x80005
	callq	verify_signature
	cmpl	%ebx, %r14d
	jne	.LBB4_6
# BB#5:
	movabsq	$dijkstra_signature, %rdi
	movl	$524294, %esi           # imm = 0x80006
	callq	update_signature
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$dijkstra_signature, %rdi
	movl	$524294, %esi           # imm = 0x80006
	callq	verify_signature
	jmp	.LBB4_21
.LBB4_6:
	movabsq	$dijkstra_signature, %rdi
	movl	$524295, %esi           # imm = 0x80007
	callq	update_signature
	movslq	-20(%rbp), %rax
	movl	$0, rgnNodes(,%rax,8)
	movslq	-20(%rbp), %rax
	movl	$9999, rgnNodes+4(,%rax,8) # imm = 0x270F
	movl	-20(%rbp), %edi
	xorl	%esi, %esi
	movl	$9999, %edx             # imm = 0x270F
	callq	enqueue
	movabsq	$dijkstra_signature, %rdi
	movl	$524295, %esi           # imm = 0x80007
	callq	verify_signature
.LBB4_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
	movabsq	$dijkstra_signature, %rdi
	movl	$524296, %esi           # imm = 0x80008
	callq	update_signature
	callq	qcount
	movl	%eax, %ebx
	movabsq	$dijkstra_signature, %rdi
	movl	$524296, %esi           # imm = 0x80008
	callq	verify_signature
# BB#8:                                 #   in Loop: Header=BB4_7 Depth=1
	movabsq	$dijkstra_signature, %rdi
	movl	$524297, %esi           # imm = 0x80009
	callq	update_signature
	movabsq	$dijkstra_signature, %rdi
	movl	$524297, %esi           # imm = 0x80009
	callq	verify_signature
	cmpl	$0, %ebx
	jle	.LBB4_20
# BB#9:                                 #   in Loop: Header=BB4_7 Depth=1
	movabsq	$dijkstra_signature, %rdi
	movl	$524298, %esi           # imm = 0x8000A
	callq	update_signature
	movabsq	$iNode, %rdi
	movabsq	$iDist, %rsi
	movabsq	$iPrev, %rdx
	callq	dequeue
	movabsq	$dijkstra_signature, %rdi
	movl	$524298, %esi           # imm = 0x8000A
	callq	verify_signature
# BB#10:                                #   in Loop: Header=BB4_7 Depth=1
	movabsq	$dijkstra_signature, %rdi
	movl	$524299, %esi           # imm = 0x8000B
	callq	update_signature
	movabsq	$dijkstra_signature, %rdi
	movl	$0, i
	movl	$524299, %esi           # imm = 0x8000B
	callq	verify_signature
.LBB4_11:                               #   Parent Loop BB4_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$dijkstra_signature, %rdi
	movl	$524300, %esi           # imm = 0x8000C
	callq	update_signature
	movabsq	$dijkstra_signature, %rdi
	movl	i, %ebx
	movl	$524300, %esi           # imm = 0x8000C
	callq	verify_signature
	cmpl	$100, %ebx
	jge	.LBB4_19
# BB#12:                                #   in Loop: Header=BB4_11 Depth=2
	movabsq	$dijkstra_signature, %rdi
	movl	$524301, %esi           # imm = 0x8000D
	callq	update_signature
	movabsq	$dijkstra_signature, %rdi
	movabsq	$AdjMatrix, %rax
	movslq	iNode, %rcx
	imulq	$400, %rcx, %rcx        # imm = 0x190
	addq	%rax, %rcx
	movslq	i, %rax
	movl	(%rcx,%rax,4), %ebx
	movl	%ebx, iCost
	movl	$524301, %esi           # imm = 0x8000D
	callq	verify_signature
	cmpl	$9999, %ebx             # imm = 0x270F
	je	.LBB4_17
# BB#13:                                #   in Loop: Header=BB4_11 Depth=2
	movabsq	$dijkstra_signature, %rdi
	movl	$524302, %esi           # imm = 0x8000E
	callq	update_signature
	movabsq	$dijkstra_signature, %rdi
	movslq	i, %rax
	movl	rgnNodes(,%rax,8), %ebx
	movl	$524302, %esi           # imm = 0x8000E
	callq	verify_signature
	movl	$9999, %eax             # imm = 0x270F
	cmpl	%ebx, %eax
	je	.LBB4_15
# BB#14:                                #   in Loop: Header=BB4_11 Depth=2
	movabsq	$dijkstra_signature, %rdi
	movl	$524303, %esi           # imm = 0x8000F
	callq	update_signature
	movabsq	$dijkstra_signature, %rdi
	movslq	i, %rax
	movl	rgnNodes(,%rax,8), %r14d
	movl	iCost, %ebx
	addl	iDist, %ebx
	movl	$524303, %esi           # imm = 0x8000F
	callq	verify_signature
	cmpl	%ebx, %r14d
	jle	.LBB4_16
.LBB4_15:                               #   in Loop: Header=BB4_11 Depth=2
	movabsq	$dijkstra_signature, %rdi
	movl	$524304, %esi           # imm = 0x80010
	callq	update_signature
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
	movabsq	$dijkstra_signature, %rdi
	movl	$524304, %esi           # imm = 0x80010
	callq	verify_signature
.LBB4_16:                               #   in Loop: Header=BB4_11 Depth=2
	movabsq	$dijkstra_signature, %rdi
	movl	$524305, %esi           # imm = 0x80011
	callq	update_signature
	movabsq	$dijkstra_signature, %rdi
	movl	$524305, %esi           # imm = 0x80011
	callq	verify_signature
.LBB4_17:                               #   in Loop: Header=BB4_11 Depth=2
	movabsq	$dijkstra_signature, %rdi
	movl	$524306, %esi           # imm = 0x80012
	callq	update_signature
	movabsq	$dijkstra_signature, %rdi
	movl	$524306, %esi           # imm = 0x80012
	callq	verify_signature
# BB#18:                                #   in Loop: Header=BB4_11 Depth=2
	movabsq	$dijkstra_signature, %rdi
	movl	$524307, %esi           # imm = 0x80013
	callq	update_signature
	movabsq	$dijkstra_signature, %rdi
	movl	i, %eax
	addl	$1, %eax
	movl	%eax, i
	movl	$524307, %esi           # imm = 0x80013
	callq	verify_signature
	jmp	.LBB4_11
.LBB4_19:                               #   in Loop: Header=BB4_7 Depth=1
	movabsq	$dijkstra_signature, %rdi
	movl	$524308, %esi           # imm = 0x80014
	callq	update_signature
	movabsq	$dijkstra_signature, %rdi
	movl	$524308, %esi           # imm = 0x80014
	callq	verify_signature
	jmp	.LBB4_7
.LBB4_20:
	movabsq	$dijkstra_signature, %rdi
	movl	$524309, %esi           # imm = 0x80015
	callq	update_signature
	movabsq	$dijkstra_signature, %rdi
	movl	$524309, %esi           # imm = 0x80015
	callq	verify_signature
.LBB4_21:
	movabsq	$dijkstra_signature, %rdi
	movl	$524310, %esi           # imm = 0x80016
	callq	update_signature
	movabsq	$dijkstra_signature, %rdi
	movl	-28(%rbp), %ebx
	movl	$524310, %esi           # imm = 0x80016
	callq	verify_signature
	movl	%ebx, %eax
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
.Lcfi26:
	.cfi_def_cfa_offset 16
.Lcfi27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi28:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
.Lcfi29:
	.cfi_offset %rbx, -32
.Lcfi30:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movl	%edi, %ebx
	movabsq	$main_signature, %rdi
	movl	$655361, %esi           # imm = 0xA0001
	callq	update_signature
	leaq	-80(%rbp), %rdi
	movl	$0, -32(%rbp)
	movl	%ebx, -44(%rbp)
	movq	%r14, -88(%rbp)
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_signature, %rdi
	movl	$655361, %esi           # imm = 0xA0001
	callq	verify_signature
# BB#1:
	movabsq	$main_signature, %rdi
	movl	$655362, %esi           # imm = 0xA0002
	callq	update_signature
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	callq	fopen
	movq	%rax, %rbx
	movabsq	$main_signature, %rdi
	movl	$655362, %esi           # imm = 0xA0002
	callq	verify_signature
# BB#2:
	movabsq	$main_signature, %rdi
	movl	$655363, %esi           # imm = 0xA0003
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	%rbx, -40(%rbp)
	movl	$0, -24(%rbp)
	movl	$655363, %esi           # imm = 0xA0003
	callq	verify_signature
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
	movabsq	$main_signature, %rdi
	movl	$655364, %esi           # imm = 0xA0004
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-24(%rbp), %ebx
	movl	$655364, %esi           # imm = 0xA0004
	callq	verify_signature
	cmpl	$100, %ebx
	jge	.LBB5_11
# BB#4:                                 #   in Loop: Header=BB5_3 Depth=1
	movabsq	$main_signature, %rdi
	movl	$655365, %esi           # imm = 0xA0005
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$0, -20(%rbp)
	movl	$655365, %esi           # imm = 0xA0005
	callq	verify_signature
.LBB5_5:                                #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_signature, %rdi
	movl	$655366, %esi           # imm = 0xA0006
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %ebx
	movl	$655366, %esi           # imm = 0xA0006
	callq	verify_signature
	cmpl	$100, %ebx
	jge	.LBB5_9
# BB#6:                                 #   in Loop: Header=BB5_5 Depth=2
	movabsq	$main_signature, %rdi
	movl	$655367, %esi           # imm = 0xA0007
	callq	update_signature
	movabsq	$.L.str.4, %rsi
	leaq	-28(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_fscanf
	movabsq	$main_signature, %rdi
	movl	$655367, %esi           # imm = 0xA0007
	callq	verify_signature
# BB#7:                                 #   in Loop: Header=BB5_5 Depth=2
	movabsq	$main_signature, %rdi
	movl	$655368, %esi           # imm = 0xA0008
	callq	update_signature
	movabsq	$main_signature, %rdi
	movabsq	$AdjMatrix, %rax
	movl	-28(%rbp), %ecx
	movslq	-24(%rbp), %rdx
	imulq	$400, %rdx, %rdx        # imm = 0x190
	addq	%rax, %rdx
	movslq	-20(%rbp), %rax
	movl	%ecx, (%rdx,%rax,4)
	movl	$655368, %esi           # imm = 0xA0008
	callq	verify_signature
# BB#8:                                 #   in Loop: Header=BB5_5 Depth=2
	movabsq	$main_signature, %rdi
	movl	$655369, %esi           # imm = 0xA0009
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$655369, %esi           # imm = 0xA0009
	callq	verify_signature
	jmp	.LBB5_5
.LBB5_9:                                #   in Loop: Header=BB5_3 Depth=1
	movabsq	$main_signature, %rdi
	movl	$655370, %esi           # imm = 0xA000A
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$655370, %esi           # imm = 0xA000A
	callq	verify_signature
# BB#10:                                #   in Loop: Header=BB5_3 Depth=1
	movabsq	$main_signature, %rdi
	movl	$655371, %esi           # imm = 0xA000B
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movl	$655371, %esi           # imm = 0xA000B
	callq	verify_signature
	jmp	.LBB5_3
.LBB5_11:
	movabsq	$main_signature, %rdi
	movl	$655372, %esi           # imm = 0xA000C
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$0, -24(%rbp)
	movl	$50, -20(%rbp)
	movl	$655372, %esi           # imm = 0xA000C
	callq	verify_signature
.LBB5_12:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_signature, %rdi
	movl	$655373, %esi           # imm = 0xA000D
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-24(%rbp), %ebx
	movl	$655373, %esi           # imm = 0xA000D
	callq	verify_signature
	cmpl	$20, %ebx
	jge	.LBB5_15
# BB#13:                                #   in Loop: Header=BB5_12 Depth=1
	movabsq	$main_signature, %rdi
	movl	$655374, %esi           # imm = 0xA000E
	callq	update_signature
	movl	$100, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, -20(%rbp)
	movl	-24(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	dijkstra
	movabsq	$main_signature, %rdi
	movl	$655374, %esi           # imm = 0xA000E
	callq	verify_signature
# BB#14:                                #   in Loop: Header=BB5_12 Depth=1
	movabsq	$main_signature, %rdi
	movl	$655375, %esi           # imm = 0xA000F
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$655375, %esi           # imm = 0xA000F
	callq	verify_signature
	jmp	.LBB5_12
.LBB5_15:
	movabsq	$main_signature, %rdi
	movl	$655376, %esi           # imm = 0xA0010
	callq	update_signature
	leaq	-64(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_signature, %rdi
	movl	$655376, %esi           # imm = 0xA0010
	callq	verify_signature
# BB#16:
	movabsq	$main_signature, %rdi
	movl	$655377, %esi           # imm = 0xA0011
	callq	update_signature
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$main_signature, %rdi
	movl	$655377, %esi           # imm = 0xA0011
	callq	verify_signature
# BB#17:
	movabsq	$main_signature, %rdi
	movl	$655378, %esi           # imm = 0xA0012
	callq	update_signature
	movabsq	$.L.str.6, %rdi
	movq	-64(%rbp), %rax
	subq	-80(%rbp), %rax
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	movq	-56(%rbp), %rsi
	subq	-72(%rbp), %rsi
	addq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movabsq	$main_signature, %rdi
	movl	$655378, %esi           # imm = 0xA0012
	callq	verify_signature
# BB#18:
	movabsq	$main_signature, %rdi
	movl	$655379, %esi           # imm = 0xA0013
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-32(%rbp), %ebx
	movl	$655379, %esi           # imm = 0xA0013
	callq	verify_signature
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
.Lcfi31:
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

	.type	print_path_signature,@object # @print_path_signature
	.bss
	.globl	print_path_signature
	.p2align	2
print_path_signature:
	.long	0                       # 0x0
	.size	print_path_signature, 4

	.type	enqueue_signature,@object # @enqueue_signature
	.globl	enqueue_signature
	.p2align	2
enqueue_signature:
	.long	0                       # 0x0
	.size	enqueue_signature, 4

	.type	malloc_signature,@object # @malloc_signature
	.globl	malloc_signature
	.p2align	2
malloc_signature:
	.long	0                       # 0x0
	.size	malloc_signature, 4

	.type	fprintf_signature,@object # @fprintf_signature
	.globl	fprintf_signature
	.p2align	2
fprintf_signature:
	.long	0                       # 0x0
	.size	fprintf_signature, 4

	.type	dequeue_signature,@object # @dequeue_signature
	.globl	dequeue_signature
	.p2align	2
dequeue_signature:
	.long	0                       # 0x0
	.size	dequeue_signature, 4

	.type	free_signature,@object  # @free_signature
	.globl	free_signature
	.p2align	2
free_signature:
	.long	0                       # 0x0
	.size	free_signature, 4

	.type	qcount_signature,@object # @qcount_signature
	.globl	qcount_signature
	.p2align	2
qcount_signature:
	.long	0                       # 0x0
	.size	qcount_signature, 4

	.type	dijkstra_signature,@object # @dijkstra_signature
	.globl	dijkstra_signature
	.p2align	2
dijkstra_signature:
	.long	0                       # 0x0
	.size	dijkstra_signature, 4

	.type	printf_signature,@object # @printf_signature
	.globl	printf_signature
	.p2align	2
printf_signature:
	.long	0                       # 0x0
	.size	printf_signature, 4

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

	.type	__isoc99_fscanf_signature,@object # @__isoc99_fscanf_signature
	.globl	__isoc99_fscanf_signature
	.p2align	2
__isoc99_fscanf_signature:
	.long	0                       # 0x0
	.size	__isoc99_fscanf_signature, 4

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
