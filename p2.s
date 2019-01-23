	.file	"p2.c"
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
	push	ebx;stack[top-1]<-[ebx]
	and	esp, -16
	sub	esp, 32
	.cfi_offset 3, -12
	call	___main
	mov	DWORD PTR [esp+8], 2
	mov	DWORD PTR [esp+12], 5
	mov	DWORD PTR [esp+16], 8
	mov	DWORD PTR [esp+20], 6
	mov	DWORD PTR [esp+24], 9
	mov	DWORD PTR [esp+28], 4
	mov	ebx, 0;ebx<-0
	jmp	L2
L3:
	mov	eax, DWORD PTR [esp+8+ebx*4]
	add	eax, 1
	mov	DWORD PTR [esp+8+ebx*4], eax
	add	ebx, 1
L2:
	cmp	ebx, 5
	jle	L3
	mov	eax, 0;eax<-[ebx];eax<-0
	mov	ebx, DWORD PTR [ebp-4];[ebx]<-[ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.ident	"GCC: (i686-posix-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
