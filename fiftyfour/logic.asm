.section .text
.globl _start
_start:
	movb	$85,%al
	movb	$90,%bl
	
	or	%al,%bl	#result stored in bl register
	and	%al,%bl	#''
	xor	%al,%bl

	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
