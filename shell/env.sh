# This is for common/generic environment variables, paths etc

# Updates to PATH
export PATH="$PATH:/opt/nvim-linux64/bin" # nvim
export PATH="$PATH:${HOME}/.local/lib/python3.11/site-packages"
export PATH="$PATH:${HOME}/.local/bin"
export PATH="$PATH:${HOME}/.cargo/bin"

# Coloured warnings for GCC
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Format for time
export TIMEFMT=$'\n================\nCPU\t%P\nuser\t%*U\nsystem\t%*S\ntotal\t%*E'

# Setting the GUI as Xserver - needs to be activated on Windows
export DISPLAY=$(grep nameserver /etc/resolv.conf | awk '{print $2}'):0.0

# setting dbus -> needed for Obsidian
sudo service dbus start >/dev/null 2>&1

# # Bash configs
# if [ -n "$BASH_VERSION" ]; then

# fi

# # Zsh-only configs
# if [ -n "$ZSH_VERSION" ]; then
#
# fi
