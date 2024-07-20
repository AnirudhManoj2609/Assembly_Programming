.section .text
.globl _start
_start:
	movl	$0x7fffffff,%eax
	addl	$1,%eax
	jo	jump_here	#jumps to specified label if overflow flag is set
	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80

jump_here:
	
	movl	$1,%eax
	movl	$7,%ebx
	int	$0x80
