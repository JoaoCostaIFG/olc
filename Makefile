BINDIR  = ${DESTDIR}/usr/bin

olc: olc.sh olc.awk olc.tsv
	cat olc.sh > $@

	echo 'exit 0' >> $@

	echo '#EOF' >> $@
	tar cz olc.awk olc.tsv >> $@

	chmod +x $@

.PHONY: test
test: olc.sh
	shellcheck -s sh olc.sh

.PHONY: clean
clean:
	rm -f olc

.PHONY: install
install: olc
	mkdir -p ${BINDIR}
	cp -f olc ${BINDIR}
	chmod 755 ${BINDIR}/olc

.PHONY: uninstall
uninstall:
	rm -f ${BINDIR}/olc

