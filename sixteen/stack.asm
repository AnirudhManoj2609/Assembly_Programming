.section .text
.globl _start
_start:
	movl	%esp,%ebp

	subl	$8,%esp

	#adding values to stack
	movl	$100,%eax
	pushl	%eax
	movl	$200,%ebx
	pushl	%ebx
#the value will be pushed into the stack and the stack will be incremented with the number of bytes specified in the instruction
	
	#removing data from stack
	popw	%ax
	popw	%bx
#the register specified with the pop command will be where the popped value will be stored from the stack	
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
