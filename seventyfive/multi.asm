.section .bss
	.lcomm	sysinfo,24

.section .text
.globl _start
_start:
	
	movl	$116,%eax
	movl	$sysinfo,%ebx
	int	$0x80

	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
#this is another way
#similaryly we can use a simple array format
#we prefer to use a struct format as each value returned was needed to be accessed seperately
