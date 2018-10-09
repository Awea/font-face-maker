# Font-face maker
A font-face generator for creating browser-usable fonts and CSS/Sass files from any OTF.

Based on [fontfacegen](https://github.com/agentk/fontfacegen) without using Node.

## Getting started

### Prerequisites
* [FontForge](https://fontforge.github.io/en-US/)
* [woff2_compress](https://github.com/google/woff2)

### Installing on macOS
Install with [Homebrew](http://brew.sh/):

```
brew tap bramstein/webfonttools
brew update
brew install fontforge woff2
```

### Installing on Ubuntu
Clone and build [woff2](https://github.com/google/woff2) then add `woff2_compress` to your $PATH. Next with apt:

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
make sass FONT_PATH=/path/to/a_font.otf
```

### Change output directory

```
make fonts FONT_PATH=/path/to/a_font.otf DEST=/path/to/output/webfonts
```
