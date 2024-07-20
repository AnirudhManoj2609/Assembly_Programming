.section .text
.globl _start
_start:
	movl	$3,%eax
	movl	$5,%ebx
	
	xchg	%eax,%ebx	#exchanging data between the 2 registers
	
	movl	$0x12345678,%ecx
	bswap	%ecx	#changes the byte order based on little or bid endian
#78563412
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
