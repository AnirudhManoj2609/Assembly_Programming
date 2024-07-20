#some system calls return multiple values
#an example is the sysinfo system call
#syscall number is 116
#single parameter as structure pointer
#returns a struct which has a list of information 

.section .data
	sysinfo:	
		uptime:		.int	0	#seconds since boot
		loads1:		.int	0
		loads2:		.int	0
		loads3:		.int	0
		totalram:	.int	0	#total usable main memory size
		freeram:	.int	0	#available memory size
		sharedram:	.int	0	#amount of shared memory

#here all these variables are stored consecutively like an array
#only difference is we have set a name to each consecutive location and can support different data type

#the sysinfo struct has many more attributes and they are returned in this syscall
#however for easiness we only show certain important attributes
#btw this is how we can create a structure in assembly
	
.section .text
.globl _start
_start:
	
	#sysinfo
	movl	$116,%eax
	#single parameter moved into EBX register
	movl	$sysinfo,%ebx
	int	$0x80

	#after executing the interrupt the values in the struct memory adddress will be updated with the return value(uptime,loads1,....,sharedram)	

	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
