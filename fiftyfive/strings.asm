.section .data
	string:	.ascii	"Test"

.section .bss
	.lcomm	output,4
	
.section .text
.globl _start
_start:
	#step 1: link source to ESI register
	movl	$string,%esi	#send address of source to source register
	
	#step 2: link destination to EDI register
	movl	$output,%edi	#send address of destination to destination register
	
	movsl	#moves 4 bytes from source to destination with the address in ESI & EDI
	
#this also increments the address in edi and esi register by desired value
	movsb

	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80	
