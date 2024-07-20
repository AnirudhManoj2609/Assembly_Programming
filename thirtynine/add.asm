.section .data
	value1:	.int	4
	mybyte:	.byte	7

.section .text
.globl _start
_start:
	movl	$6,%eax
	addl	value1,%eax
	movw	$100,%bx
	
	addw	value1,%bx
	movb	$2,%cl

	addb	mybyte,%cl
#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
