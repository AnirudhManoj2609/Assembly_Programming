.section .data
	my_list:
		.int	11,22,33

.section .text
.globl _start
_start:
	nop
	
	movl 	$2,%edi
	movl	my_list(,%edi,4),%eax #it shall be noted that we cannot directly use a number as index in the formula for calculation
	
	#also it should be noted that the offset address need not be specified in this formula

	movl 	$1,%eax
	movl	$0,%ebx
	int	$0x80
