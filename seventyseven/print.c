#include <stdio.h>

unsigned long int esp_reg;

int main(){

	asm("movl	%esp,esp_reg\n");

	printf("ESP:0x%lx\n",esp_reg);

	return 0;

}
