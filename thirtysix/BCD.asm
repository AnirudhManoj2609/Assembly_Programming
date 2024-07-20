#bcd datas can only be stored into FPU registers denoted by ST(num){num ranges
#from 0-7}
#each FPU register is of size 80 bits,where the msb 1 bit is for sign
#other uses while the lsb 72 bits are used to store bcd data

.section .data
	bcd_data:	.byte	0x1,0x2,0x3,0x4,0x5,0x6,0x7,0x8,0x9,0x5
	bcd_data2:	.int	0x12345678,0x98765432
	bcd_data3:	.byte	0x90
.section .text
.globl _start
_start:
	fbld	bcd_data	#store bcd data into ST0 register
	fbld	bcd_data2
	fbld	bcd_data3
	#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80
#these guys are stored similar to floating point numbers
