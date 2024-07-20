.section .text
.globl _start
_start:
	nop

	movl	$0x80000001,%eax
	test	%eax,%eax	#result will have the 2 MSB's with 1 ANDing to get 1 in MSB of result
	test	%al,%al		#since eax sets 1 for MSB at the 32th bit and MSB of al is at 8th bit which is 0 now and wont be negative
#remember that giving a value of -1 will simply make the assembler take the 2's complement value #of -1
	nop

	#exit syscall
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
