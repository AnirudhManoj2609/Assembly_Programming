#there are 3 variations based on number of operands
#imul	source -> one in %eax and other as source
#imul	source,destination
#imul	multiplier,source,destination
#in this one the 2 inputs are specified as first 2 operands and can be stored ina register or memory that doesnt participate in the multiplication

.section .text
.globl _start
_start:
	#-12 * 4
	
	movl	$-12,%eax
	movl	$4,%ebx
	movl	$-5,%ecx
	#first	imul	source
	imul	%ebx	#result in eax
	
	#second	imul 	source,destination
	imul	%ebx,%ecx	#result in ecx

	#third	imul	multiplier,source,destination
	imul	$2,%ecx,%edx	#in this case result in edx
	#we need to use a direct number as multiplier and not any register

	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80

