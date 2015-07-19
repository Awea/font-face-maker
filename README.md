## Fontface Maker

Based on [fontfacegen](https://github.com/agentk/fontfacegen) without using Node.

From a otf, generate the required ttf, eot, woff, svg and css for the font to be used in browers.

### Usage

```shell
make FONT_PATH=/Users/awea/Downloads/AGaramondPro-Semibold.otf
```

### Requirements

* fontforge
* ttf2eot
* batik-ttf2svg

### Todo

* generate from a ttf