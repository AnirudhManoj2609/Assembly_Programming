#passing parameters of function 
.section .text
.globl _start
_start:

	#prolog	
	pushl	%ebp
	movl	%esp,%ebp
	
	pushl	$4	#parameters are passed to add function using stack
	pushl	$5
	call	add
	
	#epilog
	movl	%ebp,%esp
	popl	%ebp
	
	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
#this is simply how we pass parameters between functions and is more efficient than using general purpose registers

.type	add,@function

add:
	
	#prolog
	pushl	%ebp
	movl	%esp,%ebp
	
	movl	8(%ebp),%eax	#takes memory from 8 bytes before(5)
	movl	12(%ebp),%ebx	#takes memory from 12 bytes before(4)
	addl	%eax,%ebx
	
	#epilog
	movl	%ebp,%esp
	popl	%ebp

	ret
