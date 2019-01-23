	.file	"aplswap.c"
	.intel_syntax noprefix
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB13:
	.cfi_startproc
	push	ebp ; stack[top-0] <- [ebp]
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp ; ebp<-[esp]
	.cfi_def_cfa_register 5
	push	esi;stack[top-1]<-[esi]
	push	ebx;stack[top-2]<-[ebx]
	and	esp, -16
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	call	___main
	mov	ebx, 10;ebx<-10
	mov	esi, 20; esi<-20
	add	ebx, esi
	mov	eax, ebx;eax<-[ebx];eax<-10
	sub	eax, esi;eax<-[eax]-[esi];eax<-10
	mov	esi, eax;esi<-[eax];esi<-48
	sub	ebx, esi;ebx<-[ebx];ebx<-20
	mov	eax, 0;eax<-[ebx];eax<-10
	lea	esp, [ebp-8];esp<-[ebp-8];esp<-0x61fee0
	pop	ebx;ebx<-stack[top-2];ebx=20
	.cfi_restore 3
	pop	esi;esi<-stack[top-1];esi=48
	.cfi_restore 6
	pop	ebp;ebp<-stack[top-0];ebp=0x61fee8
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.ident	"GCC: (i686-posix-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
