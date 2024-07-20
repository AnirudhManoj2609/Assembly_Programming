.section .data
	string:	.ascii "Hello World\n"
	a: .int 3
	pi: .float 3.14

.section .text
.globl _start
_start:
	movl $1,%eax
	movl $0,%ebx
	int $0x80 
