#when multiplying unsigned numbers we only have a single operand(source)
#the other operand should always exist in eax register
#the result will be stored in the eax register itself

.section .text
.globl _start
_start:
	# 12 * 5
	#store 12 in eax register and use 5 in mul instruction
	movl	$12,%eax
	movl	$5,%ebx
	mul	%ebx	#(%eax = %eax * %ebx)

#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
