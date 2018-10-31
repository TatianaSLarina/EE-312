	.file	"UtPod.cpp"
	.text
	.section	.text$_ZNKSt5ctypeIcE8do_widenEc,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZNKSt5ctypeIcE8do_widenEc
	.def	_ZNKSt5ctypeIcE8do_widenEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt5ctypeIcE8do_widenEc
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1252:
	.seh_endprologue
	movl	%edx, %eax
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
	.align 2
	.def	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
_ZNSs4_Rep10_M_disposeERKSaIcE.part.1:
.LFB1940:
	.seh_endprologue
	orl	$-1, %eax
	lock xaddl	%eax, 16(%rcx)
	testl	%eax, %eax
	jg	.L3
	jmp	_ZNSs4_Rep10_M_destroyERKSaIcE
.L3:
	ret
	.seh_endproc
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN5UtPodC2Ev
	.def	_ZN5UtPodC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5UtPodC2Ev
_ZN5UtPodC2Ev:
.LFB1500:
	.seh_endprologue
	movq	$0, (%rcx)
	movq	$0, 8(%rcx)
	movl	$512, 16(%rcx)
	ret
	.seh_endproc
	.globl	_ZN5UtPodC1Ev
	.def	_ZN5UtPodC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN5UtPodC1Ev,_ZN5UtPodC2Ev
	.align 2
	.p2align 4,,15
	.globl	_ZN5UtPodC2Ei
	.def	_ZN5UtPodC2Ei;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5UtPodC2Ei
_ZN5UtPodC2Ei:
.LFB1503:
	.seh_endprologue
	leal	-1(%rdx), %eax
	movq	$0, (%rcx)
	movq	$0, 8(%rcx)
	cmpl	$512, %eax
	movl	$512, %eax
	cmovnb	%eax, %edx
	movl	%edx, 16(%rcx)
	ret
	.seh_endproc
	.globl	_ZN5UtPodC1Ei
	.def	_ZN5UtPodC1Ei;	.scl	2;	.type	32;	.endef
	.set	_ZN5UtPodC1Ei,_ZN5UtPodC2Ei
	.section .rdata,"dr"
.LC0:
	.ascii "!songs_last && \"Bad list\"\0"
.LC1:
	.ascii "UtPod.cpp\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN5UtPod7addSongERK4Song
	.def	_ZN5UtPod7addSongERK4Song;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5UtPod7addSongERK4Song
_ZN5UtPod7addSongERK4Song:
.LFB1505:
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
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	16(%rcx), %eax
	cmpl	%eax, 16(%rdx)
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	jge	.L26
	cmpq	$0, (%rcx)
	je	.L34
	movl	$32, %ecx
.LEHB0:
	call	_Znwm
.LEHE0:
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	%rax, %rcx
	movl	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	%rax, %rsi
	movq	%rax, %rbp
.LEHB1:
	call	_ZN4SongC1Ev
.LEHE1:
	movq	8(%rbx), %rax
	movq	$0, 24(%rsi)
	movq	%rsi, 24(%rax)
	movq	%rsi, 8(%rbx)
.L13:
	leaq	40(%rsp), %rsi
	movq	%rdi, %rdx
	movq	%rsi, %rcx
.LEHB2:
	call	_ZNSsC1ERKSs
.LEHE2:
	movq	%rsi, %rdx
	movq	%rbp, %rcx
.LEHB3:
	call	_ZN4Song8setTitleESs
.LEHE3:
	movq	40(%rsp), %rax
	movq	.refptr._ZNSs4_Rep20_S_empty_rep_storageE(%rip), %rbp
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	jne	.L35
.L15:
	movq	8(%rbx), %r12
	leaq	8(%rdi), %rdx
	movq	%rsi, %rcx
.LEHB4:
	call	_ZNSsC1ERKSs
.LEHE4:
	movq	%rsi, %rdx
	movq	%r12, %rcx
.LEHB5:
	call	_ZN4Song9setArtistESs
.LEHE5:
	movq	40(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	jne	.L36
.L18:
	movl	16(%rdi), %edx
	movq	8(%rbx), %rcx
.LEHB6:
	call	_ZN4Song7setSizeEi
	xorl	%eax, %eax
.L9:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L34:
	cmpq	$0, 8(%rcx)
	jne	.L37
	movl	$32, %ecx
	call	_Znwm
.LEHE6:
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	%rax, %rcx
	movl	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	%rax, %rsi
	movq	%rax, %rbp
.LEHB7:
	call	_ZN4SongC1Ev
.LEHE7:
	movq	$0, 24(%rsi)
	movq	%rsi, (%rbx)
	movq	%rsi, 8(%rbx)
	jmp	.L13
	.p2align 4,,10
.L36:
	movl	$-1, %edx
	lock xaddl	%edx, -8(%rax)
	testl	%edx, %edx
	jg	.L18
	leaq	39(%rsp), %rdx
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L18
	.p2align 4,,10
.L35:
	movl	$-1, %edx
	lock xaddl	%edx, -8(%rax)
	testl	%edx, %edx
	jg	.L15
	leaq	39(%rsp), %rdx
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L15
	.p2align 4,,10
.L26:
	movl	$-1, %eax
	jmp	.L9
.L37:
	leaq	.LC0(%rip), %r9
	leaq	_ZZN5UtPod7addSongERK4SongE19__PRETTY_FUNCTION__(%rip), %r8
	leaq	.LC1(%rip), %rcx
	movl	$57, %edx
.LEHB8:
	call	__assert_func
.L30:
	movq	%rax, %rbx
	movq	40(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rbp, %rcx
	jne	.L33
.L32:
	movq	%rbx, %rcx
	call	_Unwind_Resume
.LEHE8:
.L29:
	movq	%rax, %rbx
	movq	40(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	.refptr._ZNSs4_Rep20_S_empty_rep_storageE(%rip), %rcx
	je	.L32
.L33:
	leaq	39(%rsp), %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
	jmp	.L32
.L28:
.L31:
	movl	$32, %edx
	movq	%rsi, %rcx
	movq	%rax, %rbx
	call	_ZdlPvm
	jmp	.L32
.L27:
	jmp	.L31
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1505:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1505-.LLSDACSB1505
.LLSDACSB1505:
	.uleb128 .LEHB0-.LFB1505
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1505
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L28-.LFB1505
	.uleb128 0
	.uleb128 .LEHB2-.LFB1505
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB1505
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L29-.LFB1505
	.uleb128 0
	.uleb128 .LEHB4-.LFB1505
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB1505
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L30-.LFB1505
	.uleb128 0
	.uleb128 .LEHB6-.LFB1505
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB1505
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L27-.LFB1505
	.uleb128 0
	.uleb128 .LEHB8-.LFB1505
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE1505:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "Removing...\0"
.LC3:
	.ascii "empty mem\0"
.LC4:
	.ascii " by \0"
.LC5:
	.ascii ", size \0"
.LC6:
	.ascii "\12\0"
.LC7:
	.ascii "I found it\0"
.LC8:
	.ascii "i && \"What?\"\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN5UtPod10removeSongERK4Song
	.def	_ZN5UtPod10removeSongERK4Song;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5UtPod10removeSongERK4Song
_ZN5UtPod10removeSongERK4Song:
.LFB1509:
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
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movl	16(%rcx), %eax
	movq	%rcx, %rsi
	movq	%rdx, %r12
	testl	%eax, %eax
	je	.L39
	cmpq	$0, (%rcx)
	je	.L39
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	movl	$11, %r8d
.LEHB9:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	.refptr._ZSt4cout(%rip), %r15
	movq	(%r15), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %rbx
	testq	%rbx, %rbx
	je	.L45
	cmpb	$0, 56(%rbx)
	je	.L41
	movsbl	67(%rbx), %edx
.L42:
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	(%rsi), %rbx
	testq	%rbx, %rbx
	je	.L43
	movq	.refptr._ZSt4cout(%rip), %rbp
	leaq	40(%rsp), %rdi
	movq	.refptr._ZNSs4_Rep20_S_empty_rep_storageE(%rip), %rsi
	movq	%rbp, %r13
	movq	%rbp, %r14
	jmp	.L44
	.p2align 4,,10
.L50:
	leaq	8(%rbx), %rdx
	movq	%rdi, %rcx
	call	_ZNSsC1ERKSs
.LEHE9:
	movq	40(%rsp), %rdx
	movq	%r13, %rcx
	movq	-24(%rdx), %r8
.LEHB10:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	.LC5(%rip), %rdx
	movl	$7, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE10:
	movq	40(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rsi, %rcx
	jne	.L82
.L53:
	movl	16(%rbx), %edx
	movq	%r14, %rcx
.LEHB11:
	call	_ZNSolsEi
	leaq	.LC6(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%r12, %rdx
	movq	%rbx, %rcx
	call	_ZN4SongeqERKS_
	testb	%al, %al
	jne	.L83
	movq	24(%rbx), %rbx
	testq	%rbx, %rbx
	je	.L43
.L44:
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_ZNSsC1ERKSs
.LEHE11:
	movq	40(%rsp), %rdx
	movq	%rbp, %rcx
	movq	-24(%rdx), %r8
.LEHB12:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	.LC4(%rip), %rdx
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE12:
	movq	40(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rsi, %rcx
	je	.L50
	movl	$-1, %edx
	lock xaddl	%edx, -8(%rax)
	testl	%edx, %edx
	jg	.L50
	leaq	39(%rsp), %rdx
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L50
	.p2align 4,,10
.L82:
	movl	$-1, %edx
	lock xaddl	%edx, -8(%rax)
	testl	%edx, %edx
	jg	.L53
	leaq	39(%rsp), %rdx
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L53
	.p2align 4,,10
.L43:
	leaq	.LC8(%rip), %r9
	leaq	_ZZN5UtPod10removeSongERK4SongE19__PRETTY_FUNCTION__(%rip), %r8
	leaq	.LC1(%rip), %rcx
	movl	$112, %edx
.LEHB13:
	call	__assert_func
	.p2align 4,,10
.L83:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	movl	$10, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r15), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %rbx
	testq	%rbx, %rbx
	je	.L45
	cmpb	$0, 56(%rbx)
	je	.L56
	movsbl	67(%rbx), %edx
.L57:
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	xorl	%eax, %eax
.L38:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L41:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L42
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L42
	.p2align 4,,10
.L56:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L57
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L57
.L39:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	movl	$9, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	movq	240(%rdx,%rax), %rbx
	testq	%rbx, %rbx
	je	.L45
	cmpb	$0, 56(%rbx)
	je	.L46
	movsbl	67(%rbx), %edx
.L47:
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movl	$-1, %eax
	jmp	.L38
.L46:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L47
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L47
.L45:
	call	_ZSt16__throw_bad_castv
.L66:
.L81:
	movq	%rax, %rbx
	movq	40(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rsi, %rcx
	je	.L61
	leaq	39(%rsp), %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
.L61:
	movq	%rbx, %rcx
	call	_Unwind_Resume
.LEHE13:
.L65:
	jmp	.L81
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1509:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1509-.LLSDACSB1509
.LLSDACSB1509:
	.uleb128 .LEHB9-.LFB1509
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB1509
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L66-.LFB1509
	.uleb128 0
	.uleb128 .LEHB11-.LFB1509
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB1509
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L65-.LFB1509
	.uleb128 0
	.uleb128 .LEHB13-.LFB1509
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE1509:
	.text
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN5UtPod7shuffleEv
	.def	_ZN5UtPod7shuffleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5UtPod7shuffleEv
_ZN5UtPod7shuffleEv:
.LFB1510:
	.seh_endprologue
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC9:
	.ascii "No Songs\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN5UtPod12showSongListEv
	.def	_ZN5UtPod12showSongListEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5UtPod12showSongListEv
_ZN5UtPod12showSongListEv:
.LFB1511:
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
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	cmpq	$0, (%rcx)
	movq	%rcx, %rbp
	je	.L140
	movl	$32, %ecx
.LEHB14:
	call	_Znwm
.LEHE14:
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	%rax, %rcx
	movl	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	%rax, %rbx
.LEHB15:
	call	_ZN4SongC1Ev
.LEHE15:
	leaq	40(%rsp), %rsi
	movq	0(%rbp), %rdx
	movq	$0, 24(%rbx)
	movq	%rsi, %rcx
.LEHB16:
	call	_ZNSsC1ERKSs
.LEHE16:
	movq	%rsi, %rdx
	movq	%rbx, %rcx
.LEHB17:
	call	_ZN4Song8setTitleESs
.LEHE17:
	movq	40(%rsp), %rax
	movq	.refptr._ZNSs4_Rep20_S_empty_rep_storageE(%rip), %rdi
	leaq	-24(%rax), %rcx
	cmpq	%rdi, %rcx
	jne	.L141
.L92:
	movq	0(%rbp), %rax
	movq	%rsi, %rcx
	leaq	8(%rax), %rdx
.LEHB18:
	call	_ZNSsC1ERKSs
.LEHE18:
	movq	%rsi, %rdx
	movq	%rbx, %rcx
.LEHB19:
	call	_ZN4Song9setArtistESs
.LEHE19:
	movq	40(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rdi, %rcx
	jne	.L142
.L95:
	movq	0(%rbp), %rax
	movq	%rbx, %rcx
	movl	16(%rax), %edx
.LEHB20:
	call	_ZN4Song7setSizeEi
	movq	0(%rbp), %rax
	movq	.refptr._ZSt4cout(%rip), %rbp
	movq	24(%rax), %rax
	movq	%rbp, %r12
	movq	%rbp, %r13
	movq	%rax, 24(%rbx)
	jmp	.L109
	.p2align 4,,10
.L147:
	movq	%rsi, %rcx
	call	_ZNSsC1ERKSs
.LEHE20:
	movq	%rsi, %rdx
	movq	%rbx, %rcx
.LEHB21:
	call	_ZN4Song8setTitleESs
.LEHE21:
	movq	40(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rdi, %rcx
	jne	.L143
.L104:
	movq	24(%rbx), %rax
	movq	%rsi, %rcx
	leaq	8(%rax), %rdx
.LEHB22:
	call	_ZNSsC1ERKSs
.LEHE22:
	movq	%rsi, %rdx
	movq	%rbx, %rcx
.LEHB23:
	call	_ZN4Song9setArtistESs
.LEHE23:
	movq	40(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rdi, %rcx
	jne	.L144
.L107:
	movq	24(%rbx), %rax
	movq	%rbx, %rcx
	movl	16(%rax), %edx
.LEHB24:
	call	_ZN4Song7setSizeEi
	movq	24(%rbx), %rax
	movq	24(%rax), %rax
	movq	%rax, 24(%rbx)
.L109:
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZNSsC1ERKSs
.LEHE24:
	movq	40(%rsp), %rdx
	movq	%rbp, %rcx
	movq	-24(%rdx), %r8
.LEHB25:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	.LC4(%rip), %rdx
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE25:
	movq	40(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rdi, %rcx
	jne	.L145
.L98:
	leaq	8(%rbx), %rdx
	movq	%rsi, %rcx
.LEHB26:
	call	_ZNSsC1ERKSs
.LEHE26:
	movq	40(%rsp), %rdx
	movq	%r12, %rcx
	movq	-24(%rdx), %r8
.LEHB27:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	.LC5(%rip), %rdx
	movl	$7, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE27:
	movq	40(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rdi, %rcx
	jne	.L146
.L101:
	movl	16(%rbx), %edx
	movq	%r13, %rcx
.LEHB28:
	call	_ZNSolsEi
	leaq	.LC6(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	24(%rbx), %rdx
	testq	%rdx, %rdx
	jne	.L147
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L145:
	movl	$-1, %edx
	lock xaddl	%edx, -8(%rax)
	testl	%edx, %edx
	jg	.L98
	leaq	39(%rsp), %rdx
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L98
	.p2align 4,,10
.L146:
	movl	$-1, %edx
	lock xaddl	%edx, -8(%rax)
	testl	%edx, %edx
	jg	.L101
	leaq	39(%rsp), %rdx
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L101
	.p2align 4,,10
.L143:
	movl	$-1, %edx
	lock xaddl	%edx, -8(%rax)
	testl	%edx, %edx
	jg	.L104
	leaq	39(%rsp), %rdx
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L104
	.p2align 4,,10
.L144:
	movl	$-1, %edx
	lock xaddl	%edx, -8(%rax)
	testl	%edx, %edx
	jg	.L107
	leaq	39(%rsp), %rdx
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L107
	.p2align 4,,10
.L140:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	movl	$8, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	movq	240(%rdx,%rax), %rbx
	testq	%rbx, %rbx
	je	.L148
	cmpb	$0, 56(%rbx)
	je	.L88
	movsbl	67(%rbx), %edx
.L89:
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L88:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L89
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L89
	.p2align 4,,10
.L142:
	movl	$-1, %edx
	lock xaddl	%edx, -8(%rax)
	testl	%edx, %edx
	jg	.L95
	leaq	39(%rsp), %rdx
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L95
	.p2align 4,,10
.L141:
	movl	$-1, %edx
	lock xaddl	%edx, -8(%rax)
	testl	%edx, %edx
	jg	.L92
	leaq	39(%rsp), %rdx
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L92
.L124:
	movq	%rax, %rsi
	movq	%rbx, %rcx
	movl	$32, %edx
	call	_ZdlPvm
	movq	%rsi, %rcx
	call	_Unwind_Resume
.L126:
.L136:
	movq	%rax, %rbx
	movq	40(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rdi, %rcx
	jne	.L134
.L122:
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L125:
	movq	%rax, %rbx
	movq	40(%rsp), %rax
	leaq	-24(%rax), %rcx
	cmpq	.refptr._ZNSs4_Rep20_S_empty_rep_storageE(%rip), %rcx
	je	.L122
.L134:
	leaq	39(%rsp), %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
	jmp	.L122
.L148:
	call	_ZSt16__throw_bad_castv
.LEHE28:
.L127:
	jmp	.L136
.L128:
	jmp	.L136
.L129:
	jmp	.L136
.L130:
	jmp	.L136
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1511:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1511-.LLSDACSB1511
.LLSDACSB1511:
	.uleb128 .LEHB14-.LFB1511
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB1511
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L124-.LFB1511
	.uleb128 0
	.uleb128 .LEHB16-.LFB1511
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB1511
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L125-.LFB1511
	.uleb128 0
	.uleb128 .LEHB18-.LFB1511
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB1511
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L126-.LFB1511
	.uleb128 0
	.uleb128 .LEHB20-.LFB1511
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB1511
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L129-.LFB1511
	.uleb128 0
	.uleb128 .LEHB22-.LFB1511
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB1511
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L130-.LFB1511
	.uleb128 0
	.uleb128 .LEHB24-.LFB1511
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB1511
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L127-.LFB1511
	.uleb128 0
	.uleb128 .LEHB26-.LFB1511
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB1511
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L128-.LFB1511
	.uleb128 0
	.uleb128 .LEHB28-.LFB1511
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE1511:
	.text
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN5UtPod12sortSongListEv
	.def	_ZN5UtPod12sortSongListEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5UtPod12sortSongListEv
_ZN5UtPod12sortSongListEv:
.LFB1950:
	.seh_endprologue
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN5UtPod11clearMemoryEv
	.def	_ZN5UtPod11clearMemoryEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5UtPod11clearMemoryEv
_ZN5UtPod11clearMemoryEv:
.LFB1952:
	.seh_endprologue
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN5UtPod18getRemainingMemoryEv
	.def	_ZN5UtPod18getRemainingMemoryEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5UtPod18getRemainingMemoryEv
_ZN5UtPod18getRemainingMemoryEv:
.LFB1514:
	.seh_endprologue
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN5UtPodD2Ev
	.def	_ZN5UtPodD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5UtPodD2Ev
_ZN5UtPodD2Ev:
.LFB1516:
	.seh_endprologue
	ret
	.seh_endproc
	.globl	_ZN5UtPodD1Ev
	.def	_ZN5UtPodD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN5UtPodD1Ev,_ZN5UtPodD2Ev
	.section	.text.startup,"x"
	.p2align 4,,15
	.def	_GLOBAL__sub_I__ZN5UtPodC2Ev;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__ZN5UtPodC2Ev
_GLOBAL__sub_I__ZN5UtPodC2Ev:
.LFB1938:
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
	.quad	_GLOBAL__sub_I__ZN5UtPodC2Ev
	.section .rdata,"dr"
	.align 32
_ZZN5UtPod10removeSongERK4SongE19__PRETTY_FUNCTION__:
	.ascii "int UtPod::removeSong(const Song&)\0"
	.align 32
_ZZN5UtPod7addSongERK4SongE19__PRETTY_FUNCTION__:
	.ascii "int UtPod::addSong(const Song&)\0"
.lcomm _ZStL8__ioinit,1,1
	.ident	"GCC: (GNU) 7.3.0"
	.def	_ZNSs4_Rep10_M_destroyERKSaIcE;	.scl	2;	.type	32;	.endef
	.def	__real__Znwm;	.scl	2;	.type	32;	.endef
	.def	_Znwm;	.scl	2;	.type	32;	.endef
	.def	_ZN4SongC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSsC1ERKSs;	.scl	2;	.type	32;	.endef
	.def	_ZN4Song8setTitleESs;	.scl	2;	.type	32;	.endef
	.def	_ZN4Song9setArtistESs;	.scl	2;	.type	32;	.endef
	.def	_ZN4Song7setSizeEi;	.scl	2;	.type	32;	.endef
	.def	__assert_func;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvm;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZN4SongeqERKS_;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
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
