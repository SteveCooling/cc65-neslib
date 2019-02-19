MAKEFLAGS += --no-builtin-rules

CC65 ?= cc65
CA65 ?= ca65
LD65 ?= ld65

.PRECIOUS: %.o %.s
.SUFFIXES:

%.s: %.c
	$(CC65) -Oi $< --add-source 

%.o: %.s
	$(CA65) $<

%.nes: crt0.o %.o 
	$(LD65) -C nrom_128_horz.cfg -o $@ crt0.o $< runtime.lib
	#@ld65 -C %2.cfg -o %1.nes crt0.o %1.o runtime.lib || goto fail

all: example1.nes

clean:
	rm -v example*.s *.o
