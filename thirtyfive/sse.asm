.section .data
	value1:	.int	1,2,3,4
	value2:	.byte	1,2,3,4,5,6,7,8

.section .text
.globl _start
_start:
	
	movdqa	value1,%xmm0
	movdqa	value2,%xmm1

	#movdq	value1,%xmm2 ..movdq is not a valid instruction 
	#movdq	value2,%xmm3

	movq	value1,%xmm4
	movq	value2,%xmm5
#moves 64 bit from the address to xmm4 and fills the rest with 0s
	movq	value1,%mm0
	movq	value2,%mm1	

	#movdqa	value1,%mm2 ..results in operand mismatch
	#movdqa	value2,%mm3

	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
