.section .text
.globl _start
_start:
	
	call add
	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80

#define add function
.type	add,	@function	#.type is the directive,add func name,@.. is attribute

add:
	movl	$7,%eax
	movl	$2,%ebx
	addl	%eax,%ebx
	ret
