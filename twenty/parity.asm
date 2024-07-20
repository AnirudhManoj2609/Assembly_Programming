.section .text
.globl _start
_start:
	nop

	#parity flag is set when after an ALU operation the result in binary contains 1's in pairs,i.e,an even number of 1's,then the parity flag is set
	
	#setting parity flag
	movb	$0xAA,%al
	test	%al,%al 	#performs AND operation
#since the 0xAA contains even number of 1's the value of and will set the parity flag	
	
	movb	$0xB,%bl
	test	%bl,%bl

	nop

	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
