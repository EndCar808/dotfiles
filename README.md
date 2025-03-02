# My dotfiles

My dotfiles configurations for my personal and working environments.

This readme is structured so that first are instructions on how use ``stow`` to setup symlinks using the contents of this repo. If you have all the tools contained in this repo, this is all you need to read, followed by the instructions for the `Windows Terminal` app. If you dont use this then please ignore. If one or more of these tools are not installed on your system the rest of the readme contains instructions to install them (in the context of `Ubunutu >= 20.04`) in relative order.

## Setup of dotfiles

Clone the repo to your local. Create a dotfiles back up directory, this is for moving and sotring any existing dotfiles before setting up via `stow`. You must first manually install the neccessary tools - see instructions below for installation. Once everything is installed, `cd` into the dotfiles directory. Then run

```bash
stow {tool}
```

where `{tool}` is the name of the subdirectory containing the configs for the tool it is named after e.g., `stow zsh`. Otherwise you could run

```bash
stow .
```

to install all symlinks to dotfiles.

## Windows Terminal Setup

Download your choice of font from [Nerd Font](https://www.nerdfonts.com/#home). For example, `"CaskaydiaMono Nerd Font Mono"`, click download and extract all files. Type `Win + R` and type `control font` to bring up the font settings in the control panel. Drag and drop all `.ttf` or `.otf` files into the destination. Restart windows terminal app and you should see your newly installed font in the settings.

## Zsh & Oh My Zsh Setup Instructions

This document explains how to install and configure Zsh along with Oh My Zsh, external plugins, and the `exa` command for a better `ls` experience.

### 1. Install Zsh

1. **Update your package list:**

   ```bash
   sudo apt update
    ```

2. **Install Zsh**

   ```bash
   sudo apt install zsh
    ```

### 2. Install Oh My Zsh

Run the following command to install Oh My Zsh:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

**Note:** The installer will create a default `.zshrc` file.

### 3. Clone the following plugins

Oh My Zsh comes with core plugins, but additional functionality requires external plugins. Clone them into your custom plugins directory (``$ZSH_CUSTOM``, typically ``~/.oh-my-zsh/custom``)

Clone the following:

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/fdellwing/zsh-bat.git $ZSH_CUSTOM/plugins/zsh-bat
```

### 4. Install the following theme

Run the following to install a minimal lightweight [theme](https://github.com/jackharrisonsherlock/common) for the command line

```bash
wget -O $ZSH_CUSTOM/themes/common.zsh-theme https://raw.githubusercontent.com/jackharrisonsherlock/common/master/common.zsh-theme
```

## 5. Install `exa`

`exa` is a modern replacement for `ls`

```bash
sudo apt install exa
```

**NOTE:** `exa` requires special icons from [Nerd Font](https://www.nerdfonts.com/#home) to render some of the file icons. If you notice some of the icons don't render correctly you might have to install them.

### 6. Source `.zshrc`

```bash
source ~/.zshrc
```

## `fzf` Setup Instructions

Install `fzf` via git in your `${HOME}` directory. Run the following

```bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

**Note:** The customiztion settings for ``fzf`` rely on `ripgrep` so you must either change or install it.

## `ripgrep` Installation

To install [ripgrep](https://github.com/BurntSushi/ripgrep) run

```bash
sudo apt-get install ripgrep
```

## Installing `nvim`

Install `neovim` with the following

```bash
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt install neovim
```

Then simply use ``stow`` to establish the symlink to the config files. Run `nvim` and the `lazyvim` installer will handle the rest.
