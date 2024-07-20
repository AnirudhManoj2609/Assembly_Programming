.section .data
	msg: .ascii "Hello World\n"
	
	.equ String_length,13
 #this is a static symbol,which is a directive
.section .text
.globl _start
_start:
	movl $4,%eax
	movl $1,%ebx
	movl $msg,%ecx
	movl $String_length,%edx
	int $0x80

	movl $1,%eax
	movl $0,%ebx
	int $0x80
