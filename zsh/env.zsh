#export ZDOTDIR=$HOME/.config/zsh
export LANG=C.UTF-8

export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# Path
export PATH=$PATH:/home/aljustiet/Documents/platform-tools
export PATH=$PATH:/home/aljustiet/go/bin
export PATH=/home/aljustiet/.cargo/bin:$PATH
export PATH=/home/aljustiet/.local/bin:$PATH
export PATH=/usr/bin/vendor_perl:$PATH
export PATH=/usr/bin/site_perl:$PATH

# Environment variables
#export TIMEFMT=$'\n================\nCPU\t%P\nuser\t%*U\nsystem\t%*S\ntotal\t%*E'
#export TIMEFMT=$'=============\nUser\t%*U\nSystem\t%*S\nTotal\t%*E'
#export TIMEFMT=$'Kernel:\t    %S\nUser:\t    %U\nTotal:\t    %E\nPercentage: %P'
# Add this to your ~/.zshrc file
export TIMEFMT=$'-----------------------------------
  Total:\t%E
  Program:\t%U
  Kernel:\t%S
  CPU Total:\t%*U'
export HYPRSHOTGUN_SCREENSHOTS=/home/aljustiet/Pictures/Screenshots
export TERM=xterm-256color
export LESS="--ignore-case --quit-if-one-screen --no-init --RAW-CONTROL-CHARS"
export VISUAL=nvim
export EDITOR=nvim
#export XDG_CURRENT_DESKTOP=Hyprland
export PAGER=bat
export BAT_CONFIG_PATH=/home/aljustiet/.config/bat/bat.conf
export TEALDEER_CONFIG_DIR=/home/aljustiet/.config/tealdeer
export BATSIGNAL_CONFIG=/home/aljustiet/.config/batsignal
export SYSTEMD_PAGER="bat"
export SYSTEMD_PAGERSECURE="false"
