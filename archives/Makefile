# Makefile
#
# Converts Markdown to other formats (HTML, PDF, DOCX, RTF, ODT, EPUB) using Pandoc
# <http://johnmacfarlane.net/pandoc/>
#
# Run "make" (or "make all") to convert to all other formats
#
# Run "make clean" to delete converted files

# Convert all files in this directory that have a .md suffix
SOURCE_DOCS := $(wildcard *.md)

EXPORTED_DOCS=\
 $(SOURCE_DOCS:.md=.html) \
 # $(SOURCE_DOCS:.md=.pdf) \
 # $(SOURCE_DOCS:.md=.docx) \
 # $(SOURCE_DOCS:.md=.rtf) \
 # $(SOURCE_DOCS:.md=.odt) \
 # $(SOURCE_DOCS:.md=.epub)


HTML_FILES=$(MD_FILES:.md=.html)
BUILD_HTML_FILES=$(HTML_FILES:%=build/%)



PANDOC=/usr/bin/pandoc
PANDOC=/home/.tbxy09/anaconda/bin/pandoc

PANDOC_OPTIONS=--standalone

PANDOC_HTML_OPTIONS=--to html5
PANDOC_PDF_OPTIONS=
PANDOC_DOCX_OPTIONS=
PANDOC_RTF_OPTIONS=
PANDOC_ODT_OPTIONS=
PANDOC_EPUB_OPTIONS=--to epub3


# Pattern-matching Rules

%.html : %.md
	$(PANDOC) $(PANDOC_OPTIONS) $(PANDOC_HTML_OPTIONS) -o $@ $<

%.pdf : %.md
	$(PANDOC) $(PANDOC_OPTIONS) $(PANDOC_PDF_OPTIONS) -o $@ $<

%.docx : %.md
	$(PANDOC) $(PANDOC_OPTIONS) $(PANDOC_DOCX_OPTIONS) -o $@ $<

%.rtf : %.md
	$(PANDOC) $(PANDOC_OPTIONS) $(PANDOC_RTF_OPTIONS) -o $@ $<

%.odt : %.md
	$(PANDOC) $(PANDOC_OPTIONS) $(PANDOC_ODT_OPTIONS) -o $@ $<

%.epub : %.md
	$(PANDOC) $(PANDOC_OPTIONS) $(PANDOC_EPUB_OPTIONS) -o $@ $<

# all: $(BUILD_HTML_FILES)
all : $(EXPORTED_DOCS)

