	.text
	.file	"fib_series.cpp"
	.globl	_Z3fibi                 # -- Begin function _Z3fibi
	.p2align	4, 0x90
	.type	_Z3fibi,@function
_Z3fibi:                                # @_Z3fibi
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -16(%rbp)
	movl	$0, -12(%rbp)
	movl	$1, -4(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:                                # %if.then
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_7
.LBB0_2:                                # %if.end
	movl	$2, -8(%rbp)
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jg	.LBB0_6
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-12(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                # %for.end
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB0_7:                                # %return
	movl	-20(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	_Z3fibi, .Lfunc_end0-_Z3fibi
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
	subq	$16, %rsp
	movl	$0, -8(%rbp)
	movabsq	$.L.str, %rdi
	leaq	-4(%rbp), %rsi
	movb	$0, %al
	callq	scanf
	movl	-4(%rbp), %edi
	callq	_Z3fibi
	movabsq	$.L.str, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	printf
	callq	getchar
	xorl	%eax, %eax
	addq	$16, %rsp
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
	.asciz	"%d"
	.size	.L.str, 3


	.ident	"clang version 8.0.0 (https://git.llvm.org/git/clang.git/ 6c4fb3c5356d1a4fb031292c3a56458dd6e041b2) (https://git.llvm.org/git/llvm.git/ 922ac36549ebffa7764e0cefcc464cc3af25a8ac)"
	.section	".note.GNU-stack","",@progbits
