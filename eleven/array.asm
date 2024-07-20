.section .data
	Numbers: 
		.int 	10,20,30,40,50,60
	msg:
		.ascii "Hello World\n"

.section .text
.globl _start
_start:
	#base_address(offset_address,index,size)
	#Number(,2,4 bytes) used to access the number 30
	
	movl $2,%edi
	movl Numbers(,%edi,4),%eax
	
	movl $2,%edi
	movl msg(,%edi,1),%ebx

	movl $1,%eax
	movl $0,%ebx
	int $0x80
