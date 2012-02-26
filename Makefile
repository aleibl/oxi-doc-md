allhtml := $(patsubst %.md,%.html,$(wildcard *.md))

all: $(allhtml)

%.html: %.md
	bin/Markdown.pl $< > $@

.PHONY: clean
clean:
	rm *.html

