DOTS=ast1.png ast2.png devchain.png id1.png trad1.png

all: ${DOTS}

%.png:%.dot
	dot -Tpng $< > $@

clean:
	rm -f ${DOTS}
