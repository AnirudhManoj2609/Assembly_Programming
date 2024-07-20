.section .text
.globl _start
_start:
	nop
	movl $25,%eax
	movw $4,%bx #16 bit data transfer
	movb $1,%cl #8 bit data transfer

#note that the size of data to be moved specified by instruction should equal register size 
	
	movl $1,%eax
	movl $0,%ebx
	int $0x80
