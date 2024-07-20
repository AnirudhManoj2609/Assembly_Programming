#syscall number should be stored in EAX register
#then the paremeters should be stored in the order : EBX->ECX->EDX->ESI->EDI
#interrupts should be used to execute system calls
#the return value is stored in the register EAX

.section .data
	string:	.ascii	"Hello World\n"	#note that '\n' is a single byte
	num:	.int	12
	
.section .text
.globl _start
_start:
	
	#step 1 : Move syscall number into EAX
	movl	$4,%eax
	#step 2 : Move first parameter->file descriptor into EBX
	movl	$1,%ebx
	#step 3 : Move second parameter->address of data into ECX
	movl	$string,%ecx
	#step 4 : Move third parameter->size in bytes of what is to be printed
	movl	$12,%edx
	#step 5 : Cause an interrupt
	int	$0x80
	
	#step 1 : Move syscall number into EAX
        movl    $4,%eax
        #step 2 : Move first parameter->file descriptor into EBX
        movl    $1,%ebx
        #step 3 : Move second parameter->address of data into ECX
        movl    $num,%ecx
        #step 4 : Move third parameter->size in bytes of what is to be printed
        movl    $4,%edx
        #step 5 : Cause an interrupt
        int     $0x80

	#in case of write sys call the return value is the number of bytes written

	#step 1 : Move syscall number into EAX
	movl	$1,%eax
	#step 2 : Move the first parameter->status value into EBX
	movl	$5,%ebx
	#step 3 : Cause an interrupt
	int	$0x80

	#for the exit syscall,the return value is the status stored in EBX
	#note that we cannot see this in gdb as the program exits
	#however it still shows "Process(id) exited with code "return value""
	#also echo $? can be used to view the return value in exit syscall
