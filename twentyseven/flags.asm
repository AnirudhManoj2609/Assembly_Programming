.section .text
.globl _start
_start:
	movl	$4,%eax
	subl	$4,%eax
	jz	jump_here	#jump if the zero flag is set

#this one is similar to using je,just that je stands for jump if equal and the other stands for jump if zero
	
	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
	
jump_here:

	movl	$1,%eax
	movl	$7,%ebx
	int	$0x80
