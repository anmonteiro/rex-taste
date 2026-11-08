# rex-taste

Light and dark [vim-taste](https://github.com/jordwalke/vim-taste) themes for
[Rex](https://www.superlogical.com/rex).

![Taste dark and light color palettes](assets/palette.svg)

## Install

With Rex running:

```sh
git clone https://github.com/anmonteiro/rex-taste.git
cd rex-taste
rex do client.theme.import path="$PWD/themes/Taste Light.ghostty"
rex do client.theme.import path="$PWD/themes/Taste.ghostty"
```

Or select the files through **Settings > Themes > Import Theme**.
Use **Taste** for Dark Mode and **Taste Light** for Light Mode.

Rex stores a copy of each theme. After updating this checkout, import them again.

## Colors

The dark theme uses vim-taste's
[Kitty palette](https://github.com/jordwalke/vim-taste/blob/3d2990876be923856b539d509a8d83d2ca447760/terminals/kitty.conf).
The light theme uses its light Vim colors, with darker ANSI accents for
readability. Both keep the standard xterm colors 16–255.

## Credits

Based on vim-taste by Jordan Walke, with colors from the
[elementary OS palette](https://elementary.io/brand).

[MIT license](LICENSE).
