## Fontface Maker

Based on [fontfacegen](https://github.com/agentk/fontfacegen) without using Node.

Take a ttf or an otf, generate the required ttf, eot, woff, svg and css for web usage.

## Getting started

### Prerequisites
* Fontforge
* woff2_compress
* ttf2eot
* Batik SVG Toolkit

### Installing on OS X
On OS X, install with [Homebrew](http://brew.sh/):

```
brew tap bramstein/webfonttools
brew update
brew install fontforge ttf2eot batik woff2
```

### Installing on Ubuntu
Clone and build the followings:

* https://github.com/google/woff2
* https://github.com/wget/ttf2eot

Then with apt:

```
apt install libbatik-java fontforge
```

## Usage

```shell
make web FONT_PATH=/path/to/a_font.{otf || ttf}
```