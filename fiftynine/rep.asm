.section .data
	string:	.ascii "This is test"

.section .bss
	.lcomm	output,12

.section .text
.globl _start
_start:
	
	movl	$string,%esi
	movl	$output,%edi
	movl	$3,%ecx
	
	cld
	rep	movsw
	movl	$6,%ecx
	rep	movsb

#this example is done to illustrate that ECX always decrements by 1
#and the suffix in movs denotes the number of bytes transfered from ESI to EDI

	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
