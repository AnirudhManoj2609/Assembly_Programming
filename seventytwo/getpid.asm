#the syscall for getpid syscall is 20

.section .text
.globl _start
_start:
	
	#it takes no input and returns the process id of the program
	#getpid
	movl	$20,%eax
	int	$0x80
	
	#exit
	movl	$1,%eax
	movl	$69,%ebx
	int	$0x80
