.section .data
	value1:	.int	1,2

.section .text
.globl _start
_start:
	#move value1 into mmx register
	movq	value1,%mm0

	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
