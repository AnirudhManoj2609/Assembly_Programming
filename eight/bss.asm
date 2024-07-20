.section .bss
	.comm buffer,15

.section .text
.globl _start
_start:
	#read syscall to take user input
	
	movl $3,%eax #syscall number
	movl $0,%ebx #file descripter for input
	movl $buffer,%ecx 
	movl $15,%edx
	int $0x80

	#write syscall to print buffer
	
	movl $4,%eax
	movl $1,%ebx
	movl $buffer,%ecx
	movl $15,%edx
	int $0x80	

	#exit syscall to exit the program
	movl $1,%eax
	movl $0,%ebx
	int $0x80
