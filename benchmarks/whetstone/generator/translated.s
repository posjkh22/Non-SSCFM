	.text
	.file	"whetstone.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4611686018427387904     # double 2
.LCPI0_1:
	.quad	4602681070972460597     # double 0.50024999999999997
.LCPI0_2:
	.quad	4602678368812684175     # double 0.499975
.LCPI0_3:
	.quad	-4616189618054758400    # double -1
.LCPI0_4:
	.quad	4607182418800017408     # double 1
.LCPI0_5:
	.quad	4602678819172646912     # double 0.5
.LCPI0_6:
	.quad	4613937818241073152     # double 3
.LCPI0_7:
	.quad	4604930618986332160     # double 0.75
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
	subq	$272, %rsp              # imm = 0x110
.Lcfi3:
	.cfi_offset %rbx, -32
.Lcfi4:
	.cfi_offset %r14, -24
	movabsq	$main_signature, %rdi
	movl	$65537, %esi            # imm = 0x10001
	callq	update_signature
	leaq	-256(%rbp), %rdi
	movl	$0, -224(%rbp)
	movq	$100, -128(%rbp)
	movl	$0, -220(%rbp)
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_signature, %rdi
	movl	$65537, %esi            # imm = 0x10001
	callq	verify_signature
# BB#1:
	movabsq	$main_signature, %rdi
	movl	$65538, %esi            # imm = 0x10002
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$1, -104(%rbp)
	movl	$65538, %esi            # imm = 0x10002
	callq	verify_signature
# BB#2:
	movabsq	$main_signature, %rdi
	movl	$65539, %esi            # imm = 0x10003
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	%xmm2, T
	movsd	%xmm1, T1
	movsd	%xmm0, T2
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$1, -104(%rbp)
	movl	$1, -100(%rbp)
	movl	$65539, %esi            # imm = 0x10003
	callq	verify_signature
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_33 Depth 2
                                        #     Child Loop BB0_47 Depth 2
                                        #     Child Loop BB0_51 Depth 2
                                        #     Child Loop BB0_55 Depth 2
                                        #     Child Loop BB0_59 Depth 2
	movabsq	$main_signature, %rdi
	movl	$65540, %esi            # imm = 0x10004
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movq	$0, -216(%rbp)
	imulq	$12, -64(%rbp), %rax
	movq	%rax, -208(%rbp)
	imulq	$14, -64(%rbp), %rax
	movq	%rax, -200(%rbp)
	imulq	$345, -64(%rbp), %rax   # imm = 0x159
	movq	%rax, -192(%rbp)
	imulq	$210, -64(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-64(%rbp), %rax
	shlq	$5, %rax
	movq	%rax, -176(%rbp)
	imulq	$899, -64(%rbp), %rax   # imm = 0x383
	movq	%rax, -168(%rbp)
	imulq	$616, -64(%rbp), %rax   # imm = 0x268
	movq	%rax, -160(%rbp)
	movq	$0, -152(%rbp)
	imulq	$93, -64(%rbp), %rax
	movq	%rax, -144(%rbp)
	movsd	%xmm1, -96(%rbp)
	movsd	%xmm0, -88(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -72(%rbp)
	movq	$1, -24(%rbp)
	movl	$65540, %esi            # imm = 0x10004
	callq	verify_signature
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_signature, %rdi
	movl	$65541, %esi            # imm = 0x10005
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %r14
	movq	-216(%rbp), %rbx
	movl	$65541, %esi            # imm = 0x10005
	callq	verify_signature
	cmpq	%rbx, %r14
	jg	.LBB0_7
# BB#5:                                 #   in Loop: Header=BB0_4 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65542, %esi            # imm = 0x10006
	callq	update_signature
	movabsq	$main_signature, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	subsd	-72(%rbp), %xmm0
	mulsd	T, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	subsd	-80(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	mulsd	T, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-88(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	mulsd	T, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%xmm0, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm0
	addsd	-88(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	mulsd	T, %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	$65542, %esi            # imm = 0x10006
	callq	verify_signature
# BB#6:                                 #   in Loop: Header=BB0_4 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65543, %esi            # imm = 0x10007
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movl	$65543, %esi            # imm = 0x10007
	callq	verify_signature
	jmp	.LBB0_4
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65544, %esi            # imm = 0x10008
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm1, E1+8
	movsd	%xmm0, E1+16
	movsd	%xmm0, E1+24
	movsd	%xmm0, E1+32
	movq	$1, -24(%rbp)
	movl	$65544, %esi            # imm = 0x10008
	callq	verify_signature
.LBB0_8:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_signature, %rdi
	movl	$65545, %esi            # imm = 0x10009
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %r14
	movq	-208(%rbp), %rbx
	movl	$65545, %esi            # imm = 0x10009
	callq	verify_signature
	cmpq	%rbx, %r14
	jg	.LBB0_11
# BB#9:                                 #   in Loop: Header=BB0_8 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65546, %esi            # imm = 0x1000A
	callq	update_signature
	movabsq	$main_signature, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movsd	E1+8, %xmm0             # xmm0 = mem[0],zero
	addsd	E1+16, %xmm0
	addsd	E1+24, %xmm0
	subsd	E1+32, %xmm0
	mulsd	T, %xmm0
	movsd	%xmm0, E1+8
	movsd	E1+8, %xmm0             # xmm0 = mem[0],zero
	addsd	E1+16, %xmm0
	subsd	E1+24, %xmm0
	addsd	E1+32, %xmm0
	mulsd	T, %xmm0
	movsd	%xmm0, E1+16
	movsd	E1+8, %xmm0             # xmm0 = mem[0],zero
	subsd	E1+16, %xmm0
	addsd	E1+24, %xmm0
	addsd	E1+32, %xmm0
	mulsd	T, %xmm0
	movsd	%xmm0, E1+24
	movsd	E1+8, %xmm0             # xmm0 = mem[0],zero
	movq	%xmm0, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm0
	addsd	E1+16, %xmm0
	addsd	E1+24, %xmm0
	addsd	E1+32, %xmm0
	mulsd	T, %xmm0
	movsd	%xmm0, E1+32
	movl	$65546, %esi            # imm = 0x1000A
	callq	verify_signature
# BB#10:                                #   in Loop: Header=BB0_8 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65547, %esi            # imm = 0x1000B
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movl	$65547, %esi            # imm = 0x1000B
	callq	verify_signature
	jmp	.LBB0_8
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65548, %esi            # imm = 0x1000C
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	$1, -24(%rbp)
	movl	$65548, %esi            # imm = 0x1000C
	callq	verify_signature
.LBB0_12:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_signature, %rdi
	movl	$65549, %esi            # imm = 0x1000D
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %r14
	movq	-200(%rbp), %rbx
	movl	$65549, %esi            # imm = 0x1000D
	callq	verify_signature
	cmpq	%rbx, %r14
	jg	.LBB0_15
# BB#13:                                #   in Loop: Header=BB0_12 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65550, %esi            # imm = 0x1000E
	callq	update_signature
	movabsq	$E1, %rdi
	callq	PA
	movabsq	$main_signature, %rdi
	movl	$65550, %esi            # imm = 0x1000E
	callq	verify_signature
# BB#14:                                #   in Loop: Header=BB0_12 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65551, %esi            # imm = 0x1000F
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movl	$65551, %esi            # imm = 0x1000F
	callq	verify_signature
	jmp	.LBB0_12
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65552, %esi            # imm = 0x10010
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$1, J
	movq	$1, -24(%rbp)
	movl	$65552, %esi            # imm = 0x10010
	callq	verify_signature
.LBB0_16:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_signature, %rdi
	movl	$65553, %esi            # imm = 0x10011
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %r14
	movq	-192(%rbp), %rbx
	movl	$65553, %esi            # imm = 0x10011
	callq	verify_signature
	cmpq	%rbx, %r14
	jg	.LBB0_28
# BB#17:                                #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65554, %esi            # imm = 0x10012
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	J, %ebx
	movl	$65554, %esi            # imm = 0x10012
	callq	verify_signature
	cmpl	$1, %ebx
	jne	.LBB0_19
# BB#18:                                #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65555, %esi            # imm = 0x10013
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$2, J
	movl	$65555, %esi            # imm = 0x10013
	callq	verify_signature
	jmp	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65556, %esi            # imm = 0x10014
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$3, J
	movl	$65556, %esi            # imm = 0x10014
	callq	verify_signature
.LBB0_20:                               #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65557, %esi            # imm = 0x10015
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	J, %ebx
	movl	$65557, %esi            # imm = 0x10015
	callq	verify_signature
	cmpl	$2, %ebx
	jle	.LBB0_22
# BB#21:                                #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65558, %esi            # imm = 0x10016
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$0, J
	movl	$65558, %esi            # imm = 0x10016
	callq	verify_signature
	jmp	.LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65559, %esi            # imm = 0x10017
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$1, J
	movl	$65559, %esi            # imm = 0x10017
	callq	verify_signature
.LBB0_23:                               #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65560, %esi            # imm = 0x10018
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	J, %ebx
	movl	$65560, %esi            # imm = 0x10018
	callq	verify_signature
	cmpl	$1, %ebx
	jge	.LBB0_25
# BB#24:                                #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65561, %esi            # imm = 0x10019
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$1, J
	movl	$65561, %esi            # imm = 0x10019
	callq	verify_signature
	jmp	.LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65562, %esi            # imm = 0x1001A
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$0, J
	movl	$65562, %esi            # imm = 0x1001A
	callq	verify_signature
.LBB0_26:                               #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65563, %esi            # imm = 0x1001B
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$65563, %esi            # imm = 0x1001B
	callq	verify_signature
# BB#27:                                #   in Loop: Header=BB0_16 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65564, %esi            # imm = 0x1001C
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movl	$65564, %esi            # imm = 0x1001C
	callq	verify_signature
	jmp	.LBB0_16
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65565, %esi            # imm = 0x1001D
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$1, J
	movl	$2, K
	movl	$3, L
	movq	$1, -24(%rbp)
	movl	$65565, %esi            # imm = 0x1001D
	callq	verify_signature
.LBB0_29:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_signature, %rdi
	movl	$65566, %esi            # imm = 0x1001E
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %r14
	movq	-184(%rbp), %rbx
	movl	$65566, %esi            # imm = 0x1001E
	callq	verify_signature
	cmpq	%rbx, %r14
	jg	.LBB0_32
# BB#30:                                #   in Loop: Header=BB0_29 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65567, %esi            # imm = 0x1001F
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	J, %eax
	movl	K, %ecx
	subl	J, %ecx
	imull	%eax, %ecx
	movl	L, %eax
	subl	K, %eax
	imull	%ecx, %eax
	movl	%eax, J
	movl	L, %eax
	imull	K, %eax
	movl	L, %ecx
	subl	J, %ecx
	imull	K, %ecx
	subl	%ecx, %eax
	movl	%eax, K
	movl	L, %eax
	subl	K, %eax
	movl	K, %ecx
	addl	J, %ecx
	imull	%eax, %ecx
	movl	%ecx, L
	movl	J, %eax
	addl	K, %eax
	addl	L, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	L, %eax
	subl	$1, %eax
	cltq
	movsd	%xmm0, E1(,%rax,8)
	movl	J, %eax
	imull	K, %eax
	imull	L, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	K, %eax
	subl	$1, %eax
	cltq
	movsd	%xmm0, E1(,%rax,8)
	movl	$65567, %esi            # imm = 0x1001F
	callq	verify_signature
# BB#31:                                #   in Loop: Header=BB0_29 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65568, %esi            # imm = 0x10020
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movl	$65568, %esi            # imm = 0x10020
	callq	verify_signature
	jmp	.LBB0_29
.LBB0_32:                               #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65569, %esi            # imm = 0x10021
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_5(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm0, -56(%rbp)
	movq	$1, -24(%rbp)
	movl	$65569, %esi            # imm = 0x10021
	callq	verify_signature
.LBB0_33:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_signature, %rdi
	movl	$65570, %esi            # imm = 0x10022
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %r14
	movq	-176(%rbp), %rbx
	movl	$65570, %esi            # imm = 0x10022
	callq	verify_signature
	cmpq	%rbx, %r14
	jg	.LBB0_46
# BB#34:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65571, %esi            # imm = 0x10023
	callq	update_signature
	movabsq	$main_signature, %rbx
	movsd	T, %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movsd	T2, %xmm0               # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$65571, %esi            # imm = 0x10023
	callq	verify_signature
# BB#35:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65572, %esi            # imm = 0x10024
	callq	update_signature
	movabsq	$main_signature, %rbx
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$65572, %esi            # imm = 0x10024
	callq	verify_signature
# BB#36:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65573, %esi            # imm = 0x10025
	callq	update_signature
	movabsq	$main_signature, %rbx
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	callq	cos
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$65573, %esi            # imm = 0x10025
	callq	verify_signature
# BB#37:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65574, %esi            # imm = 0x10026
	callq	update_signature
	movabsq	$main_signature, %rbx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-56(%rbp), %xmm0
	callq	cos
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movl	$65574, %esi            # imm = 0x10026
	callq	verify_signature
# BB#38:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65575, %esi            # imm = 0x10027
	callq	update_signature
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	-112(%rbp), %xmm1       # 8-byte Folded Reload
	subsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	callq	atan
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movabsq	$main_signature, %rdi
	movl	$65575, %esi            # imm = 0x10027
	callq	verify_signature
# BB#39:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65576, %esi            # imm = 0x10028
	callq	update_signature
	movabsq	$main_signature, %rbx
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -40(%rbp)
	movsd	T, %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movsd	T2, %xmm0               # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$65576, %esi            # imm = 0x10028
	callq	verify_signature
# BB#40:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65577, %esi            # imm = 0x10029
	callq	update_signature
	movabsq	$main_signature, %rbx
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$65577, %esi            # imm = 0x10029
	callq	verify_signature
# BB#41:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65578, %esi            # imm = 0x1002A
	callq	update_signature
	movabsq	$main_signature, %rbx
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	callq	cos
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$65578, %esi            # imm = 0x1002A
	callq	verify_signature
# BB#42:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65579, %esi            # imm = 0x1002B
	callq	update_signature
	movabsq	$main_signature, %rbx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-56(%rbp), %xmm0
	callq	cos
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movl	$65579, %esi            # imm = 0x1002B
	callq	verify_signature
# BB#43:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65580, %esi            # imm = 0x1002C
	callq	update_signature
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	-112(%rbp), %xmm1       # 8-byte Folded Reload
	subsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	callq	atan
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movabsq	$main_signature, %rdi
	movl	$65580, %esi            # imm = 0x1002C
	callq	verify_signature
# BB#44:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65581, %esi            # imm = 0x1002D
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -56(%rbp)
	movl	$65581, %esi            # imm = 0x1002D
	callq	verify_signature
# BB#45:                                #   in Loop: Header=BB0_33 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65582, %esi            # imm = 0x1002E
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movl	$65582, %esi            # imm = 0x1002E
	callq	verify_signature
	jmp	.LBB0_33
.LBB0_46:                               #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65583, %esi            # imm = 0x1002F
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm0, -136(%rbp)
	movq	$1, -24(%rbp)
	movl	$65583, %esi            # imm = 0x1002F
	callq	verify_signature
.LBB0_47:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_signature, %rdi
	movl	$65584, %esi            # imm = 0x10030
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %r14
	movq	-168(%rbp), %rbx
	movl	$65584, %esi            # imm = 0x10030
	callq	verify_signature
	cmpq	%rbx, %r14
	jg	.LBB0_50
# BB#48:                                #   in Loop: Header=BB0_47 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65585, %esi            # imm = 0x10031
	callq	update_signature
	leaq	-136(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	P3
	movabsq	$main_signature, %rdi
	movl	$65585, %esi            # imm = 0x10031
	callq	verify_signature
# BB#49:                                #   in Loop: Header=BB0_47 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65586, %esi            # imm = 0x10032
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movl	$65586, %esi            # imm = 0x10032
	callq	verify_signature
	jmp	.LBB0_47
.LBB0_50:                               #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65587, %esi            # imm = 0x10033
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_6(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_4(%rip), %xmm2   # xmm2 = mem[0],zero
	movl	$1, J
	movl	$2, K
	movl	$3, L
	movsd	%xmm2, E1+8
	movsd	%xmm1, E1+16
	movsd	%xmm0, E1+24
	movq	$1, -24(%rbp)
	movl	$65587, %esi            # imm = 0x10033
	callq	verify_signature
.LBB0_51:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_signature, %rdi
	movl	$65588, %esi            # imm = 0x10034
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %r14
	movq	-160(%rbp), %rbx
	movl	$65588, %esi            # imm = 0x10034
	callq	verify_signature
	cmpq	%rbx, %r14
	jg	.LBB0_54
# BB#52:                                #   in Loop: Header=BB0_51 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65589, %esi            # imm = 0x10035
	callq	update_signature
	callq	P0
	movabsq	$main_signature, %rdi
	movl	$65589, %esi            # imm = 0x10035
	callq	verify_signature
# BB#53:                                #   in Loop: Header=BB0_51 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65590, %esi            # imm = 0x10036
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movl	$65590, %esi            # imm = 0x10036
	callq	verify_signature
	jmp	.LBB0_51
.LBB0_54:                               #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65591, %esi            # imm = 0x10037
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$2, J
	movl	$3, K
	movq	$1, -24(%rbp)
	movl	$65591, %esi            # imm = 0x10037
	callq	verify_signature
.LBB0_55:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_signature, %rdi
	movl	$65592, %esi            # imm = 0x10038
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %r14
	movq	-152(%rbp), %rbx
	movl	$65592, %esi            # imm = 0x10038
	callq	verify_signature
	cmpq	%rbx, %r14
	jg	.LBB0_58
# BB#56:                                #   in Loop: Header=BB0_55 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65593, %esi            # imm = 0x10039
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	J, %eax
	addl	K, %eax
	movl	%eax, J
	movl	J, %eax
	addl	K, %eax
	movl	%eax, K
	movl	K, %eax
	subl	J, %eax
	movl	%eax, J
	movl	K, %eax
	subl	J, %eax
	subl	J, %eax
	movl	%eax, K
	movl	$65593, %esi            # imm = 0x10039
	callq	verify_signature
# BB#57:                                #   in Loop: Header=BB0_55 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65594, %esi            # imm = 0x1003A
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movl	$65594, %esi            # imm = 0x1003A
	callq	verify_signature
	jmp	.LBB0_55
.LBB0_58:                               #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65595, %esi            # imm = 0x1003B
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_7(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movq	$1, -24(%rbp)
	movl	$65595, %esi            # imm = 0x1003B
	callq	verify_signature
.LBB0_59:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_signature, %rdi
	movl	$65596, %esi            # imm = 0x1003C
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %r14
	movq	-144(%rbp), %rbx
	movl	$65596, %esi            # imm = 0x1003C
	callq	verify_signature
	cmpq	%rbx, %r14
	jg	.LBB0_65
# BB#60:                                #   in Loop: Header=BB0_59 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65597, %esi            # imm = 0x1003D
	callq	update_signature
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	log
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movabsq	$main_signature, %rdi
	movl	$65597, %esi            # imm = 0x1003D
	callq	verify_signature
# BB#61:                                #   in Loop: Header=BB0_59 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65598, %esi            # imm = 0x1003E
	callq	update_signature
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	T1, %xmm0
	callq	exp
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movabsq	$main_signature, %rdi
	movl	$65598, %esi            # imm = 0x1003E
	callq	verify_signature
# BB#62:                                #   in Loop: Header=BB0_59 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65599, %esi            # imm = 0x1003F
	callq	update_signature
	movabsq	$main_signature, %rbx
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$65599, %esi            # imm = 0x1003F
	callq	verify_signature
# BB#63:                                #   in Loop: Header=BB0_59 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65600, %esi            # imm = 0x10040
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movl	$65600, %esi            # imm = 0x10040
	callq	verify_signature
# BB#64:                                #   in Loop: Header=BB0_59 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65601, %esi            # imm = 0x10041
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movl	$65601, %esi            # imm = 0x10041
	callq	verify_signature
	jmp	.LBB0_59
.LBB0_65:                               #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65602, %esi            # imm = 0x10042
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-100(%rbp), %ebx
	addl	$1, %ebx
	movl	%ebx, -100(%rbp)
	movl	-104(%rbp), %r14d
	movl	$65602, %esi            # imm = 0x10042
	callq	verify_signature
	cmpl	%r14d, %ebx
	jg	.LBB0_67
# BB#66:                                #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65603, %esi            # imm = 0x10043
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$65603, %esi            # imm = 0x10043
	callq	verify_signature
	jmp	.LBB0_3
.LBB0_67:
	movabsq	$main_signature, %rdi
	movl	$65604, %esi            # imm = 0x10044
	callq	update_signature
	leaq	-240(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_signature, %rdi
	movl	$65604, %esi            # imm = 0x10044
	callq	verify_signature
# BB#68:
	movabsq	$main_signature, %rdi
	movl	$65605, %esi            # imm = 0x10045
	callq	update_signature
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$main_signature, %rdi
	movl	$65605, %esi            # imm = 0x10045
	callq	verify_signature
# BB#69:
	movabsq	$main_signature, %rdi
	movl	$65606, %esi            # imm = 0x10046
	callq	update_signature
	movabsq	$.L.str.1, %rdi
	movq	-240(%rbp), %rax
	subq	-256(%rbp), %rax
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	movq	-232(%rbp), %rsi
	subq	-248(%rbp), %rsi
	addq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movabsq	$main_signature, %rdi
	movl	$65606, %esi            # imm = 0x10046
	callq	verify_signature
# BB#70:
	movabsq	$main_signature, %rdi
	movl	$65607, %esi            # imm = 0x10047
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$65607, %esi            # imm = 0x10047
	callq	verify_signature
	xorl	%eax, %eax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	PA                      # -- Begin function PA
	.p2align	4, 0x90
	.type	PA,@function
PA:                                     # @PA
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
	movq	%rdi, %rbx
	movabsq	$PA_signature, %rdi
	movl	$196609, %esi           # imm = 0x30001
	callq	update_signature
	movabsq	$PA_signature, %rdi
	movq	%rbx, -16(%rbp)
	movl	$0, J
	movl	$196609, %esi           # imm = 0x30001
	callq	verify_signature
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movabsq	$PA_signature, %rdi
	movl	$196610, %esi           # imm = 0x30002
	callq	update_signature
	movabsq	$PA_signature, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	addsd	16(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	addsd	24(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	subsd	32(%rcx), %xmm0
	mulsd	T, %xmm0
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	movq	-16(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	addsd	16(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	subsd	24(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	addsd	32(%rcx), %xmm0
	mulsd	T, %xmm0
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 16(%rcx)
	movq	-16(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	subsd	16(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	addsd	24(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	addsd	32(%rcx), %xmm0
	mulsd	T, %xmm0
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 24(%rcx)
	movq	-16(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	%xmm0, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm0
	movq	-16(%rbp), %rax
	addsd	16(%rax), %xmm0
	movq	-16(%rbp), %rax
	addsd	24(%rax), %xmm0
	movq	-16(%rbp), %rax
	addsd	32(%rax), %xmm0
	divsd	T2, %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movl	J, %eax
	addl	$1, %eax
	movl	%eax, J
	movl	J, %ebx
	movl	$196610, %esi           # imm = 0x30002
	callq	verify_signature
	cmpl	$6, %ebx
	jge	.LBB1_3
# BB#2:                                 #   in Loop: Header=BB1_1 Depth=1
	movabsq	$PA_signature, %rdi
	movl	$196611, %esi           # imm = 0x30003
	callq	update_signature
	movabsq	$PA_signature, %rdi
	movl	$196611, %esi           # imm = 0x30003
	callq	verify_signature
	jmp	.LBB1_1
.LBB1_3:
	movabsq	$PA_signature, %rdi
	movl	$196612, %esi           # imm = 0x30004
	callq	update_signature
	movabsq	$PA_signature, %rdi
	movl	$196612, %esi           # imm = 0x30004
	callq	verify_signature
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	PA, .Lfunc_end1-PA
	.cfi_endproc
                                        # -- End function
	.globl	P3                      # -- Begin function P3
	.p2align	4, 0x90
	.type	P3,@function
P3:                                     # @P3
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
	subq	$56, %rsp
.Lcfi12:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movabsq	$P3_signature, %rdi
	movl	$458753, %esi           # imm = 0x70001
	callq	update_signature
	movabsq	$P3_signature, %rdi
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	%rbx, -48(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	T, %xmm0                # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-16(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	T, %xmm0                # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-16(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-16(%rbp), %xmm0
	divsd	T2, %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$458753, %esi           # imm = 0x70001
	callq	verify_signature
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	P3, .Lfunc_end2-P3
	.cfi_endproc
                                        # -- End function
	.globl	P0                      # -- Begin function P0
	.p2align	4, 0x90
	.type	P0,@function
P0:                                     # @P0
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
	movabsq	$P0_signature, %rdi
	movl	$524289, %esi           # imm = 0x80001
	callq	update_signature
	movabsq	$P0_signature, %rdi
	movslq	K, %rax
	movsd	E1(,%rax,8), %xmm0      # xmm0 = mem[0],zero
	movslq	J, %rax
	movsd	%xmm0, E1(,%rax,8)
	movslq	L, %rax
	movsd	E1(,%rax,8), %xmm0      # xmm0 = mem[0],zero
	movslq	K, %rax
	movsd	%xmm0, E1(,%rax,8)
	movslq	J, %rax
	movsd	E1(,%rax,8), %xmm0      # xmm0 = mem[0],zero
	movslq	L, %rax
	movsd	%xmm0, E1(,%rax,8)
	movl	$524289, %esi           # imm = 0x80001
	callq	verify_signature
	popq	%rbp
	retq
.Lfunc_end3:
	.size	P0, .Lfunc_end3-P0
	.cfi_endproc
                                        # -- End function
	.globl	CallcheckerSet          # -- Begin function CallcheckerSet
	.p2align	4, 0x90
	.type	CallcheckerSet,@function
CallcheckerSet:                         # @CallcheckerSet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi16:
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
.Lfunc_end4:
	.size	CallcheckerSet, .Lfunc_end4-CallcheckerSet
	.cfi_endproc
                                        # -- End function
	.type	T,@object               # @T
	.comm	T,8,8
	.type	T1,@object              # @T1
	.comm	T1,8,8
	.type	T2,@object              # @T2
	.comm	T2,8,8
	.type	E1,@object              # @E1
	.comm	E1,40,16
	.type	J,@object               # @J
	.comm	J,4,4
	.type	K,@object               # @K
	.comm	K,4,4
	.type	L,@object               # @L
	.comm	L,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" [target has finished!]\n"
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	" [target] %ld\n"
	.size	.L.str.1, 15

	.type	main_signature,@object  # @main_signature
	.bss
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

	.type	PA_signature,@object    # @PA_signature
	.globl	PA_signature
	.p2align	2
PA_signature:
	.long	0                       # 0x0
	.size	PA_signature, 4

	.type	atan_signature,@object  # @atan_signature
	.globl	atan_signature
	.p2align	2
atan_signature:
	.long	0                       # 0x0
	.size	atan_signature, 4

	.type	sin_signature,@object   # @sin_signature
	.globl	sin_signature
	.p2align	2
sin_signature:
	.long	0                       # 0x0
	.size	sin_signature, 4

	.type	cos_signature,@object   # @cos_signature
	.globl	cos_signature
	.p2align	2
cos_signature:
	.long	0                       # 0x0
	.size	cos_signature, 4

	.type	P3_signature,@object    # @P3_signature
	.globl	P3_signature
	.p2align	2
P3_signature:
	.long	0                       # 0x0
	.size	P3_signature, 4

	.type	P0_signature,@object    # @P0_signature
	.globl	P0_signature
	.p2align	2
P0_signature:
	.long	0                       # 0x0
	.size	P0_signature, 4

	.type	sqrt_signature,@object  # @sqrt_signature
	.globl	sqrt_signature
	.p2align	2
sqrt_signature:
	.long	0                       # 0x0
	.size	sqrt_signature, 4

	.type	exp_signature,@object   # @exp_signature
	.globl	exp_signature
	.p2align	2
exp_signature:
	.long	0                       # 0x0
	.size	exp_signature, 4

	.type	log_signature,@object   # @log_signature
	.globl	log_signature
	.p2align	2
log_signature:
	.long	0                       # 0x0
	.size	log_signature, 4

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
