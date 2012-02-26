all: index.html pkginst-oliwel.html

%.html: %.md
	bin/Markdown.pl $< > $@

clean: 
	rm *.html

