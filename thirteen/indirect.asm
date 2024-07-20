.section .data 
	MyNumber:	
		.int	4,8

.section .text
.globl _start
_start:
	nop
	nop
	
	movl $MyNumber,%eax #MyNumber address starts at 0th byte
	movl $2,(%eax)

	movw $5,MyNumber+2 #this is a direct way of accessing the nearby addresses
		
	movl MyNumber+2,%ebx

	movb $9,2(%eax) #moves 9 to the location right after the 16 bits in eax
	movb $1,(%eax)
#note that its possible to shift a byte value via the 32 bit register if its to another memory
	movw $3,6(%eax) #moves 3 to 6th index and 0 to 7th index
#00000000 00000003

	movl $1,%eax
	movl $0,%ebx
	int $0x80	
