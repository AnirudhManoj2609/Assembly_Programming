.section .text
.globl _start
_start:
	movl	$4,%eax
	subl	$1,%eax
	jp	jump_here	#jumps to label if parity flag is set

	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
	
jump_here:

	movl	$1,%eax
	movl	$7,%ebx
	int	$0x80
