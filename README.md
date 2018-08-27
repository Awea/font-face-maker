# Font-face maker
A font-face generator for creating browser-usable fonts and CSS/Sass files from any OTF.

Based on [fontfacegen](https://github.com/agentk/fontfacegen) without using Node.

## Getting started

### Prerequisites
* [FontForge](https://fontforge.github.io/en-US/)

### Installing on macOS
On macOS, install with [Homebrew](http://brew.sh/):

```
brew tap bramstein/webfonttools
brew update
brew install fontforge
```

### Installing on Ubuntu

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

### Generate webfonts and Sass file

```shell
make Sass FONT_PATH=/path/to/a_font.otf
```

### Change output directory

```
make fonts FONT_PATH=/path/to/a_font.otf DEST=/path/to/output/webfonts
```
