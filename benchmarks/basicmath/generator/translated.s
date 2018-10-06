	.text
	.file	"llvm-link"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	-4594234569871327232    # double -30
.LCPI0_1:
	.quad	4629700416936869888     # double 32
.LCPI0_2:
	.quad	-4601271444289093632    # double -10.5
.LCPI0_3:
	.quad	4607182418800017408     # double 1
.LCPI0_4:
	.quad	4625478292286210048     # double 17
.LCPI0_5:
	.quad	-4606619468846596096    # double -4.5
.LCPI0_6:
	.quad	-4593953094894616576    # double -31
.LCPI0_7:
	.quad	4626885667169763328     # double 22
.LCPI0_8:
	.quad	-4608308318706860032    # double -3.5
.LCPI0_9:
	.quad	-4593249407452839936    # double -35
.LCPI0_10:
	.quad	-4599470004438145434    # double -13.699999999999999
.LCPI0_11:
	.quad	4622945017495814144     # double 12
.LCPI0_12:
	.quad	4617315517961601024     # double 5
.LCPI0_13:
	.quad	4623136420479977390     # double 12.34
.LCPI0_14:
	.quad	-4596036009722275430    # double -23.600000000000001
.LCPI0_15:
	.quad	4618441417868443648     # double 6
.LCPI0_16:
	.quad	-4588894285875684311    # double -67.890000000000001
.LCPI0_17:
	.quad	4629981891913580544     # double 34
.LCPI0_18:
	.quad	4620130267728707584     # double 7.5
.LCPI0_19:
	.quad	4621070394150921175     # double 8.6699999999999999
.LCPI0_20:
	.quad	4625196817309499392     # double 16
.LCPI0_21:
	.quad	4617653287933653811     # double 5.2999999999999998
.LCPI0_22:
	.quad	-4613037098315599053    # double -1.7
.LCPI0_23:
	.quad	4645040803167600640     # double 360
.LCPI0_24:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
.LCPI0_25:
	.quad	4611686018427387904     # double 2
.LCPI0_26:
	.quad	4616189618054758400     # double 4
.LCPI0_27:
	.quad	4640537203540230144     # double 180
.LCPI0_28:
	.quad	4663055201677082624     # double 5760
.LCPI0_29:
	.quad	4562254508917369340     # double 0.001
.LCPI0_30:
	.quad	4621819117588971520     # double 10
.LCPI0_31:
	.quad	4624633867356078080     # double 15
.LCPI0_32:
	.quad	4598175219545276416     # double 0.25
.LCPI0_33:
	.quad	-4616189618054758400    # double -1
.LCPI0_34:
	.quad	-4606056518893174784    # double -5
.LCPI0_35:
	.quad	4603669611090668421     # double 0.60999999999999999
.LCPI0_36:
	.quad	4601796113645682295     # double 0.45100000000000001
.LCPI0_37:
	.quad	-4600427019358961664    # double -12
.LCPI0_38:
	.quad	4631530004285489152     # double 45
.LCPI0_39:
	.quad	-4602678819172646912    # double -8
.LCPI0_40:
	.quad	4613937818241073152     # double 3
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
	subq	$160, %rsp
.Lcfi3:
	.cfi_offset %rbx, -32
.Lcfi4:
	.cfi_offset %r14, -24
	movabsq	$main_signature, %rdi
	movl	$65537, %esi            # imm = 0x10001
	callq	update_signature
	leaq	-160(%rbp), %rdi
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm3   # xmm3 = mem[0],zero
	movl	$0, -124(%rbp)
	movsd	%xmm3, -56(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	$1072497001, -80(%rbp)  # imm = 0x3FED0169
	movq	$0, -168(%rbp)
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_signature, %rdi
	movl	$65537, %esi            # imm = 0x10001
	callq	verify_signature
# BB#1:
	movabsq	$main_signature, %rdi
	movl	$65538, %esi            # imm = 0x10002
	callq	update_signature
	leaq	-24(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	SolveCubic
	movabsq	$main_signature, %rdi
	movl	$65538, %esi            # imm = 0x10002
	callq	verify_signature
# BB#2:
	movabsq	$main_signature, %rdi
	movl	$65539, %esi            # imm = 0x10003
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$0, -20(%rbp)
	movl	$65539, %esi            # imm = 0x10003
	callq	verify_signature
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movabsq	$main_signature, %rdi
	movl	$65540, %esi            # imm = 0x10004
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %r14d
	movl	-24(%rbp), %ebx
	movl	$65540, %esi            # imm = 0x10004
	callq	verify_signature
	cmpl	%ebx, %r14d
	jge	.LBB0_6
# BB#4:                                 #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65541, %esi            # imm = 0x10005
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movl	$65541, %esi            # imm = 0x10005
	callq	verify_signature
# BB#5:                                 #   in Loop: Header=BB0_3 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65542, %esi            # imm = 0x10006
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$65542, %esi            # imm = 0x10006
	callq	verify_signature
	jmp	.LBB0_3
.LBB0_6:
	movabsq	$main_signature, %rdi
	movl	$65543, %esi            # imm = 0x10007
	callq	update_signature
	leaq	-24(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_5(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	SolveCubic
	movabsq	$main_signature, %rdi
	movl	$65543, %esi            # imm = 0x10007
	callq	verify_signature
# BB#7:
	movabsq	$main_signature, %rdi
	movl	$65544, %esi            # imm = 0x10008
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$0, -20(%rbp)
	movl	$65544, %esi            # imm = 0x10008
	callq	verify_signature
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movabsq	$main_signature, %rdi
	movl	$65545, %esi            # imm = 0x10009
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %r14d
	movl	-24(%rbp), %ebx
	movl	$65545, %esi            # imm = 0x10009
	callq	verify_signature
	cmpl	%ebx, %r14d
	jge	.LBB0_11
# BB#9:                                 #   in Loop: Header=BB0_8 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65546, %esi            # imm = 0x1000A
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movl	$65546, %esi            # imm = 0x1000A
	callq	verify_signature
# BB#10:                                #   in Loop: Header=BB0_8 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65547, %esi            # imm = 0x1000B
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$65547, %esi            # imm = 0x1000B
	callq	verify_signature
	jmp	.LBB0_8
.LBB0_11:
	movabsq	$main_signature, %rdi
	movl	$65548, %esi            # imm = 0x1000C
	callq	update_signature
	leaq	-24(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movsd	.LCPI0_6(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_7(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_8(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	SolveCubic
	movabsq	$main_signature, %rdi
	movl	$65548, %esi            # imm = 0x1000C
	callq	verify_signature
# BB#12:
	movabsq	$main_signature, %rdi
	movl	$65549, %esi            # imm = 0x1000D
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$0, -20(%rbp)
	movl	$65549, %esi            # imm = 0x1000D
	callq	verify_signature
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_signature, %rdi
	movl	$65550, %esi            # imm = 0x1000E
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %r14d
	movl	-24(%rbp), %ebx
	movl	$65550, %esi            # imm = 0x1000E
	callq	verify_signature
	cmpl	%ebx, %r14d
	jge	.LBB0_16
# BB#14:                                #   in Loop: Header=BB0_13 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65551, %esi            # imm = 0x1000F
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movl	$65551, %esi            # imm = 0x1000F
	callq	verify_signature
# BB#15:                                #   in Loop: Header=BB0_13 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65552, %esi            # imm = 0x10010
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$65552, %esi            # imm = 0x10010
	callq	verify_signature
	jmp	.LBB0_13
.LBB0_16:
	movabsq	$main_signature, %rdi
	movl	$65553, %esi            # imm = 0x10011
	callq	update_signature
	leaq	-24(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movsd	.LCPI0_9(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_10(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	SolveCubic
	movabsq	$main_signature, %rdi
	movl	$65553, %esi            # imm = 0x10011
	callq	verify_signature
# BB#17:
	movabsq	$main_signature, %rdi
	movl	$65554, %esi            # imm = 0x10012
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$0, -20(%rbp)
	movl	$65554, %esi            # imm = 0x10012
	callq	verify_signature
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_signature, %rdi
	movl	$65555, %esi            # imm = 0x10013
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %r14d
	movl	-24(%rbp), %ebx
	movl	$65555, %esi            # imm = 0x10013
	callq	verify_signature
	cmpl	%ebx, %r14d
	jge	.LBB0_21
# BB#19:                                #   in Loop: Header=BB0_18 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65556, %esi            # imm = 0x10014
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_40(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movl	$65556, %esi            # imm = 0x10014
	callq	verify_signature
# BB#20:                                #   in Loop: Header=BB0_18 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65557, %esi            # imm = 0x10015
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$65557, %esi            # imm = 0x10015
	callq	verify_signature
	jmp	.LBB0_18
.LBB0_21:
	movabsq	$main_signature, %rdi
	movl	$65558, %esi            # imm = 0x10016
	callq	update_signature
	leaq	-24(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movsd	.LCPI0_11(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_12(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_13(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	SolveCubic
	movabsq	$main_signature, %rdi
	movl	$65558, %esi            # imm = 0x10016
	callq	verify_signature
# BB#22:
	movabsq	$main_signature, %rdi
	movl	$65559, %esi            # imm = 0x10017
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$0, -20(%rbp)
	movl	$65559, %esi            # imm = 0x10017
	callq	verify_signature
.LBB0_23:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_signature, %rdi
	movl	$65560, %esi            # imm = 0x10018
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %r14d
	movl	-24(%rbp), %ebx
	movl	$65560, %esi            # imm = 0x10018
	callq	verify_signature
	cmpl	%ebx, %r14d
	jge	.LBB0_26
# BB#24:                                #   in Loop: Header=BB0_23 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65561, %esi            # imm = 0x10019
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_39(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movl	$65561, %esi            # imm = 0x10019
	callq	verify_signature
# BB#25:                                #   in Loop: Header=BB0_23 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65562, %esi            # imm = 0x1001A
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$65562, %esi            # imm = 0x1001A
	callq	verify_signature
	jmp	.LBB0_23
.LBB0_26:
	movabsq	$main_signature, %rdi
	movl	$65563, %esi            # imm = 0x1001B
	callq	update_signature
	leaq	-24(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movsd	.LCPI0_14(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_15(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_16(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	SolveCubic
	movabsq	$main_signature, %rdi
	movl	$65563, %esi            # imm = 0x1001B
	callq	verify_signature
# BB#27:
	movabsq	$main_signature, %rdi
	movl	$65564, %esi            # imm = 0x1001C
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$0, -20(%rbp)
	movl	$65564, %esi            # imm = 0x1001C
	callq	verify_signature
.LBB0_28:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_signature, %rdi
	movl	$65565, %esi            # imm = 0x1001D
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %r14d
	movl	-24(%rbp), %ebx
	movl	$65565, %esi            # imm = 0x1001D
	callq	verify_signature
	cmpl	%ebx, %r14d
	jge	.LBB0_31
# BB#29:                                #   in Loop: Header=BB0_28 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65566, %esi            # imm = 0x1001E
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_38(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movl	$65566, %esi            # imm = 0x1001E
	callq	verify_signature
# BB#30:                                #   in Loop: Header=BB0_28 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65567, %esi            # imm = 0x1001F
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$65567, %esi            # imm = 0x1001F
	callq	verify_signature
	jmp	.LBB0_28
.LBB0_31:
	movabsq	$main_signature, %rdi
	movl	$65568, %esi            # imm = 0x10020
	callq	update_signature
	leaq	-24(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movsd	.LCPI0_17(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_18(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_19(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	SolveCubic
	movabsq	$main_signature, %rdi
	movl	$65568, %esi            # imm = 0x10020
	callq	verify_signature
# BB#32:
	movabsq	$main_signature, %rdi
	movl	$65569, %esi            # imm = 0x10021
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$0, -20(%rbp)
	movl	$65569, %esi            # imm = 0x10021
	callq	verify_signature
.LBB0_33:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_signature, %rdi
	movl	$65570, %esi            # imm = 0x10022
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %r14d
	movl	-24(%rbp), %ebx
	movl	$65570, %esi            # imm = 0x10022
	callq	verify_signature
	cmpl	%ebx, %r14d
	jge	.LBB0_36
# BB#34:                                #   in Loop: Header=BB0_33 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65571, %esi            # imm = 0x10023
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_37(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movl	$65571, %esi            # imm = 0x10023
	callq	verify_signature
# BB#35:                                #   in Loop: Header=BB0_33 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65572, %esi            # imm = 0x10024
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$65572, %esi            # imm = 0x10024
	callq	verify_signature
	jmp	.LBB0_33
.LBB0_36:
	movabsq	$main_signature, %rdi
	movl	$65573, %esi            # imm = 0x10025
	callq	update_signature
	leaq	-24(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movsd	.LCPI0_20(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_21(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_22(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	SolveCubic
	movabsq	$main_signature, %rdi
	movl	$65573, %esi            # imm = 0x10025
	callq	verify_signature
# BB#37:
	movabsq	$main_signature, %rdi
	movl	$65574, %esi            # imm = 0x10026
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$0, -20(%rbp)
	movl	$65574, %esi            # imm = 0x10026
	callq	verify_signature
.LBB0_38:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_40 Depth 2
                                        #       Child Loop BB0_42 Depth 3
                                        #         Child Loop BB0_44 Depth 4
                                        #           Child Loop BB0_46 Depth 5
	movabsq	$main_signature, %rdi
	movl	$65575, %esi            # imm = 0x10027
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %r14d
	movl	-24(%rbp), %ebx
	movl	$65575, %esi            # imm = 0x10027
	callq	verify_signature
	cmpl	%ebx, %r14d
	jge	.LBB0_57
# BB#39:                                #   in Loop: Header=BB0_38 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65576, %esi            # imm = 0x10028
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movl	$65576, %esi            # imm = 0x10028
	callq	verify_signature
.LBB0_40:                               #   Parent Loop BB0_38 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_42 Depth 3
                                        #         Child Loop BB0_44 Depth 4
                                        #           Child Loop BB0_46 Depth 5
	movabsq	$main_signature, %rdi
	movl	$65577, %esi            # imm = 0x10029
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movl	$65577, %esi            # imm = 0x10029
	callq	verify_signature
	movsd	.LCPI0_30(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0        # 8-byte Folded Reload
	jbe	.LBB0_55
# BB#41:                                #   in Loop: Header=BB0_40 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65578, %esi            # imm = 0x1002A
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_30(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movl	$65578, %esi            # imm = 0x1002A
	callq	verify_signature
.LBB0_42:                               #   Parent Loop BB0_38 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_44 Depth 4
                                        #           Child Loop BB0_46 Depth 5
	movabsq	$main_signature, %rdi
	movl	$65579, %esi            # imm = 0x1002B
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movl	$65579, %esi            # imm = 0x1002B
	callq	verify_signature
	xorps	%xmm0, %xmm0
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_53
# BB#43:                                #   in Loop: Header=BB0_42 Depth=3
	movabsq	$main_signature, %rdi
	movl	$65580, %esi            # imm = 0x1002C
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_12(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movl	$65580, %esi            # imm = 0x1002C
	callq	verify_signature
.LBB0_44:                               #   Parent Loop BB0_38 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        #       Parent Loop BB0_42 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_46 Depth 5
	movabsq	$main_signature, %rdi
	movl	$65581, %esi            # imm = 0x1002D
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movl	$65581, %esi            # imm = 0x1002D
	callq	verify_signature
	movsd	.LCPI0_31(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0        # 8-byte Folded Reload
	jbe	.LBB0_51
# BB#45:                                #   in Loop: Header=BB0_44 Depth=4
	movabsq	$main_signature, %rdi
	movl	$65582, %esi            # imm = 0x1002E
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_33(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movl	$65582, %esi            # imm = 0x1002E
	callq	verify_signature
.LBB0_46:                               #   Parent Loop BB0_38 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        #       Parent Loop BB0_42 Depth=3
                                        #         Parent Loop BB0_44 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movabsq	$main_signature, %rdi
	movl	$65583, %esi            # imm = 0x1002F
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movl	$65583, %esi            # imm = 0x1002F
	callq	verify_signature
	movsd	.LCPI0_34(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_49
# BB#47:                                #   in Loop: Header=BB0_46 Depth=5
	movabsq	$main_signature, %rdi
	movl	$65584, %esi            # imm = 0x10030
	callq	update_signature
	leaq	-24(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	SolveCubic
	movabsq	$main_signature, %rdi
	movl	$65584, %esi            # imm = 0x10030
	callq	verify_signature
# BB#48:                                #   in Loop: Header=BB0_46 Depth=5
	movabsq	$main_signature, %rdi
	movl	$65585, %esi            # imm = 0x10031
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_36(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movl	$65585, %esi            # imm = 0x10031
	callq	verify_signature
	jmp	.LBB0_46
.LBB0_49:                               #   in Loop: Header=BB0_44 Depth=4
	movabsq	$main_signature, %rdi
	movl	$65586, %esi            # imm = 0x10032
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$65586, %esi            # imm = 0x10032
	callq	verify_signature
# BB#50:                                #   in Loop: Header=BB0_44 Depth=4
	movabsq	$main_signature, %rdi
	movl	$65587, %esi            # imm = 0x10033
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_35(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	$65587, %esi            # imm = 0x10033
	callq	verify_signature
	jmp	.LBB0_44
.LBB0_51:                               #   in Loop: Header=BB0_42 Depth=3
	movabsq	$main_signature, %rdi
	movl	$65588, %esi            # imm = 0x10034
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$65588, %esi            # imm = 0x10034
	callq	verify_signature
# BB#52:                                #   in Loop: Header=BB0_42 Depth=3
	movabsq	$main_signature, %rdi
	movl	$65589, %esi            # imm = 0x10035
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_32(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movl	$65589, %esi            # imm = 0x10035
	callq	verify_signature
	jmp	.LBB0_42
.LBB0_53:                               #   in Loop: Header=BB0_40 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65590, %esi            # imm = 0x10036
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$65590, %esi            # imm = 0x10036
	callq	verify_signature
# BB#54:                                #   in Loop: Header=BB0_40 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65591, %esi            # imm = 0x10037
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	$65591, %esi            # imm = 0x10037
	callq	verify_signature
	jmp	.LBB0_40
.LBB0_55:                               #   in Loop: Header=BB0_38 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65592, %esi            # imm = 0x10038
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$65592, %esi            # imm = 0x10038
	callq	verify_signature
# BB#56:                                #   in Loop: Header=BB0_38 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65593, %esi            # imm = 0x10039
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$65593, %esi            # imm = 0x10039
	callq	verify_signature
	jmp	.LBB0_38
.LBB0_57:
	movabsq	$main_signature, %rdi
	movl	$65594, %esi            # imm = 0x1003A
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$0, -20(%rbp)
	movl	$65594, %esi            # imm = 0x1003A
	callq	verify_signature
.LBB0_58:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_signature, %rdi
	movl	$65595, %esi            # imm = 0x1003B
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %ebx
	movl	$65595, %esi            # imm = 0x1003B
	callq	verify_signature
	cmpl	$100000, %ebx           # imm = 0x186A0
	jge	.LBB0_61
# BB#59:                                #   in Loop: Header=BB0_58 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65596, %esi            # imm = 0x1003C
	callq	update_signature
	leaq	-120(%rbp), %rsi
	movslq	-20(%rbp), %rdi
	callq	usqrt
	movabsq	$main_signature, %rdi
	movl	$65596, %esi            # imm = 0x1003C
	callq	verify_signature
# BB#60:                                #   in Loop: Header=BB0_58 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65597, %esi            # imm = 0x1003D
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -20(%rbp)
	movl	$65597, %esi            # imm = 0x1003D
	callq	verify_signature
	jmp	.LBB0_58
.LBB0_61:
	movabsq	$main_signature, %rdi
	movl	$65598, %esi            # imm = 0x1003E
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	$1072497001, -80(%rbp)  # imm = 0x3FED0169
	movl	$65598, %esi            # imm = 0x1003E
	callq	verify_signature
.LBB0_62:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_signature, %rdi
	movl	$65599, %esi            # imm = 0x1003F
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-80(%rbp), %rbx
	movl	$65599, %esi            # imm = 0x1003F
	callq	verify_signature
	cmpq	$1072513385, %rbx       # imm = 0x3FED4169
	jae	.LBB0_65
# BB#63:                                #   in Loop: Header=BB0_62 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65600, %esi            # imm = 0x10040
	callq	update_signature
	leaq	-120(%rbp), %rsi
	movq	-80(%rbp), %rdi
	callq	usqrt
	movabsq	$main_signature, %rdi
	movl	$65600, %esi            # imm = 0x10040
	callq	verify_signature
# BB#64:                                #   in Loop: Header=BB0_62 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65601, %esi            # imm = 0x10041
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	movl	$65601, %esi            # imm = 0x10041
	callq	verify_signature
	jmp	.LBB0_62
.LBB0_65:
	movabsq	$main_signature, %rdi
	movl	$65602, %esi            # imm = 0x10042
	callq	update_signature
	movabsq	$main_signature, %rdi
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	$65602, %esi            # imm = 0x10042
	callq	verify_signature
.LBB0_66:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_signature, %rdi
	movl	$65603, %esi            # imm = 0x10043
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movl	$65603, %esi            # imm = 0x10043
	callq	verify_signature
	movsd	.LCPI0_23(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0        # 8-byte Folded Reload
	jb	.LBB0_70
# BB#67:                                #   in Loop: Header=BB0_66 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65604, %esi            # imm = 0x10044
	callq	update_signature
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	atan
	movabsq	$main_signature, %rdi
	movl	$65604, %esi            # imm = 0x10044
	callq	verify_signature
# BB#68:                                #   in Loop: Header=BB0_66 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65605, %esi            # imm = 0x10045
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$65605, %esi            # imm = 0x10045
	callq	verify_signature
# BB#69:                                #   in Loop: Header=BB0_66 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65606, %esi            # imm = 0x10046
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_29(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	$65606, %esi            # imm = 0x10046
	callq	verify_signature
	jmp	.LBB0_66
.LBB0_70:
	movabsq	$main_signature, %rdi
	movl	$65607, %esi            # imm = 0x10047
	callq	update_signature
	movabsq	$main_signature, %rdi
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	$65607, %esi            # imm = 0x10047
	callq	verify_signature
.LBB0_71:                               # =>This Inner Loop Header: Depth=1
	movabsq	$main_signature, %rdi
	movl	$65608, %esi            # imm = 0x10048
	callq	update_signature
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	callq	atan
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movabsq	$main_signature, %rdi
	movl	$65608, %esi            # imm = 0x10048
	callq	verify_signature
# BB#72:                                #   in Loop: Header=BB0_71 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65609, %esi            # imm = 0x10049
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_24(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_25(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_26(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	-88(%rbp), %xmm2        # 8-byte Folded Reload
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -88(%rbp)        # 8-byte Spill
	movl	$65609, %esi            # imm = 0x10049
	callq	verify_signature
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0        # 8-byte Folded Reload
	jb	.LBB0_77
# BB#73:                                #   in Loop: Header=BB0_71 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65610, %esi            # imm = 0x1004A
	callq	update_signature
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_27(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	callq	atan
	movabsq	$main_signature, %rdi
	movl	$65610, %esi            # imm = 0x1004A
	callq	verify_signature
# BB#74:                                #   in Loop: Header=BB0_71 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65611, %esi            # imm = 0x1004B
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$65611, %esi            # imm = 0x1004B
	callq	verify_signature
# BB#75:                                #   in Loop: Header=BB0_71 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65612, %esi            # imm = 0x1004C
	callq	update_signature
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	atan
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movabsq	$main_signature, %rdi
	movl	$65612, %esi            # imm = 0x1004C
	callq	verify_signature
# BB#76:                                #   in Loop: Header=BB0_71 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65613, %esi            # imm = 0x1004D
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	.LCPI0_28(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_26(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1        # 8-byte Folded Reload
	divsd	%xmm0, %xmm1
	addsd	-72(%rbp), %xmm1
	movsd	%xmm1, -72(%rbp)
	movl	$65613, %esi            # imm = 0x1004D
	callq	verify_signature
	jmp	.LBB0_71
.LBB0_77:
	movabsq	$main_signature, %rdi
	movl	$65614, %esi            # imm = 0x1004E
	callq	update_signature
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$main_signature, %rdi
	movl	$65614, %esi            # imm = 0x1004E
	callq	verify_signature
# BB#78:
	movabsq	$main_signature, %rdi
	movl	$65615, %esi            # imm = 0x1004F
	callq	update_signature
	leaq	-144(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_signature, %rdi
	movl	$65615, %esi            # imm = 0x1004F
	callq	verify_signature
# BB#79:
	movabsq	$main_signature, %rdi
	movl	$65616, %esi            # imm = 0x10050
	callq	update_signature
	movabsq	$.L.str.1, %rdi
	movq	-144(%rbp), %rax
	subq	-160(%rbp), %rax
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	movq	-136(%rbp), %rsi
	subq	-152(%rbp), %rsi
	addq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movabsq	$main_signature, %rdi
	movl	$65616, %esi            # imm = 0x10050
	callq	verify_signature
# BB#80:
	movabsq	$main_signature, %rdi
	movl	$65617, %esi            # imm = 0x10051
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$1, is_signature_queue_full
	movl	$65617, %esi            # imm = 0x10051
	callq	verify_signature
	xorl	%eax, %eax
	addq	$160, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function rad2deg
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	4640537203540230144     # double 180
.LCPI1_2:
	.quad	4616189618054758400     # double 4
	.text
	.globl	rad2deg
	.p2align	4, 0x90
	.type	rad2deg,@function
rad2deg:                                # @rad2deg
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
	subq	$32, %rsp
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	movabsq	$rad2deg_signature, %rdi
	movl	$327681, %esi           # imm = 0x50001
	callq	update_signature
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	-8(%rbp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm2, -24(%rbp)
	mulsd	-24(%rbp), %xmm1
	movsd	%xmm1, -8(%rbp)         # 8-byte Spill
	callq	atan
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movabsq	$rad2deg_signature, %rdi
	movl	$327681, %esi           # imm = 0x50001
	callq	verify_signature
# BB#1:
	movabsq	$rad2deg_signature, %rdi
	movl	$327682, %esi           # imm = 0x50002
	callq	update_signature
	movabsq	$rad2deg_signature, %rdi
	movsd	.LCPI1_2(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	-8(%rbp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)         # 8-byte Spill
	movl	$327682, %esi           # imm = 0x50002
	callq	verify_signature
	movsd	-8(%rbp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	rad2deg, .Lfunc_end1-rad2deg
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function deg2rad
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_1:
	.quad	4640537203540230144     # double 180
.LCPI2_2:
	.quad	4616189618054758400     # double 4
	.text
	.globl	deg2rad
	.p2align	4, 0x90
	.type	deg2rad,@function
deg2rad:                                # @deg2rad
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
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	movabsq	$deg2rad_signature, %rdi
	movl	$393217, %esi           # imm = 0x60001
	callq	update_signature
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -16(%rbp)
	callq	atan
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	movabsq	$deg2rad_signature, %rdi
	movl	$393217, %esi           # imm = 0x60001
	callq	verify_signature
# BB#1:
	movabsq	$deg2rad_signature, %rdi
	movl	$393218, %esi           # imm = 0x60002
	callq	update_signature
	movabsq	$deg2rad_signature, %rdi
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI2_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	-8(%rbp), %xmm1         # 8-byte Folded Reload
	mulsd	-16(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)         # 8-byte Spill
	movl	$393218, %esi           # imm = 0x60002
	callq	verify_signature
	movsd	-8(%rbp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	deg2rad, .Lfunc_end2-deg2rad
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function SolveCubic
.LCPI3_0:
	.long	3225419776              # float -3
.LCPI3_1:
	.long	1091567616              # float 9
.LCPI3_2:
	.long	1104674816              # float 27
.LCPI3_3:
	.long	1113063424              # float 54
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI3_4:
	.quad	9223372036854775807     # double NaN
	.quad	9223372036854775807     # double NaN
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI3_5:
	.quad	4599676419421066581     # double 0.33333333333333331
.LCPI3_6:
	.quad	4613937818241073152     # double 3
.LCPI3_7:
	.quad	-4611686018427387904    # double -2
.LCPI3_8:
	.quad	4607182418800017408     # double 1
.LCPI3_9:
	.quad	4611686018427387904     # double 2
.LCPI3_10:
	.quad	4616189618054758400     # double 4
	.text
	.globl	SolveCubic
	.p2align	4, 0x90
	.type	SolveCubic,@function
SolveCubic:                             # @SolveCubic
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
	subq	$344, %rsp              # imm = 0x158
.Lcfi14:
	.cfi_offset %rbx, -40
.Lcfi15:
	.cfi_offset %r14, -32
.Lcfi16:
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movsd	%xmm3, -40(%rbp)        # 8-byte Spill
	movsd	%xmm2, -64(%rbp)        # 8-byte Spill
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movabsq	$SolveCubic_signature, %r14
	movl	$SolveCubic_signature, %edi
	movl	$458753, %esi           # imm = 0x70001
	callq	update_signature
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -328(%rbp)
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -312(%rbp)
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)
	movq	%rbx, -144(%rbp)
	movq	%r15, -72(%rbp)
	movsd	-320(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-328(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -296(%rbp)
	fldl	-296(%rbp)
	fstpt	-128(%rbp)
	movsd	-312(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -288(%rbp)
	fldl	-288(%rbp)
	fstpt	-368(%rbp)
	movsd	-304(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -280(%rbp)
	fldl	-280(%rbp)
	fstpt	-352(%rbp)
	fldt	-128(%rbp)
	fld	%st(0)
	fmul	%st(1)
	fldt	-368(%rbp)
	flds	.LCPI3_0(%rip)
	fmul	%st(1)
	faddp	%st(2)
	flds	.LCPI3_1(%rip)
	fdivr	%st(0), %st(2)
	fxch	%st(2)
	fstpt	-112(%rbp)
	fld	%st(2)
	fadd	%st(3)
	fmul	%st(3)
	fmul	%st(3)
	fxch	%st(3)
	fmulp	%st(2)
	fmulp	%st(1)
	fsubrp	%st(1)
	fldt	-352(%rbp)
	flds	.LCPI3_2(%rip)
	fmulp	%st(1)
	faddp	%st(1)
	flds	.LCPI3_3(%rip)
	fdivrp	%st(1)
	fstpt	-160(%rbp)
	fldt	-160(%rbp)
	fmul	%st(0), %st(0)
	fldt	-112(%rbp)
	fld	%st(0)
	fmul	%st(1)
	fmulp	%st(1)
	fsubrp	%st(1)
	fstpl	-272(%rbp)
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movl	$458753, %esi           # imm = 0x70001
	callq	verify_signature
	xorps	%xmm0, %xmm0
	ucomisd	-40(%rbp), %xmm0        # 8-byte Folded Reload
	jb	.LBB3_12
# BB#1:
	movabsq	$SolveCubic_signature, %rbx
	movl	$SolveCubic_signature, %edi
	movl	$458754, %esi           # imm = 0x70002
	callq	update_signature
	movq	-144(%rbp), %rax
	movl	$3, (%rax)
	fldt	-160(%rbp)
	fstpt	-40(%rbp)               # 10-byte Folded Spill
	fldt	-112(%rbp)
	fld	%st(0)
	fmul	%st(1)
	fmulp	%st(1)
	fstpl	-248(%rbp)
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$458754, %esi           # imm = 0x70002
	callq	verify_signature
# BB#2:
	movl	$SolveCubic_signature, %edi
	movl	$458755, %esi           # imm = 0x70003
	callq	update_signature
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)
	fldl	-240(%rbp)
	fldt	-40(%rbp)               # 10-byte Folded Reload
	fdivp	%st(1)
	fstpl	-232(%rbp)
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	acos
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movabsq	$SolveCubic_signature, %rdi
	movl	$458755, %esi           # imm = 0x70003
	callq	verify_signature
# BB#3:
	movabsq	$SolveCubic_signature, %rbx
	movl	$SolveCubic_signature, %edi
	movl	$458756, %esi           # imm = 0x70004
	callq	update_signature
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	fldt	-112(%rbp)
	fstpl	-224(%rbp)
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$458756, %esi           # imm = 0x70004
	callq	verify_signature
# BB#4:
	movabsq	$SolveCubic_signature, %rdi
	movl	$458757, %esi           # imm = 0x70005
	callq	update_signature
	movabsq	$SolveCubic_signature, %rbx
	movsd	.LCPI3_6(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI3_7(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	callq	cos
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$458757, %esi           # imm = 0x70005
	callq	verify_signature
# BB#5:
	movabsq	$SolveCubic_signature, %rbx
	movl	$SolveCubic_signature, %edi
	movl	$458758, %esi           # imm = 0x70006
	callq	update_signature
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -216(%rbp)
	fldl	-216(%rbp)
	fldt	-128(%rbp)
	flds	.LCPI3_0(%rip)
	fdivrp	%st(1)
	faddp	%st(1)
	movq	-72(%rbp), %rax
	fstpl	(%rax)
	fldt	-112(%rbp)
	fstpl	-208(%rbp)
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$458758, %esi           # imm = 0x70006
	callq	verify_signature
# BB#6:
	movabsq	$SolveCubic_signature, %rdi
	movl	$458759, %esi           # imm = 0x70007
	callq	update_signature
	movsd	.LCPI3_8(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI3_7(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1        # 8-byte Folded Reload
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	callq	atan
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movabsq	$SolveCubic_signature, %rdi
	movl	$458759, %esi           # imm = 0x70007
	callq	verify_signature
# BB#7:
	movabsq	$SolveCubic_signature, %rdi
	movl	$458760, %esi           # imm = 0x70008
	callq	update_signature
	movabsq	$SolveCubic_signature, %rbx
	movsd	.LCPI3_6(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI3_9(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI3_10(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	-80(%rbp), %xmm2        # 8-byte Folded Reload
	mulsd	%xmm1, %xmm2
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	divsd	%xmm3, %xmm0
	callq	cos
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$458760, %esi           # imm = 0x70008
	callq	verify_signature
# BB#8:
	movabsq	$SolveCubic_signature, %rbx
	movl	$SolveCubic_signature, %edi
	movl	$458761, %esi           # imm = 0x70009
	callq	update_signature
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -200(%rbp)
	fldl	-200(%rbp)
	fldt	-128(%rbp)
	flds	.LCPI3_0(%rip)
	fdivrp	%st(1)
	faddp	%st(1)
	movq	-72(%rbp), %rax
	fstpl	8(%rax)
	fldt	-112(%rbp)
	fstpl	-192(%rbp)
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$458761, %esi           # imm = 0x70009
	callq	verify_signature
# BB#9:
	movabsq	$SolveCubic_signature, %rdi
	movl	$458762, %esi           # imm = 0x7000A
	callq	update_signature
	movsd	.LCPI3_8(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI3_7(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1        # 8-byte Folded Reload
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	callq	atan
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movabsq	$SolveCubic_signature, %rdi
	movl	$458762, %esi           # imm = 0x7000A
	callq	verify_signature
# BB#10:
	movabsq	$SolveCubic_signature, %rdi
	movl	$458763, %esi           # imm = 0x7000B
	callq	update_signature
	movabsq	$SolveCubic_signature, %rbx
	movsd	.LCPI3_6(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI3_10(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	%xmm1, %xmm3
	mulsd	%xmm1, %xmm3
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm3, %xmm0
	divsd	%xmm2, %xmm0
	callq	cos
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$458763, %esi           # imm = 0x7000B
	callq	verify_signature
# BB#11:
	movabsq	$SolveCubic_signature, %rbx
	movl	$SolveCubic_signature, %edi
	movl	$458764, %esi           # imm = 0x7000C
	callq	update_signature
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -184(%rbp)
	fldl	-184(%rbp)
	fldt	-128(%rbp)
	flds	.LCPI3_0(%rip)
	fdivrp	%st(1)
	faddp	%st(1)
	fstpl	-176(%rbp)
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	%rbx, %rdi
	movl	$458764, %esi           # imm = 0x7000C
	callq	verify_signature
	jmp	.LBB3_16
.LBB3_12:
	movabsq	$SolveCubic_signature, %rdi
	movl	$458765, %esi           # imm = 0x7000D
	callq	update_signature
	movabsq	$SolveCubic_signature, %rbx
	movq	-144(%rbp), %rax
	movl	$1, (%rax)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$458765, %esi           # imm = 0x7000D
	callq	verify_signature
# BB#13:
	movabsq	$SolveCubic_signature, %rbx
	movl	$SolveCubic_signature, %edi
	movl	$458766, %esi           # imm = 0x7000E
	callq	update_signature
	fldt	-160(%rbp)
	fstpl	-264(%rbp)
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	movaps	.LCPI3_4(%rip), %xmm1   # xmm1 = [nan,nan]
	pand	%xmm0, %xmm1
	movaps	%xmm1, -64(%rbp)        # 16-byte Spill
	movq	%rbx, %rdi
	movl	$458766, %esi           # imm = 0x7000E
	callq	verify_signature
# BB#14:
	movabsq	$SolveCubic_signature, %rdi
	movl	$458767, %esi           # imm = 0x7000F
	callq	update_signature
	movsd	.LCPI3_5(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0        # 16-byte Folded Reload
	callq	pow
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movabsq	$SolveCubic_signature, %rdi
	movl	$458767, %esi           # imm = 0x7000F
	callq	verify_signature
# BB#15:
	movabsq	$SolveCubic_signature, %rbx
	movl	$SolveCubic_signature, %edi
	movl	$458768, %esi           # imm = 0x70010
	callq	update_signature
	movq	-72(%rbp), %rax
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	fldt	-112(%rbp)
	movq	-72(%rbp), %rax
	fldl	(%rax)
	fdivr	%st(0), %st(1)
	faddp	%st(1)
	fstpl	(%rax)
	fldt	-160(%rbp)
	fldz
	fucompi	%st(1)
	fstp	%st(0)
	movl	$1, %eax
	movl	$-1, %ecx
	cmoval	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rax)
	fldt	-128(%rbp)
	flds	.LCPI3_0(%rip)
	fdivrp	%st(1)
	movq	-72(%rbp), %rax
	fldl	(%rax)
	faddp	%st(1)
	fstpl	-256(%rbp)
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	movq	%rbx, %rdi
	movl	$458768, %esi           # imm = 0x70010
	callq	verify_signature
.LBB3_16:
	movabsq	$SolveCubic_signature, %rdi
	movl	$458769, %esi           # imm = 0x70011
	callq	update_signature
	movabsq	$SolveCubic_signature, %rdi
	movl	$458769, %esi           # imm = 0x70011
	callq	verify_signature
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	SolveCubic, .Lfunc_end3-SolveCubic
	.cfi_endproc
                                        # -- End function
	.globl	usqrt                   # -- Begin function usqrt
	.p2align	4, 0x90
	.type	usqrt,@function
usqrt:                                  # @usqrt
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
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Lcfi20:
	.cfi_offset %rbx, -32
.Lcfi21:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movabsq	$usqrt_signature, %rdi
	movl	$851969, %esi           # imm = 0xD0001
	callq	update_signature
	movabsq	$usqrt_signature, %rdi
	movq	%rbx, -56(%rbp)
	movq	%r14, -64(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -20(%rbp)
	movl	$851969, %esi           # imm = 0xD0001
	callq	verify_signature
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movabsq	$usqrt_signature, %rdi
	movl	$851970, %esi           # imm = 0xD0002
	callq	update_signature
	movabsq	$usqrt_signature, %rdi
	movl	-20(%rbp), %ebx
	movl	$851970, %esi           # imm = 0xD0002
	callq	verify_signature
	cmpl	$32, %ebx
	jge	.LBB4_6
# BB#2:                                 #   in Loop: Header=BB4_1 Depth=1
	movabsq	$usqrt_signature, %rdi
	movl	$851971, %esi           # imm = 0xD0003
	callq	update_signature
	movabsq	$usqrt_signature, %rdi
	movl	$3221225472, %eax       # imm = 0xC0000000
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	andq	-56(%rbp), %rax
	shrq	$30, %rax
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %r14
	movq	-48(%rbp), %rbx
	movl	$851971, %esi           # imm = 0xD0003
	callq	verify_signature
	cmpq	%rbx, %r14
	jb	.LBB4_4
# BB#3:                                 #   in Loop: Header=BB4_1 Depth=1
	movabsq	$usqrt_signature, %rdi
	movl	$851972, %esi           # imm = 0xD0004
	callq	update_signature
	movabsq	$usqrt_signature, %rdi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movl	$851972, %esi           # imm = 0xD0004
	callq	verify_signature
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	movabsq	$usqrt_signature, %rdi
	movl	$851973, %esi           # imm = 0xD0005
	callq	update_signature
	movabsq	$usqrt_signature, %rdi
	movl	$851973, %esi           # imm = 0xD0005
	callq	verify_signature
# BB#5:                                 #   in Loop: Header=BB4_1 Depth=1
	movabsq	$usqrt_signature, %rdi
	movl	$851974, %esi           # imm = 0xD0006
	callq	update_signature
	movabsq	$usqrt_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$851974, %esi           # imm = 0xD0006
	callq	verify_signature
	jmp	.LBB4_1
.LBB4_6:
	movabsq	$usqrt_signature, %rdi
	movl	$851975, %esi           # imm = 0xD0007
	callq	update_signature
	movabsq	$usqrt_signature, %rdi
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$851975, %esi           # imm = 0xD0007
	callq	verify_signature
# BB#7:
	movabsq	$usqrt_signature, %rdi
	movl	$851976, %esi           # imm = 0xD0008
	callq	update_signature
	movabsq	$usqrt_signature, %rdi
	movl	$851976, %esi           # imm = 0xD0008
	callq	verify_signature
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	usqrt, .Lfunc_end4-usqrt
	.cfi_endproc
                                        # -- End function
	.globl	CallcheckerSet          # -- Begin function CallcheckerSet
	.p2align	4, 0x90
	.type	CallcheckerSet,@function
CallcheckerSet:                         # @CallcheckerSet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi22:
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
.Lfunc_end5:
	.size	CallcheckerSet, .Lfunc_end5-CallcheckerSet
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" [target finished!]\n"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	" [target] Execution Time: %ld\n"
	.size	.L.str.1, 31

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

	.type	atan_signature,@object  # @atan_signature
	.globl	atan_signature
	.p2align	2
atan_signature:
	.long	0                       # 0x0
	.size	atan_signature, 4

	.type	printf_signature,@object # @printf_signature
	.globl	printf_signature
	.p2align	2
printf_signature:
	.long	0                       # 0x0
	.size	printf_signature, 4

	.type	rad2deg_signature,@object # @rad2deg_signature
	.globl	rad2deg_signature
	.p2align	2
rad2deg_signature:
	.long	0                       # 0x0
	.size	rad2deg_signature, 4

	.type	deg2rad_signature,@object # @deg2rad_signature
	.globl	deg2rad_signature
	.p2align	2
deg2rad_signature:
	.long	0                       # 0x0
	.size	deg2rad_signature, 4

	.type	SolveCubic_signature,@object # @SolveCubic_signature
	.globl	SolveCubic_signature
	.p2align	2
SolveCubic_signature:
	.long	0                       # 0x0
	.size	SolveCubic_signature, 4

	.type	sqrt_signature,@object  # @sqrt_signature
	.globl	sqrt_signature
	.p2align	2
sqrt_signature:
	.long	0                       # 0x0
	.size	sqrt_signature, 4

	.type	acos_signature,@object  # @acos_signature
	.globl	acos_signature
	.p2align	2
acos_signature:
	.long	0                       # 0x0
	.size	acos_signature, 4

	.type	cos_signature,@object   # @cos_signature
	.globl	cos_signature
	.p2align	2
cos_signature:
	.long	0                       # 0x0
	.size	cos_signature, 4

	.type	fabs_signature,@object  # @fabs_signature
	.globl	fabs_signature
	.p2align	2
fabs_signature:
	.long	0                       # 0x0
	.size	fabs_signature, 4

	.type	pow_signature,@object   # @pow_signature
	.globl	pow_signature
	.p2align	2
pow_signature:
	.long	0                       # 0x0
	.size	pow_signature, 4

	.type	usqrt_signature,@object # @usqrt_signature
	.globl	usqrt_signature
	.p2align	2
usqrt_signature:
	.long	0                       # 0x0
	.size	usqrt_signature, 4

	.type	llvm.memcpy.p0i8.p0i8.i64_signature,@object # @llvm.memcpy.p0i8.p0i8.i64_signature
	.globl	llvm.memcpy.p0i8.p0i8.i64_signature
	.p2align	2
llvm.memcpy.p0i8.p0i8.i64_signature:
	.long	0                       # 0x0
	.size	llvm.memcpy.p0i8.p0i8.i64_signature, 4

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
	.ident	"clang version 5.0.0 (tags/RELEASE_500/final)"
	.ident	"clang version 5.0.0 (tags/RELEASE_500/final)"
	.section	".note.GNU-stack","",@progbits
