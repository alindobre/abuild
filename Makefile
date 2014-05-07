PREFIX =
BINDIR = ${PREFIX}/bin
LIBDIR = ${PREFIX}/lib
DESTDIR =

COMMAND=abuild
LIBRARY=lib/*

all: ${COMMAND} ${LIBRARY}

install: all
	mkdir -p ${DESTDIR}{${BINDIR},${LIBDIR}/abuild}
	install -m 0755 ${COMMAND} ${DESTDIR}${BINDIR}
	install -m 0644 ${LIBRARY} ${DESTDIR}${LIBDIR}/abuild

.PHONY: install
