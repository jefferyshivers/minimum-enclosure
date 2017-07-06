
# delete intermediate files
delint = false

help:
	@echo "\n\033[1mminimum enclosure: chopped and screwed\n\033[0mscore builder v1.0\n"
	@echo "\033[0m- Make the full score with \`make score\`."
	@echo "- Make the LilyPond portion with \`make lily\`."
	@echo "- Make the LaTeX portion (requires the LilyPond document) with \`make latex\`."
	@echo "\033[1;32mWith Sphinx installed, follow the instructions below to build the rest of the documentation.\033[0m\n"

lily:
	lilypond -dresolution=200 --png main.ly

tex:
	pdflatex -jobname=minimum_enclosure main.tex

score:
	lilypond main.ly
	pdflatex -jobname=minimum_enclosure main.tex

.PHONY: help Makefile
