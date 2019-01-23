	.file	"p5.c"
	.intel_syntax noprefix
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB13:
	.cfi_startproc
	push	ebp;stack[top-0]<-[ebp]
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp;ebp<-[esp]
	.cfi_def_cfa_register 5
	and	esp, -16
	sub	esp, 32
	call	___main
	mov	DWORD PTR [esp], 4
	mov	DWORD PTR [esp+4], 6
	mov	DWORD PTR [esp+8], 1
	mov	DWORD PTR [esp+12], 9
	mov	DWORD PTR [esp+16], 0
	mov	eax, DWORD PTR [esp];[eax]<-[esp]
	mov	DWORD PTR [esp+24], eax;[esp+24]<-[eax]
	mov	eax, DWORD PTR [esp];[eax]<-[esp]
	mov	DWORD PTR [esp+20], eax;[esp+20]<-[eax]
	mov	DWORD PTR [esp+28], 0;[esp+28]<-0
	jmp	L2
L4:
	mov	eax, DWORD PTR [esp+28];[eax]<-[esp+28]
	mov	eax, DWORD PTR [esp+eax*4]
	cmp	DWORD PTR [esp+24], eax
	jle	L3
	mov	eax, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+eax*4]
	mov	DWORD PTR [esp+24], eax
L3:
	add	DWORD PTR [esp+28], 1
L2:
	cmp	DWORD PTR [esp+28], 4
	jle	L4
	mov	DWORD PTR [esp+28], 0
	jmp	L5
L7:
	mov	eax, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+eax*4]
	cmp	DWORD PTR [esp+20], eax
	jge	L6
	mov	eax, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+eax*4]
	mov	DWORD PTR [esp+20], eax
L6:
	add	DWORD PTR [esp+28], 1
L5:
	cmp	DWORD PTR [esp+28], 4
	jle	L7
	mov	eax, 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.ident	"GCC: (i686-posix-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
