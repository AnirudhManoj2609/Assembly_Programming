.section .text
.globl _start
_start:
	movl	$3,%eax
	movl	$6,%ebx

	call	location1
#using the call opcode we can return back to execute the rest
#when we call the address of next instruction,i.e,address of movl	$1,%eax
#will be stored in the stack
#then the program jumps to movl	$99,%eax
#in the return instruction,it takes the return address from the stack and loads into eip register

	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80

location1:
	movl	$99,%eax
	movl	$77,%ebx
	ret	#return,which should be used with call to return back(necessary)
