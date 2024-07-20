.section .data
	float1:	.float	1.2,3.6,7.45,11.06

.section .text
.globl _start
_start:	
	movups	float1,%xmm0
	movdqa	float1,%xmm1
#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
