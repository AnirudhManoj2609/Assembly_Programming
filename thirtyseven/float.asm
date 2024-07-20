#fldl instruction is used to store float values into register
#register used is st0-st7(FPU register)
#syntax : fldl	source
#flds is used to move float value with single precision and fldl for double
#precision
.section .data
	myfloat1:	.float	1.23
	myfloat2:	.double	1234.5432

.section .bss
.lcomm	data,8

.section .text
.globl _start
_start:
	flds	myfloat1
	flds	myfloat2 #transfer double value as single precision and hence we might get incorrect values
	fldl	myfloat2 #transfers double value as double precision
	fstl	data #transfers value at top of FPU register stack to variable
#exit
	movl	$1,%eax
	movl	$0,%ebx
	int	$0x80

