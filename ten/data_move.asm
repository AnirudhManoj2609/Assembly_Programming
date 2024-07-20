.section .bss
	.comm mydata,4

.section .text
.globl _start
_start:
	nop
	movl $100,mydata
	movl mydata,%ecx #moves value of mydata inside ecx
	movl $mydata,%edx #moves address of mydata inside edx
	movl $500,%eax
	movl %eax,(%edx) #moves value to the address stored in edx,i.e,mydata
	
#Exit Syscall
	movl $1,%eax
	movl $0,%ebx
	int $0x80
