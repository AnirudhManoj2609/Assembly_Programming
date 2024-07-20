.section .text
.globl _start
_start:
		
	movl	$10,%eax
	movl	$20,%ebx
	call	add

	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80

.type	add,	@function

add:
	
	addl	%eax,%ebx
	ret
#by using assembly language we need not always pass values to other functions
#this is because registers are simply shared
