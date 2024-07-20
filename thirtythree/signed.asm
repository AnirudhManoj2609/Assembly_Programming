.section .data
	number1:	.int	-27
	number2:	.int	-3
	number3:	.int	3
	number4:	.int	253

.section .text
.globl _start
_start:
	nop
	nop
	movl	number1,%eax
	movl	number2,%ebx
	movl	number3,%ecx
	movl	number4,%edx
	addl	%eax,%ebx
	addl	%eax,%ecx

	#exit
	movl	$1,%eax
	movl	$2,%ebx
	int	$0x80
