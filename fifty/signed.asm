.section .text
.globl _start
_start:
	movb	$12,%al
	movb	$20,%bl
	movb	$-5,%cl
	mul	%bl	#no OF flag set as the limit for this is 0-255
	movb	$12,%al
	imul	%bl	#OF flag is set as the limit is -128-127
	imul	%ebx,%ecx
	movb	$12,%ah
	mul	%bl
	movb	$12,%ah
	imul	%bl
	movl	$12,%eax
	movb	$30,%dl
	mul	%dl
#note that operation is done as 32 bit and not our desired size
	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
