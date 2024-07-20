.section .text
.globl _start
_start:

	movl	$1,%eax
	movl	$2,%ebx
	
	jmp	jump_here	#jumps to the label,i.e calls a function
#should be noted that the eip doesnt load the exit syscall instructions after executing jump_here label
	#exit
	movl	$1,%eax
	movl	$999,%ebx
	int	$0x80

jump_here:	#this is a label which is basically a function
	
	movl	$100,%eax
	movl	$200,%ebx
	
