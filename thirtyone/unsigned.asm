.section .data
	mynum:
		.byte	257	#for unsigned (0....255)
#this is an overflow and it starts from 0...i.e we have stored 0x1 in the memory
	mynum2:
		.byte	255
.section .text
.globl _start
_start:
	movb	mynum,%al	
	movb	mynum2,%bl
	
	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
