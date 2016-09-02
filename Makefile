SRC=$(wildcard *.tex)
#SRC=BSFmaster.tex
#BIB=iceStreams.bib
BIB=
DEPS=$(wildcard *.tex)
PDFS=$(SRC:.tex=.pdf)

all: ${PDFS}

%.pdf: %.tex $(BIB) $(DEPS)
	pdflatex $<
	#bibtex $<
	#pdflatex $<
	pdflatex $<

.PHONY: clean
clean:
	@$(RM) *.{glo,idx,log,toc,ist,acn,acr,alg,bbl,blg,dvi,glg,gls,ilg,ind,lof,lot,maf,mtc,mtc1,out,synctex.gz,dfb_latexmk,fls,xdy,run.xml}
	@$(RM) *.aux
	@$(RM) *-blx.bib
