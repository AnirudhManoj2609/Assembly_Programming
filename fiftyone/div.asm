#syntax: div	source
#source is the divisor and dividend is stored specifically in EAX register
#Quotient will be stored in EAX register and Reminder in EDX register
.section .text
.globl _start
_start:
	
	#10/3
	
	movl	$10,%eax	#dividend
	movl	$3,%ebx
	div	%ebx
	
	movb	$10,%al
	movb	$-3,%bl
	div	%bl

	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
