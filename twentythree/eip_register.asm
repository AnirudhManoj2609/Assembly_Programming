.section .text
.globl _start
_start:
	movl	$4,%eax
	movl	$3,%ebx
	movl	$5,%ecx
	movl	$7,%edx
	
	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
