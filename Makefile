M68K_CXX=m68k-linux-gnu-g++
M68K_OBJDUMP=m68k-linux-gnu-objdump
M68K_AS=m68k-linux-gnu-as

macprg.o: crt0.o main.cpp Makefile
	$(M68K_CXX) main.cpp -Os -fno-builtin -m68030 -nostdlib -fno-exceptions -pie -mpcrel -Xlinker --oformat=binary -Wl,--script=main.ld,--output=macprg.o

crt0.o: crt0.S
	$(M68K_AS) -c crt0.S -o crt0.o

clean:
	$(RM) -f macprg.o
	$(RM) -f crt0.o

disasm: macprg.o
	$(M68K_OBJDUMP) -D -d -m m68k -b binary macprg.o

