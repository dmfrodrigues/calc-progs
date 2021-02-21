COMPILER=./tibasic

FILES:=$(shell find . -name '*.tibasic' | sed -e 's/tibasic/8xp/')

all: $(FILES)

%.8xp: %.tibasic
	$(COMPILER) -o $@ $<

clean:
	rm -f *.8xp
