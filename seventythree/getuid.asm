#getuid syscall returns the user id
#syscall number = 24
#there is no parameter
#uid for current user is 1000

.section .text
.globl _start
_start:

	#getuid
	movl	$24,%eax
	int	$0x80

	#exit	
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
