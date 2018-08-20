	.text
	.file	"bin_search.cpp"
	.globl	_Z12binarySearchPiiii   # -- Begin function _Z12binarySearchPiiii
	.p2align	4, 0x90
	.type	_Z12binarySearchPiiii,@function
_Z12binarySearchPiiii:                  # @_Z12binarySearchPiiii
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -8(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.LBB0_6
# %bb.1:                                # %if.then
	movl	-12(%rbp), %ecx
	movl	-20(%rbp), %eax
	subl	-12(%rbp), %eax
	cltd
	movl	$2, %esi
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	movq	-32(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-8(%rbp), %eax
	jne	.LBB0_3
# %bb.2:                                # %if.then2
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_7
.LBB0_3:                                # %if.end
	movq	-32(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-8(%rbp), %eax
	jle	.LBB0_5
# %bb.4:                                # %if.then6
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-4(%rbp), %edx
	subl	$1, %edx
	movl	-8(%rbp), %ecx
	callq	_Z12binarySearchPiiii
	movl	%eax, -16(%rbp)
	jmp	.LBB0_7
.LBB0_5:                                # %if.end8
	movq	-32(%rbp), %rdi
	movl	-4(%rbp), %esi
	addl	$1, %esi
	movl	-20(%rbp), %edx
	movl	-8(%rbp), %ecx
	callq	_Z12binarySearchPiiii
	movl	%eax, -16(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.end11
	movl	$-1, -16(%rbp)
.LBB0_7:                                # %return
	movl	-16(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	_Z12binarySearchPiiii, .Lfunc_end0-_Z12binarySearchPiiii
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
	subq	$48, %rsp
	leaq	-48(%rbp), %rdi
	movl	$0, -16(%rbp)
	movq	.L_ZZ4mainE3arr, %rax
	movq	%rax, -48(%rbp)
	movq	.L_ZZ4mainE3arr+8, %rax
	movq	%rax, -40(%rbp)
	movl	.L_ZZ4mainE3arr+16, %eax
	movl	%eax, -32(%rbp)
	movl	$5, -12(%rbp)
	movl	$10, -8(%rbp)
	movl	-12(%rbp), %edx
	subl	$1, %edx
	movl	-8(%rbp), %ecx
	xorl	%esi, %esi
	callq	_Z12binarySearchPiiii
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.LBB1_2
# %bb.1:                                # %cond.true
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	jmp	.LBB1_3
.LBB1_2:                                # %cond.false
	movl	-4(%rbp), %esi
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
.LBB1_3:                                # %cond.end
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L_ZZ4mainE3arr,@object # @_ZZ4mainE3arr
	.section	.rodata,"a",@progbits
	.p2align	4
.L_ZZ4mainE3arr:
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	10                      # 0xa
	.long	40                      # 0x28
	.size	.L_ZZ4mainE3arr, 20

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Element is not present in array"
	.size	.L.str, 32

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Element is present at index %d"
	.size	.L.str.1, 31


	.ident	"clang version 8.0.0 (https://git.llvm.org/git/clang.git/ 6c4fb3c5356d1a4fb031292c3a56458dd6e041b2) (https://git.llvm.org/git/llvm.git/ 922ac36549ebffa7764e0cefcc464cc3af25a8ac)"
	.section	".note.GNU-stack","",@progbits
