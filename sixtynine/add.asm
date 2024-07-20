.section .text

.type	add,@function
.globl	add
add:
	
	addl	%eax,%ebx
	ret
#this is another file for another function that is called in the main file
#we just need to link the program with multiple object files that are used for the program as input object files to form a single executable file
#.globl add in this case allows to link this separate file
#ld -m elf_i386 add.o main.o -o obj
#also in this case we do not have to set 2 break points
	
	
