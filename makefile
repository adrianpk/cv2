TEX = pandoc
src = template.tex details.yml
FLAGS = --pdf-engine=tectonic

guada-k-cv-en.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm guada-k-cv-en.pdf
