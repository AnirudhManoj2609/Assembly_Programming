.section .data
	msg:	.ascii	"There is an overflow\n"
	
.section .text
.globl _start
_start:
	movb	$-120,%al
	movb	$-10,%bl
	addb	%al,%bl
	
	jo	overflow

	jno	exit
	
exit:
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80

overflow:
	movl	$4,%eax
	movl	$1,%ebx
	movl	$msg,%ecx
	movl	$21,%edx
	int	$0x80

	jmp exit	
