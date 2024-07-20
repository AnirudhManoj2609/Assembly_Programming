.section .data
	msg:
		.ascii "Hello World\n"
.section .text
.globl _start

_start:
	movl $4,%eax #syscall number,which will be used in eax register
	movl $1,%ebx #file descripter number,tells where syscall to be executed
#putting 1 in ebx specifies write syscall to be done to monitor stdout
#ebx used for file descripter and eax used for syscall number
	
	movl $msg,%ecx #sends address pointer to first index to ecx
	movl $13,%edx #buffer size in bytes
	int $0x80 
	
	movl $1,%eax #exit syscall
	movl $0,%ebx #argument for exit syscall
	int $0x80
#interrupt will be used to call the system calls based on the informations
