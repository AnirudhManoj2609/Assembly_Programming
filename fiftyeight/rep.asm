.section .data
	string:	.ascii "This is test"

.section .bss
	.lcomm	output,12

.section .text
.globl _start
_start:
	
	#step 1 : setup source pointer in esi
	movl	$string,%esi
	
	#step 2 : setup destination pointer in edi
	movl	$output,%edi
	
	#step 3 : setup size of the string in ecx
	movl	$12,%ecx
	
	#step 4 : clear DF flag
	cld	#clear the DF flag

	#step 5 : use rep to move string
	rep 	movsb
#using rep we move a specified size until the value in ecx is 0
	
	
	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
	
