#include <stdio.h>

int main(){
	
//we can write assembly codes in our C file and this is known as inline assembly programming

	asm("movl	$4,%eax\n");	//this is the syntax
	asm("movl	$1,%ebx\n");

	return 0;
}	
