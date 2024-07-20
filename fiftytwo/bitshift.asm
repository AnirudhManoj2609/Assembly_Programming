#shifting left multiplies the number by two and shifing right divides by two
#the above case is true only if size is sufficient so that no bit is lost
.section .text
.globl _start
_start:

	movb	$255,%al	#255=11111111
	shl	%al		#11111110
	shr	%al		#01111111

	movw	$255,%ax
	shl	%ax
	shr	%ax
#in this case left shift doesnt loose us the MSB and hence its multiplied by two

	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80

