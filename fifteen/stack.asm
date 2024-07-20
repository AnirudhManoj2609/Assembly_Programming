.section .text
.globl _start
_start:
	nop
	
	#copy the esp address to ebp
	movl	%esp,%ebp
	
	#create some memory space in stack frame
	subl	$8,%esp	#create 8 bytes of space in the stack
#add is used to delete stack space and sub is used to add stack space
	
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
