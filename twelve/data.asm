.section .data
	Number:
		.int 0

.section .text
.globl _start
_start:
	#direct addressing

	movl $5,Number
	
	#indirect addressing
	
	movl $Number,%eax
	movl $15,(%eax)

	movl $1,%eax
	movl $0,%ebx
	int $0x80	
