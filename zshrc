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
# zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add in snippets
zinit snippet OMZP::git
zinit snippet OMZP::command-not-found
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux

# Autoload completions
autoload -U compinit && compinit

zinit cdreplay -q

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keybinds
# Vim mode
bindkey -v
bindkey -M vicmd a down-line-or-history
bindkey -M vicmd e up-line-or-history
bindkey -M vicmd i vi-forward-char
bindkey -M visual a down-line-or-history
bindkey -M visual e up-line-or-history
bindkey -M visual i vi-forward-char
bindkey -M visual m vi-delete
bindkey -M vicmd t vi-insert
bindkey -M vicmd s vi-add-next
bindkey -M vicmd m vi-delete-char
bindkey -M vicmd c vi-set-mark
bindkey -M vicmd l vi-backward-word
# bindkey
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
bindkey '^H' backward-kill-word

# Shell integrations

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# Aliases
alias e=$EDITOR
alias edit=$EDITOR
alias wl="wl-screenrec --codec avc --low-power=off"
alias pm=pulsemixer
alias am=alsamixer
alias ef="nvim ~/.config/foot/foot.ini"
alias rsn="pkill swaync && hde swaync"
alias sc=systemctl
alias iao="cat /sys/class/power_supply/AC/online"
alias viu=timg
alias ars="command doas mount -t tmpfs -o size=4G -m tmpfs"
alias ts="doas timeshift"
alias timeshift="doas timeshift"
# alias am=appman
alias ip="ip -c=always"
alias shst="nohup swayimg ~/Documents/School/Timetable.png 2>/dev/null 1>/dev/null &"
alias rs="rib scrcpy --fullscreen --keyboard=uhid --stay-awake --window-title Honor"
alias pkw="pkill wshowkeys"
alias shk="wshowkeys -F \"GoMono Nerd Font 32\" -t 1 -a bottom"
alias lkp="dbus-run-session startplasma-wayland"
alias sps="swapon --show"
alias kb="pkill -f '/usr/lib/electron30/electron --enable-features=UseOzonePlatform --ozone-platform=wayland --enable-features=UseOzonePlatform --ozone-platform=wayland /usr/lib/obsidian/app.asar'"
alias ssp="systemctl suspend"
alias td="termdown"
alias op="rib zathura"
alias oi="rib swayimg"
alias cu=currencyConverter
df () {
  command df -x tmpfs -x efivarfs -h | rg -v -e "dev.*7\.2G"
}
alias umount="doas umount"
alias btrfs="doas btrfs"
alias lofi="rmib 'https://www.youtube.com/watch?v=jfKfPfyJRdk'"

alias z=cd
alias grep="grep --color=always"
alias diff="diff --color=always"
alias timg="timg -C -U --threads=16"

alias hlo="hyprctl dispatch exit"
alias tree="tree -C"
alias pm=pulsemixer

alias stutus="systemctl --user status"
alias nka="nvim ~/.config/kitty/kitty.conf"
alias nt="notify-send 'Text' 'This is a text' "
alias pk=pkill
# rs() {
#   pkill solaar
#   hyprctl dispatcher exec "solaar -w hide"
# }

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
alias np="doas nvim /etc/pacman.conf"
alias npa="nvim ~/.config/paru/paru.conf"
alias hde="hyprctl dispatcher exec"

alias free="free --human --wide"
alias watch="watch --color --interval 1 --no-title"
alias kl="pkill -f /usr/lib/librewolf/librewolf"
alias kf="pkill -f /usr/lib/firefox/firefox"
alias hree="hyprctl dispatcher exec 'easyeffects --gapplication-service'"

alias ssoa="adb shell sh /storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh"
alias tokei="tokei --sort code"
alias scc="scc --sort code"
alias ma="doas mount -a"
alias uma="doas umount /mnt/hdd /mnt/usb"

ub() {
  unbuffer $@ | bat
}

# alias ub="unbuffer"
alias zathura="zathura -l error"
alias za="zathura -l error"
alias mount="doas mount -o uid=aljustiet,gid=aljustiet"
alias kt="pkill -f telegram-desktop"

alias hi="hyprctl dispatcher exec hypridle"
alias kh="pkill hypridle"
alias ff="fastfetch"
alias kw="pkill waybar"

alias rw="hyprctl dispatcher exec waybar"
alias kv="pkill -f 'vesktop.bin --enable-speech-dispatcher --ozone-platform-hint=auto'"
alias kq="pkill -f qbittorrent"
alias klb="pkill -f '/opt/LBRY/lbry --enable-crashpad'"

# alias ts="tailscale"
alias nza="nvim ~/.config/zathura/zathurarc"
alias rh="pkill hypridle && hyprctl dispatcher exec hypridle"
alias ks="pkill -f '/usr/lib/signal-desktop/signal-desktop --enable-features=UseOzonePlatform --ozone-platform=wayland'"

alias lda="doas udevadm info --attribute-walk"
alias nn="nvim ~/.config/nvim/init.lua"
alias oe='hyprctl dispatcher dpms off'
alias eo='hyprctl dispatcher dpms on'


# vnstat() {
#   /usr/bin/vnstat -i enp51s0f4u2
# }

rib() {
  nohup $@ 2>/dev/null >/dev/null &
}

# unalias gss

# gss() {
#   hyprctl dispatcher exec "gammastep -m wayland -O $1"
# }

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

rmib() {
 nohup mpv --no-video --audio-display=no --input-ipc-server=/tmp/mpv-socket $@ 2>/dev/null 1>/dev/null &
}

# Pacman
alias pacman="doas pacman"
alias fu="topgrade"
alias vpl="bat --pager='less -F -X -R +G' /var/log/pacman.log"
alias i="doas pacman -S --noconfirm"
alias r="doas pacman -R --noconfirm"
alias sip="pacman -Si" # Sync information about package
alias dip="pacman -Qi" # Database information about package
vpf() {
  unbuffer pacman -Fl $1 | bat
}
clean() {
  paru -Sc
  paru -Qttdq | paru -Rns -
  paru -Qqd | paru -Rsu -
  flatpak remove --unused
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
alias sturt="systemctl --user start"
alias stop="doas systemctl stop"
alias stup="systemctl --user stop"
alias restart="doas systemctl restart"
alias scu="systemctl --user"
alias ds="doas systemctl"
alias dr="doas systemctl daemon-reload"

# Reloading
alias rz="source ~/.zshrc"

# Editing
alias nh="nvim ~/.config/hypr/hyprland.conf"
alias nhi="nvim ~/.config/hypr/input.conf"
alias nhb="nvim ~/.config/hypr/binds.conf"
alias nhg="nvim ~/.config/hypr/general.conf"
alias nhx="nvim ~/.config/hypr/xwayland.conf"
alias nhd="nvim ~/.config/hypr/decorations.conf"
alias nhl="nvim ~/.config/hypr/layout.conf"
alias nhm="nvim ~/.config/hypr/monitors_vertical.conf"
alias nhw="nvim ~/.config/hypr/window\ rules.conf"
alias nhe="nvim ~/.config/hypr/environment.conf"
alias nhs="nvim ~/.config/hypr/autostart.conf"
alias nz="nvim ~/.zshrc"

# Git aliases
alias gis="git status"
alias aac="git add . && git commit"
alias gic="git clone"
unalias gp
gp() {
    for remote in $(git remote); do
        git push $remote
    done
}

# Path
export PATH="$PATH:/home/aljustiet/.local/bin"
export PATH="$PATH:/home/aljustiet/Documents/platform-tools"
export PATH="$PATH:/home/aljustiet/go/bin"
export PATH="/home/aljustiet/.cargo/bin:$PATH"

# Environment variables
export HYPRSHOTGUN_SCREENSHOTS="/home/aljustiet/Pictures/Screenshots"
export TERM=xterm-256color
export LESS="--ignore-case --quit-if-one-screen --no-init --RAW-CONTROL-CHARS"
export VISUAL=nvim
export EDITOR=nvim
export XDG_CURRENT_DESKTOP=Hyprland
export PAGER="bat"
export BAT_CONFIG_PATH="/home/aljustiet/.config/bat/bat.conf"
export BATSIGNAL_CONFIG="/home/aljustiet/.config/batsignal"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"
export SYSTEMD_PAGER="bat"
export SYSTEMD_PAGERSECURE="false"
autoload bashcompinit
bashcompinit
source "/home/aljustiet/.bash_completion"

eval "$(zoxide init --cmd cd zsh)"
eval "$(fzf --zsh)"
bindkey -r "^[c"
bindkey -r "^T"
autoload bashcompinit
bashcompinit
# source "/home/aljustiet/.local/share/bash-completion/completions/am"
autoload bashcompinit
bashcompinit
# source "/home/aljustiet/.local/share/bash-completion/completions/appman"
