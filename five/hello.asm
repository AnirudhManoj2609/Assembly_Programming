.section .data
	msg:
		.ascii "Hello World\n"
.section .text
.globl _start
_start:
	push $msg #push message onto memory stack
	call printf
	
	push $0
	call exit
#this is how a hello world program is done in assembly using C library functions
