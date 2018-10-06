	.text
	.file	"crc_32.c"
	.globl	updateCRC32             # -- Begin function updateCRC32
	.p2align	4, 0x90
	.type	updateCRC32,@function
updateCRC32:                            # @updateCRC32
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
	movq	%rsi, %r14
	movl	%edi, %ebx
	movabsq	$updateCRC32_signature, %rdi
	movl	$65537, %esi            # imm = 0x10001
	callq	update_signature
	movabsq	$updateCRC32_signature, %rdi
	movb	%bl, -17(%rbp)
	movq	%r14, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	-17(%rbp), %ecx
	xorq	%rax, %rcx
	andq	$255, %rcx
	movq	crc_32_tab(,%rcx,8), %rax
	movq	-32(%rbp), %rbx
	shrq	$8, %rbx
	xorq	%rax, %rbx
	movl	$65537, %esi            # imm = 0x10001
	callq	verify_signature
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	updateCRC32, .Lfunc_end0-updateCRC32
	.cfi_endproc
                                        # -- End function
	.globl	crc32file               # -- Begin function crc32file
	.p2align	4, 0x90
	.type	crc32file,@function
crc32file:                              # @crc32file
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
	subq	$56, %rsp
.Lcfi8:
	.cfi_offset %rbx, -40
.Lcfi9:
	.cfi_offset %r14, -32
.Lcfi10:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movabsq	$crc32file_signature, %rdi
	movl	$131073, %esi           # imm = 0x20001
	callq	update_signature
	movabsq	$.L.str, %rsi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	%rbx, -64(%rbp)
	movq	%r15, -80(%rbp)
	movq	%r14, -56(%rbp)
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-64(%rbp), %rdi
	callq	fopen
	movq	%rax, %rbx
	movabsq	$crc32file_signature, %rdi
	movl	$131073, %esi           # imm = 0x20001
	callq	verify_signature
# BB#1:
	movabsq	$crc32file_signature, %rdi
	movl	$131074, %esi           # imm = 0x20002
	callq	update_signature
	movabsq	$crc32file_signature, %rdi
	movq	%rbx, -48(%rbp)
	movl	$131074, %esi           # imm = 0x20002
	callq	verify_signature
	cmpq	$0, %rbx
	jne	.LBB1_4
# BB#2:
	movabsq	$crc32file_signature, %rdi
	movl	$131075, %esi           # imm = 0x20003
	callq	update_signature
	movq	-64(%rbp), %rdi
	callq	perror
	movabsq	$crc32file_signature, %rdi
	movl	$131075, %esi           # imm = 0x20003
	callq	verify_signature
# BB#3:
	movabsq	$crc32file_signature, %rdi
	movl	$131076, %esi           # imm = 0x20004
	callq	update_signature
	movabsq	$crc32file_signature, %rdi
	movl	$-1, -36(%rbp)
	movl	$131076, %esi           # imm = 0x20004
	callq	verify_signature
	jmp	.LBB1_14
.LBB1_4:
	movabsq	$crc32file_signature, %rdi
	movl	$131077, %esi           # imm = 0x20005
	callq	update_signature
	movabsq	$crc32file_signature, %rdi
	movl	$131077, %esi           # imm = 0x20005
	callq	verify_signature
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	movabsq	$crc32file_signature, %rdi
	movl	$131078, %esi           # imm = 0x20006
	callq	update_signature
	movq	-48(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, %ebx
	movabsq	$crc32file_signature, %rdi
	movl	$131078, %esi           # imm = 0x20006
	callq	verify_signature
# BB#6:                                 #   in Loop: Header=BB1_5 Depth=1
	movabsq	$crc32file_signature, %rdi
	movl	$131079, %esi           # imm = 0x20007
	callq	update_signature
	movabsq	$crc32file_signature, %rdi
	movl	%ebx, -68(%rbp)
	movl	$131079, %esi           # imm = 0x20007
	callq	verify_signature
	cmpl	$-1, %ebx
	je	.LBB1_8
# BB#7:                                 #   in Loop: Header=BB1_5 Depth=1
	movabsq	$crc32file_signature, %rdi
	movl	$131080, %esi           # imm = 0x20008
	callq	update_signature
	movabsq	$crc32file_signature, %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	movl	-68(%rbp), %ecx
	movzbl	%cl, %ecx
	xorq	%rax, %rcx
	andq	$255, %rcx
	movq	crc_32_tab(,%rcx,8), %rax
	movq	-32(%rbp), %rcx
	shrq	$8, %rcx
	xorq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	movl	$131080, %esi           # imm = 0x20008
	callq	verify_signature
	jmp	.LBB1_5
.LBB1_8:
	movabsq	$crc32file_signature, %rdi
	movl	$131081, %esi           # imm = 0x20009
	callq	update_signature
	movq	-48(%rbp), %rdi
	callq	ferror
	movl	%eax, %ebx
	movabsq	$crc32file_signature, %rdi
	movl	$131081, %esi           # imm = 0x20009
	callq	verify_signature
# BB#9:
	movabsq	$crc32file_signature, %rdi
	movl	$131082, %esi           # imm = 0x2000A
	callq	update_signature
	movabsq	$crc32file_signature, %rdi
	movl	$131082, %esi           # imm = 0x2000A
	callq	verify_signature
	cmpl	$0, %ebx
	je	.LBB1_12
# BB#10:
	movabsq	$crc32file_signature, %rdi
	movl	$131083, %esi           # imm = 0x2000B
	callq	update_signature
	movq	-64(%rbp), %rdi
	callq	perror
	movabsq	$crc32file_signature, %rdi
	movl	$131083, %esi           # imm = 0x2000B
	callq	verify_signature
# BB#11:
	movabsq	$crc32file_signature, %rdi
	movl	$131084, %esi           # imm = 0x2000C
	callq	update_signature
	movabsq	$crc32file_signature, %rdi
	movq	-56(%rbp), %rax
	movq	$-1, (%rax)
	movl	$131084, %esi           # imm = 0x2000C
	callq	verify_signature
.LBB1_12:
	movabsq	$crc32file_signature, %rdi
	movl	$131085, %esi           # imm = 0x2000D
	callq	update_signature
	movq	-48(%rbp), %rdi
	callq	fclose
	movabsq	$crc32file_signature, %rdi
	movl	$131085, %esi           # imm = 0x2000D
	callq	verify_signature
# BB#13:
	movabsq	$crc32file_signature, %rdi
	movl	$131086, %esi           # imm = 0x2000E
	callq	update_signature
	movabsq	$crc32file_signature, %rdi
	movq	-32(%rbp), %rax
	xorq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$0, -36(%rbp)
	movl	$131086, %esi           # imm = 0x2000E
	callq	verify_signature
.LBB1_14:
	movabsq	$crc32file_signature, %rdi
	movl	$131087, %esi           # imm = 0x2000F
	callq	update_signature
	movabsq	$crc32file_signature, %rdi
	movl	-36(%rbp), %ebx
	movl	$131087, %esi           # imm = 0x2000F
	callq	verify_signature
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	crc32file, .Lfunc_end1-crc32file
	.cfi_endproc
                                        # -- End function
	.globl	crc32buf                # -- Begin function crc32buf
	.p2align	4, 0x90
	.type	crc32buf,@function
crc32buf:                               # @crc32buf
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
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
.Lcfi14:
	.cfi_offset %rbx, -32
.Lcfi15:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movabsq	$crc32buf_signature, %rdi
	movl	$524289, %esi           # imm = 0x80001
	callq	update_signature
	movabsq	$crc32buf_signature, %rdi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	%rbx, -40(%rbp)
	movq	%r14, -32(%rbp)
	movq	%rax, -24(%rbp)
	movl	$524289, %esi           # imm = 0x80001
	callq	verify_signature
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movabsq	$crc32buf_signature, %rdi
	movl	$524290, %esi           # imm = 0x80002
	callq	update_signature
	movabsq	$crc32buf_signature, %rdi
	movq	-32(%rbp), %rbx
	movl	$524290, %esi           # imm = 0x80002
	callq	verify_signature
	cmpq	$0, %rbx
	je	.LBB2_4
# BB#2:                                 #   in Loop: Header=BB2_1 Depth=1
	movabsq	$crc32buf_signature, %rdi
	movl	$524291, %esi           # imm = 0x80003
	callq	update_signature
	movabsq	$crc32buf_signature, %rdi
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %ecx
	xorq	%rax, %rcx
	andq	$255, %rcx
	movq	crc_32_tab(,%rcx,8), %rax
	movq	-24(%rbp), %rcx
	shrq	$8, %rcx
	xorq	%rax, %rcx
	movq	%rcx, -24(%rbp)
	movl	$524291, %esi           # imm = 0x80003
	callq	verify_signature
# BB#3:                                 #   in Loop: Header=BB2_1 Depth=1
	movabsq	$crc32buf_signature, %rdi
	movl	$524292, %esi           # imm = 0x80004
	callq	update_signature
	movabsq	$crc32buf_signature, %rdi
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movl	$524292, %esi           # imm = 0x80004
	callq	verify_signature
	jmp	.LBB2_1
.LBB2_4:
	movabsq	$crc32buf_signature, %rdi
	movl	$524293, %esi           # imm = 0x80005
	callq	update_signature
	movabsq	$crc32buf_signature, %rdi
	movq	-24(%rbp), %rbx
	xorq	$-1, %rbx
	movl	$524293, %esi           # imm = 0x80005
	callq	verify_signature
	movq	%rbx, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	crc32buf, .Lfunc_end2-crc32buf
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$80, %rsp
.Lcfi19:
	.cfi_offset %rbx, -32
.Lcfi20:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movl	%edi, %ebx
	movabsq	$main_signature, %rdi
	movl	$589825, %esi           # imm = 0x90001
	callq	update_signature
	leaq	-72(%rbp), %rdi
	movl	$0, -36(%rbp)
	movl	%ebx, -24(%rbp)
	movq	%r14, -32(%rbp)
	movl	$0, -20(%rbp)
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_signature, %rdi
	movl	$589825, %esi           # imm = 0x90001
	callq	verify_signature
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movabsq	$main_signature, %rdi
	movl	$589826, %esi           # imm = 0x90002
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-24(%rbp), %ebx
	addl	$-1, %ebx
	movl	%ebx, -24(%rbp)
	movl	$589826, %esi           # imm = 0x90002
	callq	verify_signature
	cmpl	$0, %ebx
	jle	.LBB3_4
# BB#2:                                 #   in Loop: Header=BB3_1 Depth=1
	movabsq	$main_signature, %rdi
	movl	$589827, %esi           # imm = 0x90003
	callq	update_signature
	leaq	-88(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movq	8(%rax), %rdi
	callq	crc32file
	movl	%eax, %ebx
	movabsq	$main_signature, %rdi
	movl	$589827, %esi           # imm = 0x90003
	callq	verify_signature
# BB#3:                                 #   in Loop: Header=BB3_1 Depth=1
	movabsq	$main_signature, %rdi
	movl	$589828, %esi           # imm = 0x90004
	callq	update_signature
	movabsq	$main_signature, %rdi
	orl	-20(%rbp), %ebx
	movl	%ebx, -20(%rbp)
	movl	$589828, %esi           # imm = 0x90004
	callq	verify_signature
	jmp	.LBB3_1
.LBB3_4:
	movabsq	$main_signature, %rdi
	movl	$589829, %esi           # imm = 0x90005
	callq	update_signature
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$main_signature, %rdi
	movl	$589829, %esi           # imm = 0x90005
	callq	verify_signature
# BB#5:
	movabsq	$main_signature, %rdi
	movl	$589830, %esi           # imm = 0x90006
	callq	update_signature
	leaq	-56(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_signature, %rdi
	movl	$589830, %esi           # imm = 0x90006
	callq	verify_signature
# BB#6:
	movabsq	$main_signature, %rdi
	movl	$589831, %esi           # imm = 0x90007
	callq	update_signature
	movabsq	$.L.str.2, %rdi
	movq	-56(%rbp), %rax
	subq	-72(%rbp), %rax
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	movq	-48(%rbp), %rsi
	subq	-64(%rbp), %rsi
	addq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movabsq	$main_signature, %rdi
	movl	$589831, %esi           # imm = 0x90007
	callq	verify_signature
# BB#7:
	movabsq	$main_signature, %rdi
	movl	$589832, %esi           # imm = 0x90008
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$1, is_signature_queue_full
	cmpl	$0, -20(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ebx
	movl	$589832, %esi           # imm = 0x90008
	callq	verify_signature
	movl	%ebx, %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.globl	CallcheckerSet          # -- Begin function CallcheckerSet
	.p2align	4, 0x90
	.type	CallcheckerSet,@function
CallcheckerSet:                         # @CallcheckerSet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi21:
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
	.type	crc_32_tab,@object      # @crc_32_tab
	.data
	.p2align	4
crc_32_tab:
	.quad	0                       # 0x0
	.quad	1996959894              # 0x77073096
	.quad	3993919788              # 0xee0e612c
	.quad	2567524794              # 0x990951ba
	.quad	124634137               # 0x76dc419
	.quad	1886057615              # 0x706af48f
	.quad	3915621685              # 0xe963a535
	.quad	2657392035              # 0x9e6495a3
	.quad	249268274               # 0xedb8832
	.quad	2044508324              # 0x79dcb8a4
	.quad	3772115230              # 0xe0d5e91e
	.quad	2547177864              # 0x97d2d988
	.quad	162941995               # 0x9b64c2b
	.quad	2125561021              # 0x7eb17cbd
	.quad	3887607047              # 0xe7b82d07
	.quad	2428444049              # 0x90bf1d91
	.quad	498536548               # 0x1db71064
	.quad	1789927666              # 0x6ab020f2
	.quad	4089016648              # 0xf3b97148
	.quad	2227061214              # 0x84be41de
	.quad	450548861               # 0x1adad47d
	.quad	1843258603              # 0x6ddde4eb
	.quad	4107580753              # 0xf4d4b551
	.quad	2211677639              # 0x83d385c7
	.quad	325883990               # 0x136c9856
	.quad	1684777152              # 0x646ba8c0
	.quad	4251122042              # 0xfd62f97a
	.quad	2321926636              # 0x8a65c9ec
	.quad	335633487               # 0x14015c4f
	.quad	1661365465              # 0x63066cd9
	.quad	4195302755              # 0xfa0f3d63
	.quad	2366115317              # 0x8d080df5
	.quad	997073096               # 0x3b6e20c8
	.quad	1281953886              # 0x4c69105e
	.quad	3579855332              # 0xd56041e4
	.quad	2724688242              # 0xa2677172
	.quad	1006888145              # 0x3c03e4d1
	.quad	1258607687              # 0x4b04d447
	.quad	3524101629              # 0xd20d85fd
	.quad	2768942443              # 0xa50ab56b
	.quad	901097722               # 0x35b5a8fa
	.quad	1119000684              # 0x42b2986c
	.quad	3686517206              # 0xdbbbc9d6
	.quad	2898065728              # 0xacbcf940
	.quad	853044451               # 0x32d86ce3
	.quad	1172266101              # 0x45df5c75
	.quad	3705015759              # 0xdcd60dcf
	.quad	2882616665              # 0xabd13d59
	.quad	651767980               # 0x26d930ac
	.quad	1373503546              # 0x51de003a
	.quad	3369554304              # 0xc8d75180
	.quad	3218104598              # 0xbfd06116
	.quad	565507253               # 0x21b4f4b5
	.quad	1454621731              # 0x56b3c423
	.quad	3485111705              # 0xcfba9599
	.quad	3099436303              # 0xb8bda50f
	.quad	671266974               # 0x2802b89e
	.quad	1594198024              # 0x5f058808
	.quad	3322730930              # 0xc60cd9b2
	.quad	2970347812              # 0xb10be924
	.quad	795835527               # 0x2f6f7c87
	.quad	1483230225              # 0x58684c11
	.quad	3244367275              # 0xc1611dab
	.quad	3060149565              # 0xb6662d3d
	.quad	1994146192              # 0x76dc4190
	.quad	31158534                # 0x1db7106
	.quad	2563907772              # 0x98d220bc
	.quad	4023717930              # 0xefd5102a
	.quad	1907459465              # 0x71b18589
	.quad	112637215               # 0x6b6b51f
	.quad	2680153253              # 0x9fbfe4a5
	.quad	3904427059              # 0xe8b8d433
	.quad	2013776290              # 0x7807c9a2
	.quad	251722036               # 0xf00f934
	.quad	2517215374              # 0x9609a88e
	.quad	3775830040              # 0xe10e9818
	.quad	2137656763              # 0x7f6a0dbb
	.quad	141376813               # 0x86d3d2d
	.quad	2439277719              # 0x91646c97
	.quad	3865271297              # 0xe6635c01
	.quad	1802195444              # 0x6b6b51f4
	.quad	476864866               # 0x1c6c6162
	.quad	2238001368              # 0x856530d8
	.quad	4066508878              # 0xf262004e
	.quad	1812370925              # 0x6c0695ed
	.quad	453092731               # 0x1b01a57b
	.quad	2181625025              # 0x8208f4c1
	.quad	4111451223              # 0xf50fc457
	.quad	1706088902              # 0x65b0d9c6
	.quad	314042704               # 0x12b7e950
	.quad	2344532202              # 0x8bbeb8ea
	.quad	4240017532              # 0xfcb9887c
	.quad	1658658271              # 0x62dd1ddf
	.quad	366619977               # 0x15da2d49
	.quad	2362670323              # 0x8cd37cf3
	.quad	4224994405              # 0xfbd44c65
	.quad	1303535960              # 0x4db26158
	.quad	984961486               # 0x3ab551ce
	.quad	2747007092              # 0xa3bc0074
	.quad	3569037538              # 0xd4bb30e2
	.quad	1256170817              # 0x4adfa541
	.quad	1037604311              # 0x3dd895d7
	.quad	2765210733              # 0xa4d1c46d
	.quad	3554079995              # 0xd3d6f4fb
	.quad	1131014506              # 0x4369e96a
	.quad	879679996               # 0x346ed9fc
	.quad	2909243462              # 0xad678846
	.quad	3663771856              # 0xda60b8d0
	.quad	1141124467              # 0x44042d73
	.quad	855842277               # 0x33031de5
	.quad	2852801631              # 0xaa0a4c5f
	.quad	3708648649              # 0xdd0d7cc9
	.quad	1342533948              # 0x5005713c
	.quad	654459306               # 0x270241aa
	.quad	3188396048              # 0xbe0b1010
	.quad	3373015174              # 0xc90c2086
	.quad	1466479909              # 0x5768b525
	.quad	544179635               # 0x206f85b3
	.quad	3110523913              # 0xb966d409
	.quad	3462522015              # 0xce61e49f
	.quad	1591671054              # 0x5edef90e
	.quad	702138776               # 0x29d9c998
	.quad	2966460450              # 0xb0d09822
	.quad	3352799412              # 0xc7d7a8b4
	.quad	1504918807              # 0x59b33d17
	.quad	783551873               # 0x2eb40d81
	.quad	3082640443              # 0xb7bd5c3b
	.quad	3233442989              # 0xc0ba6cad
	.quad	3988292384              # 0xedb88320
	.quad	2596254646              # 0x9abfb3b6
	.quad	62317068                # 0x3b6e20c
	.quad	1957810842              # 0x74b1d29a
	.quad	3939845945              # 0xead54739
	.quad	2647816111              # 0x9dd277af
	.quad	81470997                # 0x4db2615
	.quad	1943803523              # 0x73dc1683
	.quad	3814918930              # 0xe3630b12
	.quad	2489596804              # 0x94643b84
	.quad	225274430               # 0xd6d6a3e
	.quad	2053790376              # 0x7a6a5aa8
	.quad	3826175755              # 0xe40ecf0b
	.quad	2466906013              # 0x9309ff9d
	.quad	167816743               # 0xa00ae27
	.quad	2097651377              # 0x7d079eb1
	.quad	4027552580              # 0xf00f9344
	.quad	2265490386              # 0x8708a3d2
	.quad	503444072               # 0x1e01f268
	.quad	1762050814              # 0x6906c2fe
	.quad	4150417245              # 0xf762575d
	.quad	2154129355              # 0x806567cb
	.quad	426522225               # 0x196c3671
	.quad	1852507879              # 0x6e6b06e7
	.quad	4275313526              # 0xfed41b76
	.quad	2312317920              # 0x89d32be0
	.quad	282753626               # 0x10da7a5a
	.quad	1742555852              # 0x67dd4acc
	.quad	4189708143              # 0xf9b9df6f
	.quad	2394877945              # 0x8ebeeff9
	.quad	397917763               # 0x17b7be43
	.quad	1622183637              # 0x60b08ed5
	.quad	3604390888              # 0xd6d6a3e8
	.quad	2714866558              # 0xa1d1937e
	.quad	953729732               # 0x38d8c2c4
	.quad	1340076626              # 0x4fdff252
	.quad	3518719985              # 0xd1bb67f1
	.quad	2797360999              # 0xa6bc5767
	.quad	1068828381              # 0x3fb506dd
	.quad	1219638859              # 0x48b2364b
	.quad	3624741850              # 0xd80d2bda
	.quad	2936675148              # 0xaf0a1b4c
	.quad	906185462               # 0x36034af6
	.quad	1090812512              # 0x41047a60
	.quad	3747672003              # 0xdf60efc3
	.quad	2825379669              # 0xa867df55
	.quad	829329135               # 0x316e8eef
	.quad	1181335161              # 0x4669be79
	.quad	3412177804              # 0xcb61b38c
	.quad	3160834842              # 0xbc66831a
	.quad	628085408               # 0x256fd2a0
	.quad	1382605366              # 0x5268e236
	.quad	3423369109              # 0xcc0c7795
	.quad	3138078467              # 0xbb0b4703
	.quad	570562233               # 0x220216b9
	.quad	1426400815              # 0x5505262f
	.quad	3317316542              # 0xc5ba3bbe
	.quad	2998733608              # 0xb2bd0b28
	.quad	733239954               # 0x2bb45a92
	.quad	1555261956              # 0x5cb36a04
	.quad	3268935591              # 0xc2d7ffa7
	.quad	3050360625              # 0xb5d0cf31
	.quad	752459403               # 0x2cd99e8b
	.quad	1541320221              # 0x5bdeae1d
	.quad	2607071920              # 0x9b64c2b0
	.quad	3965973030              # 0xec63f226
	.quad	1969922972              # 0x756aa39c
	.quad	40735498                # 0x26d930a
	.quad	2617837225              # 0x9c0906a9
	.quad	3943577151              # 0xeb0e363f
	.quad	1913087877              # 0x72076785
	.quad	83908371                # 0x5005713
	.quad	2512341634              # 0x95bf4a82
	.quad	3803740692              # 0xe2b87a14
	.quad	2075208622              # 0x7bb12bae
	.quad	213261112               # 0xcb61b38
	.quad	2463272603              # 0x92d28e9b
	.quad	3855990285              # 0xe5d5be0d
	.quad	2094854071              # 0x7cdcefb7
	.quad	198958881               # 0xbdbdf21
	.quad	2262029012              # 0x86d3d2d4
	.quad	4057260610              # 0xf1d4e242
	.quad	1759359992              # 0x68ddb3f8
	.quad	534414190               # 0x1fda836e
	.quad	2176718541              # 0x81be16cd
	.quad	4139329115              # 0xf6b9265b
	.quad	1873836001              # 0x6fb077e1
	.quad	414664567               # 0x18b74777
	.quad	2282248934              # 0x88085ae6
	.quad	4279200368              # 0xff0f6a70
	.quad	1711684554              # 0x66063bca
	.quad	285281116               # 0x11010b5c
	.quad	2405801727              # 0x8f659eff
	.quad	4167216745              # 0xf862ae69
	.quad	1634467795              # 0x616bffd3
	.quad	376229701               # 0x166ccf45
	.quad	2685067896              # 0xa00ae278
	.quad	3608007406              # 0xd70dd2ee
	.quad	1308918612              # 0x4e048354
	.quad	956543938               # 0x3903b3c2
	.quad	2808555105              # 0xa7672661
	.quad	3495958263              # 0xd06016f7
	.quad	1231636301              # 0x4969474d
	.quad	1047427035              # 0x3e6e77db
	.quad	2932959818              # 0xaed16a4a
	.quad	3654703836              # 0xd9d65adc
	.quad	1088359270              # 0x40df0b66
	.quad	936918000               # 0x37d83bf0
	.quad	2847714899              # 0xa9bcae53
	.quad	3736837829              # 0xdebb9ec5
	.quad	1202900863              # 0x47b2cf7f
	.quad	817233897               # 0x30b5ffe9
	.quad	3183342108              # 0xbdbdf21c
	.quad	3401237130              # 0xcabac28a
	.quad	1404277552              # 0x53b39330
	.quad	615818150               # 0x24b4a3a6
	.quad	3134207493              # 0xbad03605
	.quad	3453421203              # 0xcdd70693
	.quad	1423857449              # 0x54de5729
	.quad	601450431               # 0x23d967bf
	.quad	3009837614              # 0xb3667a2e
	.quad	3294710456              # 0xc4614ab8
	.quad	1567103746              # 0x5d681b02
	.quad	711928724               # 0x2a6f2b94
	.quad	3020668471              # 0xb40bbe37
	.quad	3272380065              # 0xc30c8ea1
	.quad	1510334235              # 0x5a05df1b
	.quad	755167117               # 0x2d02ef8d
	.size	crc_32_tab, 2048

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	" [target finished!]\n"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	" [target] Execution Time: %ld\n"
	.size	.L.str.2, 31

	.type	updateCRC32_signature,@object # @updateCRC32_signature
	.bss
	.globl	updateCRC32_signature
	.p2align	2
updateCRC32_signature:
	.long	0                       # 0x0
	.size	updateCRC32_signature, 4

	.type	crc32file_signature,@object # @crc32file_signature
	.globl	crc32file_signature
	.p2align	2
crc32file_signature:
	.long	0                       # 0x0
	.size	crc32file_signature, 4

	.type	fopen_signature,@object # @fopen_signature
	.globl	fopen_signature
	.p2align	2
fopen_signature:
	.long	0                       # 0x0
	.size	fopen_signature, 4

	.type	perror_signature,@object # @perror_signature
	.globl	perror_signature
	.p2align	2
perror_signature:
	.long	0                       # 0x0
	.size	perror_signature, 4

	.type	_IO_getc_signature,@object # @_IO_getc_signature
	.globl	_IO_getc_signature
	.p2align	2
_IO_getc_signature:
	.long	0                       # 0x0
	.size	_IO_getc_signature, 4

	.type	ferror_signature,@object # @ferror_signature
	.globl	ferror_signature
	.p2align	2
ferror_signature:
	.long	0                       # 0x0
	.size	ferror_signature, 4

	.type	fclose_signature,@object # @fclose_signature
	.globl	fclose_signature
	.p2align	2
fclose_signature:
	.long	0                       # 0x0
	.size	fclose_signature, 4

	.type	crc32buf_signature,@object # @crc32buf_signature
	.globl	crc32buf_signature
	.p2align	2
crc32buf_signature:
	.long	0                       # 0x0
	.size	crc32buf_signature, 4

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
