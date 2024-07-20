.section .data

        string1:        .ascii  "TestHAHA"
        string2:        .ascii  "Test"
        equal_msg:      .ascii  "Strings are equal\n"
        unequal_msg:    .ascii  "Strings are not equal\n"

.section .text
.globl _start
_start:

        movl    $string1,%esi
        movl    $string2,%edi
	movl	$8,%ecx

        cld

	repe    cmpsb   #comparing string1 with string2 with each byte until ecx = 0

#comparison is done only upto the specified size
#if comparison is true zero flag is set
#in case the strings are unequal the rep stops right at the inequality
#i.e it doesnt wait for ecx to become 0 unless the inequality is in last character

        je      success

not_success:

        movl    $4,%eax
        movl    $1,%ebx
        movl    $unequal_msg,%ecx
        movl    $22,%edx
        int     $0x80

exit:

        movl    $1,%eax
        movl    $0,%ebx
        int     $0x80

success:

        movl    $4,%eax
        movl    $1,%ebx
        movl    $equal_msg,%ecx
        movl    $18,%edx
        int     $0x80

        jmp     exit

