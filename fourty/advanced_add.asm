.section .data
	value1:	.int	0x18181818
	value2:	.byte	0x69
	value3:	.int	0x5a5a5a5a

.section .text
.globl _start
_start:
	movl	$value1,%edx
	addl	$0x81818181,(%edx)
	
	addb	$0x96,value2
	addb	$0xa5,value3
	addw	$0xa:500,value3

	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
