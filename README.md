OpenXPKI (oxi) documentation in Markdown format
===============================================

What?
-----

Generating HTML documentation for oxi from Markdown files.


How?
----

To keep things simple the Makefile will do all the work 
provided you followed these instructions:

1. The Markdown files have a .md suffix.
2. All Markdown files are in the top level directory.
3. The is a bin/ directory containing Markdown.pl.

Then

* "make" (no arguments) will create .html files from all .md files.
* "make clean" will simply delete all .html files.

You do not need to run "make clean" unless you have deleted or
renamed .md files. 


Where?
------

[http://oxi-doc.leibl.co.uk/](http://oxi-doc.leibl.co.uk/) pulls 
from `git://github.com/aleibl/oxi-doc-md.git` every 15 minutes 
and produces HTML pages from the latest commit (on branch master).

### Log

See [http://oxi-doc.leibl.co.uk/cron-rebuild-oxidoc.html](http://oxi-doc.leibl.co.uk/cron-rebuild-oxidoc.html) 
for the log of the last rebuild.

### RSS

Atom (RSS) feed generator is now active:

* [http://oxi-doc.leibl.co.uk/feed-oxidoc.xml](http://oxi-doc.leibl.co.uk/feed-oxidoc.xml)
  
Note that for the generator to work correctly, git conventions
for the commit message need to be observed:
    
1. The first line should be brief, like a subject in an email. Brief: 50-60 characters is a good limit.
2. Then a blank line.
3. After that a longer message if further explanations are required. 
Additional blank lines to break down the message into paragraphs are OK.
    
ToDo
----

* Make the recreation of .html files an atomic operation.

