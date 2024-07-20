.section .data
	string1:	.ascii	"TestHAHA"
	string2:	.ascii	"Test"
	equal_msg:	.ascii	"Strings are equal\n"
	unequal_msg:	.ascii	"Strings are not equal\n"

.section .text
.globl _start
_start:
	movl	$string1,%esi
	movl	$string2,%edi

	cld
	
	cmpsl	#comparing string1 with string2 upto 4 bytes

#comparison is done only upto the specified size
#if comparison is true zero flag is set
	
	je	success

#note that by using the order of labels like this after je not true the execution shifts to not_success and then exit and never encounters success: as the program has already exited
	
not_success:
	
	movl	$4,%eax
	movl	$1,%ebx
	movl	$unequal_msg,%ecx
	movl	$21,%edx
	int	$0x80

exit:

	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80

success:

	movl	$4,%eax
	movl	$1,%ebx
	movl	$equal_msg,%ecx
	movl	$18,%edx
	int	$0x80
	
	jmp	exit 	
