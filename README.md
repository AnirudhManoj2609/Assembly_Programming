1)****Create an object file****

  	as --32 program.asm -o program.o
  	//this code invokes the "as" assembler and creates an object file as a 32 bit code 
  	//"as" assembler is preinstalled in linux

2)****Linking****
  
  	ld -m elf_i386 program.o -o program  
  	//this code invokes the linker and links the object files in an ELF format producing an executable code as output

3)****Using the gdb****
  
  	a)gdb program -q
  
  	b)disassemble _start:This code outputs all the instructions under start label,you can disassemble other labels as well
  
  	c)break "label" :sets break point in the mentioned label(use break _start in most cases)
  
  	d)run:starts the program
  
  	e)info variables:displays the address and name of each variables used
  
  	f)info registers:displays contents in each register
  
  	g)display :this command is used to display contents of a register or memory throughout the program
  
  	h)p : can be used to print the contents inside a register once
  
  	i)x : can be used to print the contents inside a memory location at once
  
  	j) /x : suffixed to display,p,x can be used to represent contents in hexadecimal format
  
  	k) /d : suffixed to display,p,x can be used to represent contents in decimal format
  
  	l) /t : suffixed to display,p,x can be used to represent contents in binary format
  
  	m) /i : suffixed to display,p,x can be used to represent contents in instruction format(used to display instructions in eip register)
  
  	n) note that registers need to be prefixed with a "$" symbol! eg: p /x $eax(display contents in EAX register in hex )
  
  	o) note that if name of variable is used to access memory then "&" should be used in prefix!

4)****Tip****

  	Use display $eflags before running any program to view how instructions affect the flags in the system
