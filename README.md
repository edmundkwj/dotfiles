<h1>
    <samp>
      Introduction
    </samp>
</h1>

This repository served as my [dotfiles](https://dotfiles.github.io/) managed with `chezmoi`.

> [!NOTE]
> 
> [chezmoi](https://www.chezmoi.io/) is applicable even if the device is not using macOS.

## Pre-requisites
- Homebrew should be installed
- `curl` or `wget` should be installed
- Install `chezmoi` (brew install chezmoi)

## Installation

`setup.sh` will install homebrew and chezmoi to initalize the basic envionment and pull the dotfiles.

Run this command in bash, zsh, or sh:

```shell
if command -v curl >/dev/null 2>&1; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/edmundkwj/dotfiles/main/setup.sh)"
else
  sh -c "$(wget -O- https://raw.githubusercontent.com/edmundkwj/dotfiles/main/setup.sh)"
fi
```

Afterwards, the chezmoi will run the scripts in .chezmoiscripts to install packages via homebrew, you can check Brewfile for the list of packages. 

## Thanks To ...
This repository is heavily inspired by the following article/user:
- [Frictionless Dotfile Management With Chezmoi](https://marcusb.org/posts/2025/01/frictionless-dotfile-management-with-chezmoi/#basicsetup) - installation guide
- [dotfiles management: chezmoi](https://blg.gkr.one/20241107-chezmoi/#138c678a0f698005abbac1574e8661ac) - installation guide
- [driesvints' dotfiles](https://github.com/driesvints/dotfiles) - readme
- [jukrb0x's dotfiles](https://github.com/jukrb0x/dotfiles) - file setup
- [jussapaavo's dotfiles](https://github.com/jussapaavo/dotfiles) - folder structure
- [joelazar's dotfiles](https://github.com/joelazar/dotfiles) - folder structure
- [nijicha's dotfiles](https://github.com/nijicha/dotfiles) - folder structure

Thanks everyone inspiration, guides and excellent code you've provided.