# Fontface Maker

Based on [fontfacegen](https://github.com/agentk/fontfacegen) without using Node.

Take an otf then generate the required ttf, woff, woff2 and css for web usage.

## Getting started

### Prerequisites
* Fontforge
* woff2_compress

### Installing on OS X
On OS X, install with [Homebrew](http://brew.sh/):

```
brew tap bramstein/webfonttools
brew update
brew install fontforge woff2
```

### Installing on Ubuntu
Clone, build and add to your $PATH [woff2_compress](https://github.com/google/woff2). Then with apt:

```
apt install fontforge
```

## Usage

### Generate webfonts 

```shell
make fonts FONT_PATH=/path/to/a_font.otf
```

### Generate webfonts and CSS file

```shell
make css FONT_PATH=/path/to/a_font.otf
```

### Generate webfonts and SASS file

```shell
make sass FONT_PATH=/path/to/a_font.otf
```

### Change output directory

```
make fonts FONT_PATH=/path/to/a_font.otf DEST=/my/dir/to-output-generated-fonts
```
