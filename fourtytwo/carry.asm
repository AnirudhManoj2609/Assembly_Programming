.section .data
	msg1:	.ascii	"Carry is detected\n"
	msg2:	.ascii	"No Carry is there\n"

.section .text
.globl _start
_start:
	movb	$0b01000000,%al
	movb	$127,%bl
	addb	%al,%bl
#it is observed that the suffix denoting no. of bytes in addition is the 
#criteria used to check if a carry is there or not
#i.e a carry from the 8th bit in case of 'b' and 32nd in case of 'l'

	jc	carry_is_there	
	jnc	carry_not_there

carry_not_there:
		
	movl	$4,%eax
	movl	$1,%ebx
	movl	$msg2,%ecx
	movl	$18,%edx
	int	$0x80

	jmp	safe_exit

safe_exit:
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80

carry_is_there:
	#print using write syscall
	movl	$4,%eax
	movl	$1,%ebx
	movl	$msg1,%ecx
	movl	$18,%edx
	int	$0x80

	jmp	safe_exit
