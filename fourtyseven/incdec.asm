.section .text
.globl _start
_start:
	movl	$3,%eax
	inc	%eax
	movl	$7,%ebx
	dec	%ebx
	dec	%ax
	inc	%bx

#note that we dont specify the bytes in suffix as inc or dec happens by changing LSB
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
