# Copyright © 2013 Martin Ueding <dev@martin-ueding.de>

doc/tags: doc/*.txt
	vim -c 'helptags doc | q'

.PHONY: clean
clean:
	$(RM) *.class *.jar
	$(RM) *.o *.out
	$(RM) *.pyc *.pyo
	$(RM) *.orig
