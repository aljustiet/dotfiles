if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Environment variables
set -gx LESS "--ignore-case --quit-if-one-screen --no-init --RAW-CONTROL-CHARS"
set -gx PATH "$PATH:/home/aljustiet/.local/bin"
set -gx PATH "$PATH:/home/aljustiet/Documents/platform-tools"
set -gx VISUAL nvim
set -gx EDITOR nvim
set -gx XDG_CURRENT_DESKTOP Hyprland
set -gx PAGER "bat"
set -gx BAT_CONFIG_PATH "/home/aljustiet/.config/bat/bat.conf"
set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -gx MANROFFOPT "-c"
set -gx SYSTEMD_PAGER "bat"
set -gx SYSTEMD_PAGERSECURE "false"
# set MERGETOOL vimdiff
# set CALCURSE_EDITOR nvim

# Key bindings
bind \b "backward-kill-word"

# Aliases
alias yay=paru
alias nh="nvim ~/.config/hypr/hyprland.conf"
alias nk="nvim ~/.config/kanata/config.kbd"
alias nf="nvim ~/.config/fish/config.fish"
alias nz="nvim ~/.zshrc"
alias nka="nvim ~/.config/kitty/kitty.conf"
alias rk="doas systemctl restart kanata"
alias ccp="pwd | wl-copy"
alias ssso="doas systemctl start openvpn.service"
alias ssto='doas systemctl stop openvpn.service'
alias mip="/usr/local/bin/myip"
alias myip="/usr/local/bin/myip"
alias l="ls -lah"
alias oe='hyprctl dispatcher dpms off'
alias eo='hyprctl dispatcher dpms on'
alias las="doas systemctl suspend"
alias timg=viu
alias rf="source ~/.config/fish/config.fish"
alias v="nvim"
alias codium="/usr/bin/codium --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform=wayland"
alias rpd="doas pacman -Sy"
alias fu="doas pacman -Syu"
alias i="paru --noconfirm -S"
alias dl="echo 0 | doas tee /sys/class/leds/*/brightness"
alias curious="echo 'Are you curious?'"
alias rd="killall dunst && hyprctl dispatcher exec dunst"
alias nt="notify-send 'Text' 'This is a text' "
alias pm=pacman
# alias sd=doas
alias kd="pkill -f 'Discord --enable-features=UseOzonePlatform --ozone-platform=wayland'"
alias ktu="pkill -f '/opt/tutanota-desktop/tutanota-desktop --enable-features=UseOzonePlatform --ozone-platform=wayland'"
alias kv="pkill -f 'vesktop.bin --enable-speech-dispatcher --ozone-platform-hint=auto'"
alias ks="pkill -f '/usr/lib/signal-desktop/signal-desktop --enable-features=UseOzonePlatform --ozone-platform=wayland'"
alias nwe="nmcli radio wifi on"
alias nwd="nmcli radio wifi off"
alias c="clear"
alias cl="clear"
alias rn="doas systemctl restart NetworkManager"
alias hrw="hyprctl dispatcher exec waybar"
alias kw="killall waybar"
alias kg="killall gammastep"
alias nb="nvim ~/.config/bat/bat.conf"
# alias mp="kill -STOP 2553837"
# alias mc="kill -CONT 2553837"
alias sping="~/.local/bin/sping"
alias stopd="systemctl --user stop docker"
alias startd="systemctl --user stop docker"
alias lc="docker ps -a"
alias start="doas systemctl start"
alias stop="doas systemctl stop"
alias disable="doas systemctl disable"
alias enable="doas systemctl enable"
alias stytus="doas systemctl status"
alias restart="doas systemctl restart"
alias sturt="systemctl --user start"
alias stup="systemctl --user stop"
alias stutus="systemctl --user status"
alias resturt="systemctl --user restart"
alias sfp="pacman -Ss"
alias sfap="yay --aur -Ss"
alias ddo="hyprctl dispatcher dpms off DP-1"
alias edo="hyprctl dispatcher dpms on DP-1"
alias gis="git status"
alias aac="git add . && git commit"
alias gliol="git log --oneline"
alias hree='hyprctl dispatcher exec "easyeffects --gapplication-service &"'
alias ssd="doas systemctl suspend"
alias gss="hyprctl dispatcher exec 'gammastep -m wayland -O $argv'"
alias rt="radeontop --color"
alias radeontop="radeontop --color"
# alias cl="wc -l"
alias kk="doas systemctl stop kanata"
alias dha="hyprctl --batch 'keyword animations:enabled 0'"
alias eha="hyprctl --batch 'keyword animations:enabled 1'"
alias dal="echo 0 | doas tee /sys/class/leds/*/brightness"
alias stor="doas systemctl start tor"
alias stoptor="doas systemctl stop tor"
alias gpgm="git push github main"
alias gpom="git push origin main"
alias gpcm="git push codeberg main"
alias ndwr="nmcli device wifi rescan"
alias nwr="nmcli device wifi rescan"
alias spi="doas pacman -S"
alias spr="doas pacman -Rns"
alias p="pacman"
alias checkout="git checkout"
alias branch="git branch"
alias dd1="dust -d 1"
alias yas="yay -Syu --aur"
alias kl="pkill -f /usr/lib/librewolf/librewolf"
alias hc="hyprctl clients"
alias lda="doas udevadm info --attribute-walk"
alias ald="adb devices"
alias hde="hyprctl dispatcher exec"
alias gp="git push -u github main && git push -u origin main"
alias hs="hyprctl setcursor"
alias kb="pkill -f '/usr/lib/electron30/electron --enable-features=UseOzonePlatform --ozone-platform=wayland --enable-features=UseOzonePlatform --ozone-platform=wayland /usr/lib/obsidian/app.asar'"
alias kt="pkill -f telegram-desktop"
alias ub="unbuffer"
alias ff="fastfetch"
alias kee="pkill -f easyeffects"
alias za="zathura"
alias np="nvim ~/.config/paru/paru.conf"
alias cpaif="cat /proc/acpi/ibm/fan"
alias free="free --human"
alias kq="pkill -f qbittorrent"
alias kh="pkill -f '/usr/lib/jvm/java-21-openjdk//bin/java -XX:MaxRAM=4g --add-opens=javafx.controls/com.sun.javafx.scene.control.behavior=ALL-UNNAMED'"
alias kel="pkill -f '/sbin/python3 /sbin/electrum-ltc'"
alias search="pacman -Ss"
alias r="paru --noconfirm -Rns"
alias mount="doas mount -o uid=aljustiet,gid=aljustiet"
alias umount="doas umount"
alias pacman="doas pacman"
alias djfk="doas journalctl -feu kanata"
alias cb="cargo build"
alias ndwl="nmcli device wifi list"
alias ts="tailscale"
alias gsc="gsettings set org.gnome.desktop.interface cursor-theme \'catppuccin-frappe-sapphire-cursors\'"
alias cdlb="cd ~/.local/bin"
alias ect="crontab -e"
alias ns="nvim ~/.ssh/config"
alias ssoa="adb shell sh /storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh"
alias rw="pkill -f waybar && hde waybar"
alias dr="doas systemctl daemon-reload"
alias ef="doas nvim /etc/fstab"
alias ma="doas mount -a"
alias fwr="expac -S '%r'"
alias s=lsd
alias dnvim="doas nvim"
alias dn="doas nvim"
alias em="doas nvim /etc/makepkg.conf"
alias vpl="bat --pager='less -F -X -R +G' /var/log/pacman.log"
alias bate="bat --pager='less -F -X -R +G'"
alias gfp="git fetch && git pull"
alias cm="command"
alias nd="nvim ~/.config/dunst/dunstrc"
alias rhypridle="pkill -f hypridle && hyprctl dispatcher exec hypridle"
alias ddm="dunstctl set-paused true"
alias dm="dunstctl set-paused false"
alias tree="tree -C"
alias wsh="wiki-search-html"
alias mc="mullvad connect"
alias md="mullvad disconnect"
alias ms="mullvad status"

function ll
  lsd -lh $argv
end

function lla --wraps='tar -tvf  --use-compress-program=lz4' --description 'alias lla=tar -tvf  --use-compress-program=lz4'
  tar -tvf $argv --use-compress-program=lz4
end

function cap --wraps='git clone https://aur.archlinux.org/' --description 'git clone https://aur.archlinux.org/$argv'
  for package in $argv
    git clone https://aur.archlinux.org/$package
  end
end

function rse --description "evtest /dev/input/event$argv | grep --line-buffered 'EV_KEY.*value 1' | sed -n -e 's/.*KEY_\(.*\)), value 1/\1/p'"
  evtest /dev/input/event$argv | grep --line-buffered 'EV_KEY.*value 1' | sed -n -e 's/.*KEY_\(.*\)), value 1/\1/p'
end

function rse --description "evtest /dev/input/event$argv"
  evtest /dev/input/event$argv
end

function pib --description 'nohup $argv 2>/dev/null 1>/dev/null &'
 command nohup mpv $argv 2>/dev/null 1>/dev/null &
end

function rib --description 'nohup $argv 2>/dev/null 1>/dev/null &'
 command nohup $argv 2>/dev/null 1>/dev/null &
end

function rmib --description 'nohup mpv --no-video --audio-display=no --input-ipc-server=/tmp/mpv-socket $argv 2>/dev/null 1>/dev/null &'
 command nohup mpv --no-video --audio-display=no --input-ipc-server=/tmp/mpv-socket $argv 2>/dev/null 1>/dev/null &
end

# function man --description 'alias man="man $argv | bat -l man"'
#  command man $argv | bat -l man
# end

# alias bat="bat -n"
# alias cd=z

# Zoxide
zoxide init fish --cmd cd | source
