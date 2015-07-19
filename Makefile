# Vars
FONTFORGE = $(shell which fontforge)
TTF2EOT = $(shell which ttf2eot)
TTF2SVG = $(shell which batik-ttf2svg)

# Functions
OTF_NAME = $(notdir $(FONT_PATH))
NEW_FILE_NAME = $(subst .otf,$(1),$(call OTF_NAME))
CSS_FILE = $(subst .otf,.css,$(call OTF_NAME))

all: clean copy generateTtf generateEot generateSvg generateWoff generateCss

copy:
	cp $(FONT_PATH) dest

clean:
	rm -f dest/*.*

generateTtf:
	$(FONTFORGE) -lang=ff -c 'Open($$1);Print($$fontname);' 'dest/$(call OTF_NAME)' 2> /dev/null
	$(FONTFORGE) -lang=ff -c 'Open($$1);Print($$weight);' 'dest/$(call OTF_NAME)' 2> /dev/null
	$(FONTFORGE) -lang=ff -c 'Open($$1);Print($$italicangle);' 'dest/$(call OTF_NAME)' 2> /dev/null
	$(FONTFORGE) -lang=ff -c 'Open($$1);SetFontNames($$3,$$3,$$3);Generate($$2, "", 8);' 'dest/$(call OTF_NAME)' 'dest/$(call NEW_FILE_NAME,.ttf)' 'false' 2> /dev/null

generateEot:
	$(TTF2EOT) "dest/$(call NEW_FILE_NAME,.ttf)" > "dest/$(call NEW_FILE_NAME,.eot)"

generateSvg:
	$(TTF2SVG) "dest/$(call NEW_FILE_NAME,.ttf)" -id "false" -o "dest/$(call NEW_FILE_NAME,.svg)"

generateWoff:
	$(FONTFORGE) -lang=ff -c 'Open($$1);Generate($$2, "", 8);' 'dest/$(call OTF_NAME)' 'dest/$(call NEW_FILE_NAME,.woff)' 2> /dev/null

generateCss:
	@echo @font-face { > dest/$(CSS_FILE)
	@echo	'    font-family: "false";' >> dest/$(CSS_FILE)
	@echo	'    src: url("$(call NEW_FILE_NAME,.eot)");' >> dest/$(CSS_FILE)
	@echo	'    src: url("$(call NEW_FILE_NAME,.eot)?#iefix") format("embedded-opentype"),' >> dest/$(CSS_FILE)
	@echo	'         url("$(call NEW_FILE_NAME,.woff)") format("woff"),' >> dest/$(CSS_FILE)
	@echo	'         url("$(call NEW_FILE_NAME,.ttf)") format("truetype"),' >> dest/$(CSS_FILE)
	@echo	'         url("$(call NEW_FILE_NAME,.svg#false)") format("svg");' >> dest/$(CSS_FILE)
	@echo	'    font-weight: false;' >> dest/$(CSS_FILE)
	@echo	'    font-style: false;' >> dest/$(CSS_FILE)
	@echo } >> dest/$(CSS_FILE)