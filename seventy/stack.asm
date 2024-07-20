.section .text
.globl _start
_start:
	
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
#when we create a program and run it,ESP points to the max location at first
#in this location is stored the number of inputs for the program(command args)
#by default there is a single arg,which is the location of our program and its stored in the stack
#we can add other arguments and the value at which ESP first points to simply gets incremented
#first is the no of inputs,then at a higher address location of program,then optionally based on our arguments followed by the rest of the arguments
