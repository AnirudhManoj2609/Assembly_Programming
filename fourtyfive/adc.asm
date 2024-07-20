.section .data
	data1:	.word	384	#(0x0180)
	data2:	.word	416	#(0x01A0)

.section .text
.globl _start
_start:
	movb	data1+1,%al	#(+1 allows for access of 2nd byte)(0x01->al)
	movb	data1,%bl	#(0x80->bl)
	
	movb	data2+1,%cl	#(0x01->cl)
	movb	data2,%dl	#(0xA0->dl)

	addb	%dl,%bl
	adcb	%cl,%al

	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
