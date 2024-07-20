.section .data
	num:	.byte	-128
#this value will be stored as a negative zero
#in signed numbers the negative numbers magnitude that is possible to represent 
#exceeds by 1 as to the positive,where the last negative value is represented as#a negative zero with sign as 1 and the magnitude as 0

.section .text
.globl _start
_start:
	movl	$1,%eax
	movl	$0,%ebx
	movl	num,%ecx
	int	$0x80
