	.text
	.file	"eucledian_algo.cpp"
	.globl	_Z3gcdii                # -- Begin function _Z3gcdii
	.p2align	4, 0x90
	.type	_Z3gcdii,@function
_Z3gcdii:                               # @_Z3gcdii
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.LBB0_2
# %bb.1:                                # %if.then
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_3
.LBB0_2:                                # %if.end
	movl	-8(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	movl	-4(%rbp), %esi
	movl	%edx, %edi
	callq	_Z3gcdii
	movl	%eax, -12(%rbp)
.LBB0_3:                                # %return
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	_Z3gcdii, .Lfunc_end0-_Z3gcdii
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	$0, -28(%rbp)
	movl	$10, -24(%rbp)
	movl	$15, -20(%rbp)
	movl	-24(%rbp), %ebx
	movl	-20(%rbp), %r14d
	movl	-24(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	_Z3gcdii
	movabsq	$.L.str, %rdi
	movl	%ebx, %esi
	movl	%r14d, %edx
	movl	%eax, %ecx
	movb	$0, %al
	callq	printf
	movl	$35, -24(%rbp)
	movl	$10, -20(%rbp)
	movl	-24(%rbp), %ebx
	movl	-20(%rbp), %r14d
	movl	-24(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	_Z3gcdii
	movabsq	$.L.str, %rdi
	movl	%ebx, %esi
	movl	%r14d, %edx
	movl	%eax, %ecx
	movb	$0, %al
	callq	printf
	movl	$31, -24(%rbp)
	movl	$2, -20(%rbp)
	movl	-24(%rbp), %ebx
	movl	-20(%rbp), %r14d
	movl	-24(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	_Z3gcdii
	movabsq	$.L.str, %rdi
	movl	%ebx, %esi
	movl	%r14d, %edx
	movl	%eax, %ecx
	movb	$0, %al
	callq	printf
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GCD(%d, %d) = %dn"
	.size	.L.str, 18


	.ident	"clang version 8.0.0 (https://git.llvm.org/git/clang.git/ 6c4fb3c5356d1a4fb031292c3a56458dd6e041b2) (https://git.llvm.org/git/llvm.git/ 922ac36549ebffa7764e0cefcc464cc3af25a8ac)"
	.section	".note.GNU-stack","",@progbits
