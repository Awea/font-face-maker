## Fontface Maker

Based on [fontfacegen](https://github.com/agentk/fontfacegen) without using Node.

From a ttf or otf, generate the required ttf, eot, woff, svg and css for the font to be used in browers.

### Usage

```shell
make FONT_PATH=/path/to/a_font.{otf || ttf}
```

### Requirements

* On OS X, install with brew:
  * fontforge
  * ttf2eot
  * batik-ttf2svg (batik)
