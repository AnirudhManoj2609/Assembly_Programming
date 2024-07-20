.section .text
.globl _start
_start:
	
	#inputs for add function
	movl	$4,%eax
	movl	$5,%ebx
	
	call	add

	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
