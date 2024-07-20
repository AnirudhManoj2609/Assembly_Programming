.section .text
.globl _start
_start:

	#prolog
	#here we push previous value of ebp into stack and then equalize it with esp
	#the first step is necessary to return back ebp to its initial place
	pushl	%ebp
	movl	%esp,%ebp
#stack frame pointers are created here

	pushl	$4	#adding 4 to stack
	pushl	$5

	call	add

	#epilop
	#fist instruction equalizes esp to ebp
	#second instruction retunrs first pushed ebp value in prolog to ebp
	#it also brings esp to its first initial position
	movl	%ebp,%esp
	popl	%ebp
	
	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
#its necessary to setup 2 breakpoints for each function to get return address in stack
.type	add,	@function

add:

	#prolog,creating stack frame
	pushl	%ebp
	movl	%esp,%ebp

	movl	$3,%eax
	movl	$4,%ebx
	movl	%eax,%ebx
	pushl	%ebx	#put result onto the stack
	
	#epilog
	movl	%ebp,%esp
	popl	%ebp
	ret
	
	
