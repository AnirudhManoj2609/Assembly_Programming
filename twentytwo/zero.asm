.section .text
.globl _start
_start:
	nop
	#setting the zero flag	
	movl	$11,%eax
	subl	%eax,%eax

	#unsetting the zero flag
	subl	$12,%eax

	nop
	
	#exit syscall
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
