.section .text
.globl _start
_start:
	nop
	
	#setting the overflow flag
	movl	$0x7fffffff,%eax	#this is the maximum value with the MSB representing the sign as positive
	addl	$1,%eax
	
	movl	$0,%eax
	#clear the overflow flag
	xorl	%eax,%eax
#the result will be 0 since xor provides 0 if the value of 2 operands are same
	
	nop

	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
	
	
