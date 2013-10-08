# Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
# Licensed under The GNU Public License Version 2 (or later)

all: doc/tags

install:
	install -d "$(DESTDIR)/etc/vim"
	cp -r autoload doc ftplugin plugin "$(DESTDIR)/etc/vim/"

doc/tags: doc/*.txt
	vim -c 'helptags doc | q'

.PHONY: clean
clean:
	$(RM) *.class *.jar
	$(RM) *.o *.out
	$(RM) *.pyc *.pyo
	$(RM) *.orig
