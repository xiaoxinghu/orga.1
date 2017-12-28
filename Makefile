DOC_FILES := $(wildcard *.org)
MAN_FILES := $(patsubst %.org,%.1,$(DOC_FILES))

all: $(MAN_FILES)

%.1: %.org
	@pandoc -s -o $@ -t man $^

clean:
	rm -f *.1
