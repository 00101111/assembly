all: hellow

hellow: hellow.o
	gcc -o $@ $+

hellow.o: hellow.S
	as -o $@ $<

clean:
	rm -vf hellow *.o