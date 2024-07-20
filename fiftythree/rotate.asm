#its possible to do shifting without putting 0 to the empty bit
#this is also known as circular shift or rotate shift

.section .text
.globl _start
_start:
	movb	$220,%al
	rol	%al
	ror	%al
	ror	%al
	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80	
