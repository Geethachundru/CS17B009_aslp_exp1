	.file	"practice.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp ; stack[top-0]<-[rbp];rbp=0x7fffffffde30
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp ; rbp <- [rsp];rsp=0x7fffffffde30
	.cfi_def_cfa_register 6
	push	r12; stack[top-1] <- [r12];r12=4195296
	push	rbx; stack[top-2] <- [rbx]=0
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	ebx, 10 ; ebx <-10
	mov	r12d, 20 ; r12d <- 20
	lea	eax, [rbx+r12] ; eax <- [rbx + r12] ; eax <- 30
	mov	DWORD PTR [rbp-32], eax ; [rbp-32] <- [eax] ; [rbp-32] <- 30
	mov	eax, ebx ; eax <- [ebx] ; eax <- 10
	sub	eax, r12d ; eax <- [eax] - [r12d] ; eax <- -10
	mov	DWORD PTR [rbp-28], eax ; [rbp -28] <- [eax] ; 
	mov	eax, ebx ; eax <- [ebx] ; eax <- 10
	imul	eax, r12d ; eax <- [eax] - [r12d] ; eax <- 200
	mov	DWORD PTR [rbp-24], eax ; [rbp -28] <- [eax] ;
	mov	eax, ebx ; eax <- [ebx] ; eax <- 10
	cdq      ; eax <- [ebx] ; eax <- 10
	idiv	r12d ; eax <- [eax] - [r12d] ; eax <- -10
	mov	DWORD PTR [rbp-20], eax ; [rbp-28] <- [eax]
	mov	eax, 0 ; eax <- [ebx] ; eax <-10
	pop	rbx ; rbx <- stack[top-2] ; rbx=10
	pop	r12 ; rbx <- stack[top-1] ; r12=20
	pop	rbp ; rbp <- stack[top -0]; rbp=0x7fffffffde30
	.cfi_def_cfa 7, 8
	ret ; return
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
