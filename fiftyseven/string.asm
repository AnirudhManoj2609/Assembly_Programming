.section .data
	source_string:	.ascii	"Test"

.section .bss
	.lcomm	output,4

.section .text
.globl _start
_start:
	#step 1 : Move source pointer to esi
	movl	$source_string,%esi
	
	#step 2 : Move destination pointer to edi
	movl	$output,%edi

	std	#set the direction flag
	movsb	#moving 1 byte
	movsw	#moving 2 bytes
	movsl	#moving 4 bytes

#when DF is off after the transfer ESI and EDI increments by size of bytes moved
#when DF is on after the transfer ESI and EDI decrements by size of bytes moved
	cld	#unset the direction flag

	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80

