.section .text
.globl	_start
_start:
	movb	$-120,%al
	movb	$-10,%bl
	addb	%al,%bl
#-120-10=-130,which is an overflow,since we need a ninth bit for -130
#we get the value 126 as discarding 9th bit the sequence represents 126
#it can also be viewed as this ...-127,-128,127,126.....
#overflow only occurs if the no.of bits in operation is lower than result

	movb	$-120,%al
	movb	$-10,%bl
	addw	%ax,%bx
#overflow wont occur as word has 16 bits
#assume we use a no. outside signed range say(180) and add it with say(-127)
#180 in binary looks like another negative number(-76) in range(-1--128)
#the result we get could be viewed as 180-127=53 
#or -127-76 leading to an overflow and getting us to 53
#we get an overflow in both the cases as in binary after addition one bit is 
#exceeding in the result
#thats what happens in case of 2 complement logic and all
	movb	$180,%al
	movb	$-127,%bl
	addb	%al,%bl

#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
