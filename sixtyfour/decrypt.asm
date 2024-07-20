.section .data

        string: .ascii  "Test"

.section .bss

        .lcomm  encrypted,4
	.lcomm	decrypted,4

.section .text
.globl _start
_start:

       #setup source and destination pointers with esi and edi 
        movl    $string,%esi
        movl    $encrypted,%edi

        #mention the key
        movb    $3,%bl
        #mention loop count in ecx register
        movl    $4,%ecx

loop_me:

        lodsb   #will load source byte into al register
        xor     %bl,%al
        stosb   #stores the result in encrypted
        loop    loop_me #checks if ecx = 0,else loops
#just like identifying signed or unsigned numbers its also able to distinguish between characters and numerics
	movl	$encrypted,%esi
	movl	$string,%edi

	movl	$4,%ecx

decrypt_me:
	
	lodsb	
	xor	%bl,%al
	stosb
	loop	decrypt_me
#this example just proves that xor is a good operation snip snap

exit:

        movl    $1,%eax
        movl    $0,%ebx
        int     $0x80
