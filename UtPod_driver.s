	.file	"UtPod_driver.cpp"
	.text
	.align 2
	.p2align 4,,15
	.def	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
_ZNSs4_Rep10_M_disposeERKSaIcE.part.1:
.LFB1920:
	.seh_endprologue
	movl	$-1, %eax
	lock xaddl	%eax, 16(%rcx)
	testl	%eax, %eax
	jle	.L4
	ret
.L4:
	jmp	_ZNSs4_Rep10_M_destroyERKSaIcE
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Hey Jude1\0"
.LC1:
	.ascii "Beatles\0"
.LC2:
	.ascii "result = \0"
.LC3:
	.ascii "Hey Jude2\0"
.LC4:
	.ascii "Hey Jude3\0"
.LC5:
	.ascii "Hey Jude4\0"
.LC6:
	.ascii "Hey Jude5\0"
.LC7:
	.ascii "add result = \0"
.LC8:
	.ascii "delete result = \0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB1499:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$296, %rsp
	.seh_stackalloc	296
	.seh_endprologue
	leaq	96(%rsp), %rbx
	leaq	160(%rsp), %r13
	leaq	256(%rsp), %rsi
	call	__main
	movq	%rbx, %rcx
.LEHB0:
	call	_ZN5UtPodC1Ev
.LEHE0:
	leaq	.LC0(%rip), %rdx
	movq	%r13, %r8
	movq	%rsi, %rcx
.LEHB1:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE1:
	leaq	88(%rsp), %r12
	leaq	224(%rsp), %rdi
	leaq	.LC1(%rip), %rdx
	movq	%r12, %r8
	movq	%rdi, %rcx
.LEHB2:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE2:
	leaq	128(%rsp), %rax
	movl	$4, %r9d
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movq	%rax, %rcx
	movq	%rax, 32(%rsp)
.LEHB3:
	call	_ZN4SongC1ESsSsi
.LEHE3:
	movq	224(%rsp), %rax
	movq	.refptr._ZNSs4_Rep20_S_empty_rep_storageE(%rip), %rbp
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	jne	.L60
.L6:
	movq	256(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	jne	.L61
.L7:
	movq	32(%rsp), %rdx
	movq	%rbx, %rcx
.LEHB4:
	call	_ZN5UtPod7addSongERK4Song
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	movl	$9, %r8d
	movl	%eax, %r14d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%r14d, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rbx, %rcx
	call	_ZN5UtPod12showSongListEv
	leaq	.LC3(%rip), %rdx
	movq	%r12, %r8
	movq	%rsi, %rcx
	call	_ZNSsC1EPKcRKSaIcE
.LEHE4:
	leaq	80(%rsp), %r14
	leaq	.LC1(%rip), %rdx
	movq	%rdi, %rcx
	movq	%r14, %r8
.LEHB5:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE5:
	movl	$5, %r9d
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movq	%r13, %rcx
.LEHB6:
	call	_ZN4SongC1ESsSsi
.LEHE6:
	movq	224(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	jne	.L62
.L8:
	movq	256(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	jne	.L63
.L9:
	movq	%r13, %rdx
	movq	%rbx, %rcx
.LEHB7:
	call	_ZN5UtPod7addSongERK4Song
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	movl	$9, %r8d
	movl	%eax, %r15d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%r15d, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rbx, %rcx
	call	_ZN5UtPod12showSongListEv
	leaq	.LC4(%rip), %rdx
	movq	%r14, %r8
	movq	%rsi, %rcx
	call	_ZNSsC1EPKcRKSaIcE
.LEHE7:
	leaq	79(%rsp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdi, %rcx
	movq	%rax, %r8
	movq	%rax, 40(%rsp)
.LEHB8:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE8:
	leaq	192(%rsp), %r15
	movl	$6, %r9d
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movq	%r15, %rcx
.LEHB9:
	call	_ZN4SongC1ESsSsi
.LEHE9:
	movq	224(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	jne	.L64
.L10:
	movq	256(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	jne	.L65
.L11:
	movq	%r15, %rdx
	movq	%rbx, %rcx
.LEHB10:
	call	_ZN5UtPod7addSongERK4Song
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	movl	$9, %r8d
	movl	%eax, 52(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	52(%rsp), %edx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEi
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	40(%rsp), %r8
	leaq	.LC5(%rip), %rdx
	movq	%rsi, %rcx
	call	_ZNSsC1EPKcRKSaIcE
.LEHE10:
	leaq	78(%rsp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%r12, %rcx
	movq	%rax, %r8
	movq	%rax, 56(%rsp)
.LEHB11:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE11:
	movl	$7, %r9d
	movq	%rsi, %r8
	movq	%r12, %rdx
	movq	%rdi, %rcx
.LEHB12:
	call	_ZN4SongC1ESsSsi
.LEHE12:
	movq	88(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	jne	.L66
.L12:
	movq	256(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	jne	.L67
.L13:
	movq	%rdi, %rdx
	movq	%rbx, %rcx
.LEHB13:
	call	_ZN5UtPod7addSongERK4Song
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	movl	$9, %r8d
	movl	%eax, 52(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	52(%rsp), %edx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEi
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	56(%rsp), %r8
	leaq	.LC6(%rip), %rdx
	movq	%r12, %rcx
	call	_ZNSsC1EPKcRKSaIcE
.LEHE13:
	leaq	77(%rsp), %r8
	leaq	.LC1(%rip), %rdx
	movq	%r14, %rcx
.LEHB14:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE14:
	movl	$241, %r9d
	movq	%r12, %r8
	movq	%r14, %rdx
	movq	%rsi, %rcx
.LEHB15:
	call	_ZN4SongC1ESsSsi
.LEHE15:
	movq	80(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	jne	.L68
.L14:
	movq	88(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	jne	.L69
.L15:
	movq	%rsi, %rdx
	movq	%rbx, %rcx
.LEHB16:
	call	_ZN5UtPod7addSongERK4Song
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	movl	$13, %r8d
	movl	%eax, %ebp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%ebp, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rbx, %rcx
	call	_ZN5UtPod12showSongListEv
	movq	%r13, %rdx
	movq	%rbx, %rcx
	call	_ZN5UtPod10removeSongERK4Song
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	movl	$16, %r8d
	movl	%eax, %ebp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%ebp, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%r15, %rdx
	movq	%rbx, %rcx
	call	_ZN5UtPod10removeSongERK4Song
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	movl	$16, %r8d
	movl	%eax, %ebp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%ebp, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rbx, %rcx
	call	_ZN5UtPod12showSongListEv
	movq	32(%rsp), %r14
	movq	%rbx, %rcx
	movq	%r14, %rdx
	call	_ZN5UtPod10removeSongERK4Song
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	movl	$16, %r8d
	movl	%eax, %ebp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%ebp, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZN5UtPod10removeSongERK4Song
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	movl	$16, %r8d
	movl	%eax, %ebp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%ebp, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rdi, %rdx
	movq	%rbx, %rcx
	call	_ZN5UtPod10removeSongERK4Song
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	movl	$16, %r8d
	movl	%eax, %ebp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%ebp, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rbx, %rcx
	call	_ZN5UtPod12showSongListEv
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZN5UtPod7addSongERK4Song
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	movl	$13, %r8d
	movl	%eax, %ebp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%ebp, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rbx, %rcx
	call	_ZN5UtPod12showSongListEv
.LEHE16:
	movq	%rsi, %rcx
	call	_ZN4SongD1Ev
	movq	%rdi, %rcx
	call	_ZN4SongD1Ev
	movq	%r15, %rcx
	call	_ZN4SongD1Ev
	movq	%r13, %rcx
	call	_ZN4SongD1Ev
	movq	%r14, %rcx
	call	_ZN4SongD1Ev
	movq	%rbx, %rcx
	call	_ZN5UtPodD1Ev
	xorl	%eax, %eax
	addq	$296, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L60:
	leaq	192(%rsp), %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
	jmp	.L6
.L61:
	movq	%rdi, %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
	jmp	.L7
.L62:
	leaq	192(%rsp), %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
	jmp	.L8
.L63:
	movq	%rdi, %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
	jmp	.L9
.L64:
	movq	%r12, %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
	jmp	.L10
.L65:
	movq	%rdi, %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
	jmp	.L11
.L66:
	movq	%r14, %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
	jmp	.L12
.L67:
	movq	%r12, %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
	jmp	.L13
.L68:
	movq	40(%rsp), %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
	jmp	.L14
.L69:
	movq	%r14, %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
	jmp	.L15
.L53:
	movq	%rax, %rsi
	movq	88(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	je	.L33
	movq	%r14, %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
.L33:
	movq	256(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	je	.L35
	movq	%r12, %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
.L35:
	movq	%r15, %rcx
	call	_ZN4SongD1Ev
.L30:
	movq	%r13, %rcx
	call	_ZN4SongD1Ev
.L25:
	movq	32(%rsp), %rcx
	call	_ZN4SongD1Ev
.L20:
	movq	%rbx, %rcx
	call	_ZN5UtPodD1Ev
	movq	%rsi, %rcx
.LEHB17:
	call	_Unwind_Resume
.LEHE17:
.L46:
	movq	%rax, %rsi
.L23:
	movq	256(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	je	.L25
	movq	%rdi, %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
	jmp	.L25
.L56:
	movq	%rax, %rsi
	movq	80(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	je	.L38
	movq	40(%rsp), %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
.L38:
	movq	88(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	je	.L40
	movq	%r14, %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
.L40:
	movq	%rdi, %rcx
	call	_ZN4SongD1Ev
	jmp	.L35
.L51:
	movq	%rax, %rsi
	jmp	.L35
.L49:
	movq	%rax, %rsi
.L28:
	movq	256(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	je	.L30
	movq	%rdi, %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
	jmp	.L30
.L45:
	movq	%rax, %rsi
	jmp	.L25
.L47:
	movq	%rax, %rsi
	movq	224(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	je	.L23
	leaq	192(%rsp), %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
	jmp	.L23
.L50:
	movq	%rax, %rsi
	movq	224(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	je	.L28
	movq	%r12, %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
	jmp	.L28
.L52:
	movq	%rax, %rsi
	jmp	.L33
.L48:
	movq	%rax, %rsi
	jmp	.L30
.L43:
	movq	%rax, %rsi
	movq	224(%rsp), %rax
	movq	.refptr._ZNSs4_Rep20_S_empty_rep_storageE(%rip), %rbp
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	je	.L18
	leaq	192(%rsp), %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
.L18:
	movq	256(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	je	.L20
	movq	%rdi, %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
	jmp	.L20
.L57:
	movq	%rax, %rbp
	movq	%rsi, %rcx
	call	_ZN4SongD1Ev
	movq	%rbp, %rsi
	jmp	.L40
.L42:
	movq	%rax, %rsi
	movq	.refptr._ZNSs4_Rep20_S_empty_rep_storageE(%rip), %rbp
	jmp	.L18
.L44:
	movq	%rax, %rsi
	jmp	.L20
.L55:
	movq	%rax, %rsi
	jmp	.L38
.L54:
	movq	%rax, %rsi
	jmp	.L40
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1499:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1499-.LLSDACSB1499
.LLSDACSB1499:
	.uleb128 .LEHB0-.LFB1499
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1499
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L44-.LFB1499
	.uleb128 0
	.uleb128 .LEHB2-.LFB1499
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L42-.LFB1499
	.uleb128 0
	.uleb128 .LEHB3-.LFB1499
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L43-.LFB1499
	.uleb128 0
	.uleb128 .LEHB4-.LFB1499
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L45-.LFB1499
	.uleb128 0
	.uleb128 .LEHB5-.LFB1499
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L46-.LFB1499
	.uleb128 0
	.uleb128 .LEHB6-.LFB1499
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L47-.LFB1499
	.uleb128 0
	.uleb128 .LEHB7-.LFB1499
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L48-.LFB1499
	.uleb128 0
	.uleb128 .LEHB8-.LFB1499
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L49-.LFB1499
	.uleb128 0
	.uleb128 .LEHB9-.LFB1499
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L50-.LFB1499
	.uleb128 0
	.uleb128 .LEHB10-.LFB1499
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L51-.LFB1499
	.uleb128 0
	.uleb128 .LEHB11-.LFB1499
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L52-.LFB1499
	.uleb128 0
	.uleb128 .LEHB12-.LFB1499
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L53-.LFB1499
	.uleb128 0
	.uleb128 .LEHB13-.LFB1499
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L54-.LFB1499
	.uleb128 0
	.uleb128 .LEHB14-.LFB1499
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L55-.LFB1499
	.uleb128 0
	.uleb128 .LEHB15-.LFB1499
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L56-.LFB1499
	.uleb128 0
	.uleb128 .LEHB16-.LFB1499
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L57-.LFB1499
	.uleb128 0
	.uleb128 .LEHB17-.LFB1499
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE1499:
	.section	.text.startup,"x"
	.seh_endproc
	.p2align 4,,15
	.def	_GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_main
_GLOBAL__sub_I_main:
.LFB1918:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	movq	.refptr.__dso_handle(%rip), %r8
	leaq	_ZStL8__ioinit(%rip), %rdx
	leaq	_ZNSt8ios_base4InitD1Ev(%rip), %rcx
	addq	$40, %rsp
	jmp	__cxa_atexit
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_main
.lcomm _ZStL8__ioinit,1,1
	.ident	"GCC: (GNU) 7.3.0"
	.def	_ZNSs4_Rep10_M_destroyERKSaIcE;	.scl	2;	.type	32;	.endef
	.def	_ZN5UtPodC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSsC1EPKcRKSaIcE;	.scl	2;	.type	32;	.endef
	.def	_ZN4SongC1ESsSsi;	.scl	2;	.type	32;	.endef
	.def	_ZN5UtPod7addSongERK4Song;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;	.scl	2;	.type	32;	.endef
	.def	_ZN5UtPod12showSongListEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5UtPod10removeSongERK4Song;	.scl	2;	.type	32;	.endef
	.def	_ZN4SongD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN5UtPodD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	__cxa_atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZNSt8ios_base4InitD1Ev, "dr"
	.globl	.refptr._ZNSt8ios_base4InitD1Ev
	.linkonce	discard
.refptr._ZNSt8ios_base4InitD1Ev:
	.quad	_ZNSt8ios_base4InitD1Ev
	.section	.rdata$.refptr.__dso_handle, "dr"
	.globl	.refptr.__dso_handle
	.linkonce	discard
.refptr.__dso_handle:
	.quad	__dso_handle
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
	.section	.rdata$.refptr._ZNSs4_Rep20_S_empty_rep_storageE, "dr"
	.globl	.refptr._ZNSs4_Rep20_S_empty_rep_storageE
	.linkonce	discard
.refptr._ZNSs4_Rep20_S_empty_rep_storageE:
	.quad	_ZNSs4_Rep20_S_empty_rep_storageE
