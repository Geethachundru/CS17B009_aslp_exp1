	.file	"p4.c"
	.intel_syntax noprefix
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB13:
	.cfi_startproc
	push	ebp ; stack[top-0]<-[ebp]
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp;ebp<-[esp]
	.cfi_def_cfa_register 5
	push	ebx;stack[top-1]<-[ebx]
	and	esp, -16
	sub	esp, 96
	.cfi_offset 3, -12
	call	___main
	mov	ecx, 0
	mov	eax, 24
	and	eax, -4
	mov	edx, eax
	mov	eax, 0
L2:
	mov	DWORD PTR [esp+72+eax], ecx
	add	eax, 4
	cmp	eax, edx
	jb	L2
	mov	DWORD PTR [esp+72], 1
	mov	DWORD PTR [esp+76], 2
	mov	DWORD PTR [esp+80], 3
	mov	DWORD PTR [esp+84], 4
	mov	DWORD PTR [esp+88], 5
	mov	ecx, 0
	mov	eax, 24
	and	eax, -4
	mov	edx, eax
	mov	eax, 0
L4:
	mov	DWORD PTR [esp+48+eax], ecx
	add	eax, 4
	cmp	eax, edx
	jb	L4
	mov	DWORD PTR [esp+48], 6
	mov	DWORD PTR [esp+52], 7
	mov	DWORD PTR [esp+56], 8
	mov	DWORD PTR [esp+60], 9
	mov	DWORD PTR [esp+64], 10
	mov	ebx, 1
	jmp	L6
L7:
	mov	eax, DWORD PTR [esp+72+ebx*4]
	mov	DWORD PTR [esp+24+ebx*4], eax
	mov	eax, DWORD PTR [esp+48+ebx*4]
	mov	DWORD PTR [esp+ebx*4], eax
	add	ebx, 1
L6:
	cmp	ebx, 6
	jle	L7
	mov	ebx, 1
	jmp	L8
L9:
	mov	eax, DWORD PTR [esp+24+ebx*4]
	mov	DWORD PTR [esp+48+ebx*4], eax
	mov	eax, DWORD PTR [esp+ebx*4]
	mov	DWORD PTR [esp+72+ebx*4], eax
	add	ebx, 1
L8:
	cmp	ebx, 6
	jle	L9
	mov	eax, 0
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.ident	"GCC: (i686-posix-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
