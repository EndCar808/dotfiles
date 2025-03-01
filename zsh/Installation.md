# Zsh & Oh My Zsh Setup Instructions

This document explains how to install and configure Zsh along with Oh My Zsh, external plugins, and the `exa` command for a better `ls` experience.

---

## 1. Install Zsh

1. **Update your package list:**

   ```bash
   sudo apt update
    ```

2. **Install Zsh**

   ```bash
   sudo apt install zsh
    ```

## 2. Install Oh My Zsh

Run the following command to install Oh My Zsh:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

**Note:** The installer will create a default `.zshrc` file.

## 3. Clone the following plugins

Oh My Zsh comes with core plugins, but additional functionality requires external plugins. Clone them into your custom plugins directory (``$ZSH_CUSTOM``, typically ``~/.oh-my-zsh/custom``)

Clone the following:

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/fdellwing/zsh-bat.git $ZSH_CUSTOM/plugins/zsh-bat
```

## 4. Install the following theme

Run the following to install a minimal lightweight [theme](https://github.com/jackharrisonsherlock/common) for the command line

```bash
wget -O $ZSH_CUSTOM/themes/common.zsh-theme https://raw.githubusercontent.com/jackharrisonsherlock/common/master/common.zsh-theme
```

## 5. Install `exa`

`exa` is a modern replacement for `ls`

```bash
sudo apt install exa
```

## 6. Source `.zshrc`

```bash
source ~/.zshrc
```
