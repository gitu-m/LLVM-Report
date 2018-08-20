	.text
	.file	"bubble_sort.cpp"
	.globl	_Z4swapPiS_             # -- Begin function _Z4swapPiS_
	.p2align	4, 0x90
	.type	_Z4swapPiS_,@function
_Z4swapPiS_:                            # @_Z4swapPiS_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	_Z4swapPiS_, .Lfunc_end0-_Z4swapPiS_
	.cfi_endproc
                                        # -- End function
	.globl	_Z10bubbleSortPii       # -- Begin function _Z10bubbleSortPii
	.p2align	4, 0x90
	.type	_Z10bubbleSortPii,@function
_Z10bubbleSortPii:                      # @_Z10bubbleSortPii
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -8(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	movl	-8(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB1_10
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$0, -4(%rbp)
.LBB1_3:                                # %for.cond1
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	-8(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB1_8
# %bb.4:                                # %for.body5
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB1_6
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	-24(%rbp), %rdi
	movslq	-4(%rbp), %rax
	shlq	$2, %rax
	addq	%rax, %rdi
	movq	-24(%rbp), %rsi
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	callq	_Z4swapPiS_
.LBB1_6:                                # %if.end
                                        #   in Loop: Header=BB1_3 Depth=2
	jmp	.LBB1_7
.LBB1_7:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_3
.LBB1_8:                                # %for.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_9
.LBB1_9:                                # %for.inc14
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB1_1
.LBB1_10:                               # %for.end16
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_Z10bubbleSortPii, .Lfunc_end1-_Z10bubbleSortPii
	.cfi_endproc
                                        # -- End function
	.globl	_Z10printArrayPii       # -- Begin function _Z10printArrayPii
	.p2align	4, 0x90
	.type	_Z10printArrayPii,@function
_Z10printArrayPii:                      # @_Z10printArrayPii
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -8(%rbp)
	movl	$0, -4(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB2_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_Z10printArrayPii, .Lfunc_end2-_Z10printArrayPii
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
	movl	$0, -8(%rbp)
	movq	.L_ZZ4mainE3arr, %rax
	movq	%rax, -48(%rbp)
	movq	.L_ZZ4mainE3arr+8, %rax
	movq	%rax, -40(%rbp)
	movq	.L_ZZ4mainE3arr+16, %rax
	movq	%rax, -32(%rbp)
	movl	.L_ZZ4mainE3arr+24, %eax
	movl	%eax, -24(%rbp)
	movl	$7, -4(%rbp)
	movl	-4(%rbp), %esi
	callq	_Z10bubbleSortPii
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
	leaq	-48(%rbp), %rdi
	movl	-4(%rbp), %esi
	callq	_Z10printArrayPii
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d "
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"n"
	.size	.L.str.1, 2

	.type	.L_ZZ4mainE3arr,@object # @_ZZ4mainE3arr
	.section	.rodata,"a",@progbits
	.p2align	4
.L_ZZ4mainE3arr:
	.long	64                      # 0x40
	.long	34                      # 0x22
	.long	25                      # 0x19
	.long	12                      # 0xc
	.long	22                      # 0x16
	.long	11                      # 0xb
	.long	90                      # 0x5a
	.size	.L_ZZ4mainE3arr, 28

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Sorted array: \n"
	.size	.L.str.2, 16


	.ident	"clang version 8.0.0 (https://git.llvm.org/git/clang.git/ 6c4fb3c5356d1a4fb031292c3a56458dd6e041b2) (https://git.llvm.org/git/llvm.git/ 922ac36549ebffa7764e0cefcc464cc3af25a8ac)"
	.section	".note.GNU-stack","",@progbits
