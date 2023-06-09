CC = gcc

exampleebuild: exampleebuild.o

exampleebuild.o: exampleebuild.c

PREFIX = /usr/bin

.PHONY: clean
clean:
	rm -rf exampleebuild.o exampleebuild

.PHONY: install
install: exampleebuild
	mkdir -p ${DESTDIR}${PREFIX}
	cp $< ${DESTDIR}${PREFIX}/exampleebuild

.PHONY: uninstall
uninstall:
	rm -rf ${DESTDIR}${PREFIX}/exampleebuild
