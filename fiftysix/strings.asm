.section .data
	string:	.ascii	"Test"

.section .bss
	.lcomm	output,4

.section .text
.globl _start
_start:
	movl	string,%eax
	movl	%eax,output

#easy way of doing this without using esi or edi registers
#also esi and edi registers can also be used to move like this
#all we need to do is to use these instructions instead of movsl

	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
