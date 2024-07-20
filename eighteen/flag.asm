.section .text
.globl _start
_start:
	nop
	#set the carry flag
	stc	#sets carry flag	
	
	#unsett the carry flag
	clc	#unsets carry flag

	nop
	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
