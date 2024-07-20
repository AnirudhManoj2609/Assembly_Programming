.section .text
.globl _start
_start:
	movl	$4,%eax
	movl	$4,%ebx
	cmp	%eax,%ebx
	je	jump_here	#je means jump if equal
#with cmp s,d,it is sub d-s,and if the result sets the zero flag then the code 
#of execution will shift to the specified label
	
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
	
jump_here:
	
	ret	#leads to segmentation fault
	movl	$1,%eax
	movl	$7,%ebx
	int	$0x80
