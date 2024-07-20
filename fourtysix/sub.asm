.section .text
.globl _start
_start:
	# 12 - 5	(1100 - 0101)=(1100 + 1011)
	
	movb	$5,%al
	movb	$12,%bl
	subb	%al,%bl	#(%bl = %bl - %al)

	# 5 - 12	(0101 - 1100)=(0101 + 0100)
	
	movb	$12,%al
	movb	$5,%bl
	subb	%al,%bl	#(%bl = %bl - %al)

	movb	$0b00000111,%al
	movb	$0b00001000,%bl
	subb	%al,%bl

#its observed that CF is set due to borrow when a larger no. is sub by smaller
#CF is simply set when signs of operands are different and negative is larger magnitude

#when 2 numbers are negative result is negative,however if you know 2s complement subtraction then you also know that in this case result looks like positive and we have to interpret from it

	movb	$5,%al
	movb	$-12,%bl
	subb	%al,%bl

	movb	$12,%al
	movb	$-5,%bl
	subb	%al,%bl

	movb	$-5,%al	
	movb	$12,%bl
	subb	%al,%bl

	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80

