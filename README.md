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

ToDo
----

Make the recreation of .html files an atomic operation.


