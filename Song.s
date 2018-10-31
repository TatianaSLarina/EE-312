	.file	"Song.cpp"
	.text
	.align 2
	.p2align 4,,15
	.def	_ZNSs4_Rep10_M_disposeERKSaIcE.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSs4_Rep10_M_disposeERKSaIcE.part.0
_ZNSs4_Rep10_M_disposeERKSaIcE.part.0:
.LFB1936:
	.seh_endprologue
	movl	$-1, %eax
	lock xaddl	%eax, 16(%rcx)
	testl	%eax, %eax
	jle	.L4
	ret
	.p2align 4,,10
.L4:
	jmp	_ZNSs4_Rep10_M_destroyERKSaIcE
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN4SongC2Ev
	.def	_ZN4SongC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4SongC2Ev
_ZN4SongC2Ev:
.LFB1499:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	.refptr._ZNSs4_Rep20_S_empty_rep_storageE(%rip), %rdi
	leaq	.LC0(%rip), %rdx
	xorl	%r8d, %r8d
	movq	%rcx, %rbx
	leaq	8(%rcx), %rsi
	leaq	24(%rdi), %rax
	movq	%rax, (%rcx)
	movq	%rax, 8(%rcx)
.LEHB0:
	call	_ZNSs6assignEPKcm
	leaq	.LC0(%rip), %rdx
	xorl	%r8d, %r8d
	movq	%rsi, %rcx
	call	_ZNSs6assignEPKcm
.LEHE0:
	movl	$0, 16(%rbx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L9:
	movq	%rax, %rsi
	movq	8(%rbx), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rdi, %rcx
	je	.L7
	leaq	47(%rsp), %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.0
.L7:
	movq	(%rbx), %rcx
	subq	$24, %rcx
	cmpq	%rdi, %rcx
	je	.L8
	leaq	47(%rsp), %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.0
.L8:
	movq	%rsi, %rcx
.LEHB1:
	call	_Unwind_Resume
	nop
.LEHE1:
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
	.uleb128 .L9-.LFB1499
	.uleb128 0
	.uleb128 .LEHB1-.LFB1499
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE1499:
	.text
	.seh_endproc
	.globl	_ZN4SongC1Ev
	.def	_ZN4SongC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN4SongC1Ev,_ZN4SongC2Ev
	.align 2
	.p2align 4,,15
	.globl	_ZN4SongC2ESsSsi
	.def	_ZN4SongC2ESsSsi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4SongC2ESsSsi
_ZN4SongC2ESsSsi:
.LFB1502:
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
	movq	.refptr._ZNSs4_Rep20_S_empty_rep_storageE(%rip), %r12
	movq	%rdx, %rbp
	movq	%r8, %rdx
	movq	%rcx, %rbx
	movl	%r9d, %esi
	leaq	8(%rcx), %rdi
	leaq	24(%r12), %rax
	movq	%rax, (%rcx)
	movq	%rax, 8(%rcx)
.LEHB2:
	call	_ZNSs6assignERKSs
	movq	%rbp, %rdx
	movq	%rdi, %rcx
	call	_ZNSs6assignERKSs
.LEHE2:
	movl	%esi, 16(%rbx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L15:
	movq	%rax, %rsi
	movq	8(%rbx), %rax
	leaq	-24(%rax), %rcx
	cmpq	%r12, %rcx
	je	.L13
	leaq	47(%rsp), %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.0
.L13:
	movq	(%rbx), %rcx
	subq	$24, %rcx
	cmpq	%r12, %rcx
	je	.L14
	leaq	47(%rsp), %rdx
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.0
.L14:
	movq	%rsi, %rcx
.LEHB3:
	call	_Unwind_Resume
	nop
.LEHE3:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1502:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1502-.LLSDACSB1502
.LLSDACSB1502:
	.uleb128 .LEHB2-.LFB1502
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L15-.LFB1502
	.uleb128 0
	.uleb128 .LEHB3-.LFB1502
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE1502:
	.text
	.seh_endproc
	.globl	_ZN4SongC1ESsSsi
	.def	_ZN4SongC1ESsSsi;	.scl	2;	.type	32;	.endef
	.set	_ZN4SongC1ESsSsi,_ZN4SongC2ESsSsi
	.align 2
	.p2align 4,,15
	.globl	_ZN4Song8setTitleESs
	.def	_ZN4Song8setTitleESs;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4Song8setTitleESs
_ZN4Song8setTitleESs:
.LFB1504:
	.seh_endprologue
	jmp	_ZNSs6assignERKSs
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN4Song9setArtistESs
	.def	_ZN4Song9setArtistESs;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4Song9setArtistESs
_ZN4Song9setArtistESs:
.LFB1505:
	.seh_endprologue
	addq	$8, %rcx
	jmp	_ZNSs6assignERKSs
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN4Song7setSizeEi
	.def	_ZN4Song7setSizeEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4Song7setSizeEi
_ZN4Song7setSizeEi:
.LFB1506:
	.seh_endprologue
	movl	%edx, 16(%rcx)
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN4SonggtERKS_
	.def	_ZN4SonggtERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4SonggtERKS_
_ZN4SonggtERKS_:
.LFB1507:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rbp
	movq	%rdx, %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-24(%rcx), %rbx
	movq	-24(%rdx), %rsi
	cmpq	%rsi, %rbx
	movq	%rsi, %r8
	cmovbe	%rbx, %r8
	testq	%r8, %r8
	je	.L21
	call	memcmp
	testl	%eax, %eax
	jne	.L22
.L21:
	subq	%rsi, %rbx
	movl	$1, %edx
	cmpq	$2147483647, %rbx
	jg	.L20
	cmpq	$-2147483648, %rbx
	jl	.L24
	movl	%ebx, %eax
.L22:
	testl	%eax, %eax
	movl	$1, %edx
	jg	.L20
.L24:
	movq	8(%rbp), %rcx
	movq	8(%rdi), %rdx
	movq	-24(%rcx), %rbx
	movq	-24(%rdx), %rsi
	cmpq	%rsi, %rbx
	movq	%rsi, %r8
	cmovbe	%rbx, %r8
	testq	%r8, %r8
	jne	.L38
.L25:
	subq	%rsi, %rbx
	movl	$1, %edx
	cmpq	$2147483647, %rbx
	jg	.L20
	cmpq	$-2147483648, %rbx
	jl	.L27
	movl	%ebx, %eax
.L26:
	testl	%eax, %eax
	movl	$1, %edx
	jg	.L20
.L27:
	movl	16(%rdi), %eax
	cmpl	%eax, 16(%rbp)
	setg	%dl
.L20:
	movl	%edx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L38:
	call	memcmp
	testl	%eax, %eax
	je	.L25
	jmp	.L26
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN4SongltERKS_
	.def	_ZN4SongltERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4SongltERKS_
_ZN4SongltERKS_:
.LFB1508:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rbp
	movq	%rdx, %rdi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-24(%rcx), %rbx
	movq	-24(%rdx), %rsi
	cmpq	%rsi, %rbx
	movq	%rsi, %r8
	cmovbe	%rbx, %r8
	testq	%r8, %r8
	je	.L40
	call	memcmp
	testl	%eax, %eax
	jne	.L41
.L40:
	subq	%rsi, %rbx
	cmpq	$2147483647, %rbx
	jg	.L42
	cmpq	$-2147483648, %rbx
	jl	.L49
	movl	%ebx, %eax
.L41:
	testl	%eax, %eax
	movl	$1, %edx
	js	.L39
.L42:
	movq	8(%rbp), %rcx
	movq	8(%rdi), %rdx
	movq	-24(%rcx), %rbx
	movq	-24(%rdx), %rsi
	cmpq	%rsi, %rbx
	movq	%rsi, %r8
	cmovbe	%rbx, %r8
	testq	%r8, %r8
	jne	.L57
	subq	%rsi, %rbx
	cmpq	$2147483647, %rbx
	jg	.L46
.L58:
	cmpq	$-2147483648, %rbx
	jl	.L49
	movl	%ebx, %eax
.L45:
	testl	%eax, %eax
	movl	$1, %edx
	js	.L39
.L46:
	movl	16(%rdi), %eax
	cmpl	%eax, 16(%rbp)
	setl	%dl
.L39:
	movl	%edx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L57:
	call	memcmp
	testl	%eax, %eax
	jne	.L45
	subq	%rsi, %rbx
	cmpq	$2147483647, %rbx
	jle	.L58
	jmp	.L46
	.p2align 4,,10
.L49:
	movl	$1, %edx
	jmp	.L39
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN4SongeqERKS_
	.def	_ZN4SongeqERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4SongeqERKS_
_ZN4SongeqERKS_:
.LFB1509:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	xorl	%ebx, %ebx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-24(%rcx), %r8
	cmpq	-24(%rdx), %r8
	je	.L73
.L59:
	movl	%ebx, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L73:
	testq	%r8, %r8
	je	.L61
	call	memcmp
	testl	%eax, %eax
	jne	.L59
.L61:
	movq	8(%rdi), %rcx
	movq	8(%rsi), %rdx
	xorl	%ebx, %ebx
	movq	-24(%rcx), %r8
	cmpq	-24(%rdx), %r8
	jne	.L59
	testq	%r8, %r8
	je	.L62
	call	memcmp
	testl	%eax, %eax
	jne	.L59
.L62:
	movl	16(%rsi), %eax
	cmpl	%eax, 16(%rdi)
	sete	%bl
	movl	%ebx, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN4SongD2Ev
	.def	_ZN4SongD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4SongD2Ev
_ZN4SongD2Ev:
.LFB1511:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	8(%rcx), %rax
	movq	.refptr._ZNSs4_Rep20_S_empty_rep_storageE(%rip), %rbx
	movq	%rcx, %rsi
	leaq	-24(%rax), %rcx
	cmpq	%rbx, %rcx
	jne	.L81
.L76:
	movq	(%rsi), %rax
	leaq	-24(%rax), %rcx
	cmpq	%rbx, %rcx
	jne	.L82
.L74:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L81:
	movl	$-1, %edx
	lock xaddl	%edx, -8(%rax)
	testl	%edx, %edx
	jg	.L76
	leaq	47(%rsp), %rdx
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L76
	.p2align 4,,10
.L82:
	movl	$-1, %edx
	lock xaddl	%edx, -8(%rax)
	testl	%edx, %edx
	jg	.L74
	leaq	47(%rsp), %rdx
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L74
	.seh_endproc
	.globl	_ZN4SongD1Ev
	.def	_ZN4SongD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN4SongD1Ev,_ZN4SongD2Ev
	.section	.text.startup,"x"
	.p2align 4,,15
	.def	_GLOBAL__sub_I__ZN4SongC2Ev;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__ZN4SongC2Ev
_GLOBAL__sub_I__ZN4SongC2Ev:
.LFB1935:
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
	.quad	_GLOBAL__sub_I__ZN4SongC2Ev
.lcomm _ZStL8__ioinit,1,1
	.ident	"GCC: (GNU) 7.3.0"
	.def	_ZNSs4_Rep10_M_destroyERKSaIcE;	.scl	2;	.type	32;	.endef
	.def	_ZNSs6assignEPKcm;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSs6assignERKSs;	.scl	2;	.type	32;	.endef
	.def	memcmp;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr._ZNSs4_Rep20_S_empty_rep_storageE, "dr"
	.globl	.refptr._ZNSs4_Rep20_S_empty_rep_storageE
	.linkonce	discard
.refptr._ZNSs4_Rep20_S_empty_rep_storageE:
	.quad	_ZNSs4_Rep20_S_empty_rep_storageE
