.section .data
	
	string:	.ascii	"This is test"

.section .bss
	
	.lcomm	output,12

.section .text
.globl _start
_start:
	
	movl	$string,%esi
	movl	$output,%edi
	
	movl	$12,%ecx
	cld

loop_it:
	
	lodsb	#it will load each byte in al register
	stosb	#it will store each byte from al to edi register
	loop	loop_it	#checks the ECX register and loops

exit:
	
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
#as compared to using movs this just has an intermediatary step and can be useful in case where comparison is necessary
