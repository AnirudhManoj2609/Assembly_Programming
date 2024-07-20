.section .text
.globl _start
_start:
	#add
	movb	$-3,%al
	movb	$-10,%bl
	addb	%al,%bl

	#add two 16 bit integers
	movw	$-15,%ax
	movw	$50,%bx
	add	%ax,%bx

	#add two 32 bit integers
	movl	$100,%eax
	movl	$-30,%ebx
	addl	%eax,%ebx

	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
#to keep in mind that unsigned and signed numbers are identified differently
#inside the computer
#however gdb has a flaw that causes unsigned to be represented as signed
#negative sometimes
