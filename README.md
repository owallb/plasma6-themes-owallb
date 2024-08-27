## Plasma 6 Theme

My plasma 6 theme. Currently only contains a style for the panel items
(`tasks.svgz`). The rest is imported from the system default (commonly Breeze).

Icons-only Task Manager:

![icons-only](images/icons_only.png)

Icon-and-Text Task Manager:

![icons-and-text](images/icons_and_text.png)

Name and other suggestions are welcome :)

## Installing

If you are on Arch Linux I have prepared a PKGBUILD
[here](https://github.com/owallb/PKGBUILD-plasma6-themes-owallb).

Alternatively, you can install it with Make by running one of the following:

1. Install to `/usr`:
   ```shell
   sudo make install
   ```

2. Install to some other place, for example `~/.local`:
   ```shell
   make INSTALL_PREFIX=~/.local install
   ```

## License
BSD-3-Clause, see [LICENSE](LICENSE).
