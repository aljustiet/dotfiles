# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone git@github.com:zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load Zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in Powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Essential zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# Autoload completions
autoload -U compinit && compinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keyndings
# bindkey -v
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
bindkey '^H' backward-kill-word

# Shell integrations
eval "$(zoxide init --cmd cd zsh)"

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Aliases
alias rk="doas systemctl restart kanata"
alias ls="ls --color"
alias dbfu="doas btrfs filesystem usage /"
alias sl="sl -a -d -e -c -G -5"

alias nethogs="nethogs -v 3 -b"
alias yay=paru
alias csap="makepkg -do --skippgpcheck" # clone source of AUR package
alias dd1="dust -d1"

alias pacgraph="pacgraph --svg --top=blue --dep=red"
alias gliol="git log --oneline"
alias cpaif="cat /proc/acpi/ibm/fan"
alias nk="nvim ~/.dotfiles/Keyboard-Remapping/kanata.lsp"

alias djfk="doas journalctl -feu kanata"
alias kg="killall gammastep"
alias nf="nvim ~/.config/fish/config.fish"
alias kee="pkill -f easyeffects"

alias yas="paru -Sua"
alias hc="hyprctl clients"
alias kk="doas systemctl stop kanata"
alias rt="radeontop --color"

alias dl="echo 0 | doas tee /sys/class/leds/*/brightness"
alias cm="command"
alias np="nvim ~/.config/paru/paru.conf"
alias hde="hyprctl dispatcher exec"

alias free="free --human"
alias watch="watch --color --interval 1 --no-title"
alias kl="pkill -f /usr/lib/librewolf/librewolf"
alias hree="hyprctl dispatcher exec 'easyeffects --gapplication-service'"

alias ssoa="adb shell sh /storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh"
alias tokei="tokei --sort code"
alias ma="doas mount -a"
alias uma="doas umount /mnt/hdd /mnt/usb"

alias ub="unbuffer"
alias za="zathura"
alias mount="doas mount -o uid=aljustiet,gid=aljustiet"
alias kt="pkill -f telegram-desktop"

alias hi="hyprctl dispatcher exec hypridle"
alias kh="pkill hypridle"
alias ff=fastfetch
alias kw="pkill waybar"

alias rw="hyprctl dispatcher exec waybar"
alias kv="pkill -f 'vesktop.bin --enable-speech-dispatcher --ozone-platform-hint=auto'"
alias kq="pkill -f qbittorrent"
alias klb="pkill -f '/opt/LBRY/lbry --enable-crashpad'"

alias ts="tailscale"

# vnstat() {
#   /usr/bin/vnstat -i enp51s0f4u2
# }

gss() {
  hyprctl dispatcher exec "gammastep -m wayland -O $1"
}

sr() {
  wl-screenrec -f "$@" --codec avc --dri-device /dev/dri/renderD128
}

lla() {
  tar -tf $@ --use-compress-program=lz4
}

rcu() {
  current_dir=$(pwd)
  cd ..
  rm -rf "$current_dir"
}

pib() {
  nohup mpv $@ 2>/dev/null 1>/dev/null &
}

# Pacman
alias pacman="doas pacman"
alias fu="doas pacman -Syu"
alias vpl="bat --pager='less -F -X -R +G' /var/log/pacman.log"
alias i="doas pacman -S --noconfirm"
alias r="doas pacman -R --noconfirm"
alias sip="pacman -Si" # Sync information about package
alias dip="pacman -Qi" # Database information about package
vpf() {
  unbuffer pacman -Fl $1 | bat
}
clean() {
  pacman -Qttdq | pacman -Rns -
  pacman -Qqd | pacman -Rsu -
}
cap() {
  for package in "$@"; do
    case $package in
      aur)
        git clone ssh://aur@aur.archlinux.org/$2.git
        ;;
      arch)
        git clone git@gitlab.archlinux.org:archlinux/packaging/packages/$2.git
        ;;
      *)
        echo "Unknown argument: $package"
        ;;
    esac
  done
}

# NetworkManager
alias ndwr="nmcli device wifi rescan"
alias ndwl="nmcli device wifi list"
alias nwe="nmcli radio wifi on"
alias nwd="nmcli radio wifi off"

# Quick editing
alias nmpm="nvim ~/.config/mpv/mpv.conf"
alias nmpi="nvim ~/.config/mpv/input.conf"

# Mullvad
alias ms="mullvad status"
alias mc="mullvad connect"
alias md="mullvad disconnect"

# Systemd
alias stytus="doas systemctl status"
alias start="doas systemctl start"
alias restart="doas systemctl restart"
alias dr="doas systemctl daemon-reload"

# Reloading
alias rz="source ~/.zshrc"

# Editing
alias nh="nvim ~/.dotfiles/hypr/hyprland.conf"
alias nz="nvim ~/.zshrc"

# Git aliases
alias gis="git status"
alias aac="git add . && git commit"
alias gic="git clone"
gp() {
    for remote in $(git remote); do
        git push $remote
    done
}

# Environment variables
export LESS="--ignore-case --quit-if-one-screen --no-init --RAW-CONTROL-CHARS"
export PATH="$PATH:/home/aljustiet/.local/bin"
export PATH="$PATH:/home/aljustiet/Documents/platform-tools"
export PATH="$PATH:/home/aljustiet/go/bin"
export VISUAL=nvim
export EDITOR=nvim
export XDG_CURRENT_DESKTOP=Hyprland
export PAGER="bat"
export BAT_CONFIG_PATH="/home/aljustiet/.config/bat/bat.conf"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"
export SYSTEMD_PAGER="bat"
export SYSTEMD_PAGERSECURE="false"
