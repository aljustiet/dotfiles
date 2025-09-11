# Suffix aliases
# alias -s sh=nvim
alias -s txt=nvim
alias -s html=nvim
alias -s conf=nvim

# Aliases
alias cfn="nvim ~/.config/newsboat/config"
alias cfu="nvim ~/.config/newsboat/urls"
alias nb=newsboat
alias lc=leetcode
alias rfs="flatpak run --command=sh"
alias hs=hyprshade
alias lpbd="expac --timefmt='%Y-%m-%d %T' '%l %n' | sort"
alias nlf="nvim ~/.config/lf/lfrc"
alias p="doas pacman"
alias hwp="pacman -Qq | wc -l"
alias e=\$EDITOR
alias edit=\$EDITOR
alias nano=\$EDITOR
alias wl="wl-screenrec --codec avc --low-power=off"
alias pm=pulsemixer
alias am=alsamixer
alias ef="nvim ~/.config/foot/foot.ini"
alias rsn="pkill swaync && hde swaync"
alias sc=systemctl
alias jc=journalctl
alias iao="cat /sys/class/power_supply/AC/online"
alias ars="command doas mount -t tmpfs -o size=4G -m tmpfs"
alias ts="doas timeshift"
alias timeshift="doas timeshift"
# alias am=appman
alias ip="ip -c=always"
alias shst="nohup swayimg ~/Documents/School/Timetable.png 2>/dev/null 1>/dev/null &"
alias rs="rib scrcpy --fullscreen --keyboard=uhid --stay-awake --window-title Honor --no-mouse-hover --no-audio"
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
#df () {
#  command df -x tmpfs -x efivarfs -h | rg -v -e "dev.*7\.2G"
#}
alias umount="doas umount"
alias btrfs="doas btrfs"
alias lofi="rmib 'https://www.youtube.com/watch?v=jfKfPfyJRdk'"

alias z=cd
alias grep="grep --color=always"
alias diff="diff --color=always"
alias timg="timg -C -U --threads=16"

alias hlo="hyprctl dispatch exit"
alias tree="tree -C"

alias stutus="systemctl --user status"
alias nka="nvim ~/.config/kitty/kitty.conf"
alias nt="notify-send 'Text' 'This is a text' "
alias pk=pkill
# rs() {
#   pkill solaar
#   hyprctl dispatcher exec "solaar -w hide"
# }

alias dbfu="doas btrfs filesystem usage /"
alias sl="sl -a -d -e -c -G -5"

alias nethogs="nethogs -v 3 -b"
alias yay=paru
alias csap="makepkg -do --skippgpcheck" # clone source of AUR package
alias dd1="dust -d1"

alias pacgraph="pacgraph --svg --top=blue --dep=red"
alias gliol="git log --oneline"
alias cpaif="cat /proc/acpi/ibm/fan"
alias nk="\$EDITOR ~/.dotfiles/Keyboard-Remapping/kanata/config.kbd"

alias kg="killall gammastep"
alias nf="nvim ~/.config/fish/config.fish"
alias kee="pkill -f easyeffects"

alias yas="paru -Sua"
alias hc="hyprctl clients"
alias rt="radeontop --color"

alias dl="echo 0 | doas tee /sys/class/leds/*/brightness"
alias cm="command"
alias np="doas nvim /etc/pacman.conf"
alias npa="nvim ~/.config/paru/paru.conf"
alias hde="hyprctl dispatcher exec"

alias watch="watch --color --interval 1 --no-title"
alias kl="pkill -f /usr/lib/librewolf/librewolf"
alias kf="pkill -f /usr/lib/firefox/firefox"
alias hree="niri msg action spawn -- 'sh' '-c' 'easyeffects --gapplication-service'"

#alias ssoa="adb shell sh /storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh"
alias ssoa="adb shell /data/app/~~EOh7a9xbXguULq9tbHCr3A==/moe.shizuku.privileged.api-7CGqOIF4ejSauvhdJTP_Bw==/lib/arm64/libshizuku.so"
alias tokei="tokei --sort code"
alias ma="doas mount -a"
alias uma="doas umount /mnt/hdd /mnt/usb"

ub() {
  unbuffer $@ | bat
}

# alias ub="unbuffer"
alias zathura="zathura -l error"
alias za="zathura -l error"
alias mount="doas mount"
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
alias vpl="bat --pager='less -F -X -R +G' /var/log/pacman.log"
alias i="doas pacman -S --noconfirm"
alias r="doas pacman -Rns --noconfirm"
alias sip="paru -Si" # Sync information about package
alias dip="pacman -Qi" # Database information about package
vpf() {
  unbuffer pacman -Fl $1 | bat
}
clean() {
  paru -Sc
  pacman -Qttdq | pacman -Rns -
  pacman -Qqd | pacman -Rsu -
  flatpak remove --unused
}
cap() {
  for package in "$@"; do
    case $package in
      aur)
        git clone ssh://aur@aur.archlinux.org/$2.git
        ;;
      arch)
        git clone https://gitlab.archlinux.org/archlinux/packaging/packages/$2.git
        ;;
      *)
        echo "Unknown argument: $package"
        ;;
    esac
  done
}

# NetworkManager
alias ndwc="nmcli device wifi connect"
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
alias nh="\$EDITOR ~/.config/hypr/hyprland.conf"
alias nhi="\$EDITOR ~/.config/hypr/input.conf"
alias nhb="\$EDITOR ~/.config/hypr/binds.conf"
alias nhg="\$EDITOR ~/.config/hypr/general.conf"
alias nhx="\$EDITOR ~/.config/hypr/xwayland.conf"
alias nhd="\$EDITOR ~/.config/hypr/decorations.conf"
alias nhl="\$EDITOR ~/.config/hypr/layout.conf"
alias nhm="\$EDITOR ~/.config/hypr/monitors_vertical.conf"
alias nhw="\$EDITOR ~/.config/hypr/window\ rules.conf"
alias nhe="\$EDITOR ~/.config/hypr/environment.conf"
alias nhs="\$EDITOR ~/.config/hypr/autostart.conf"
alias nz="\$EDITOR ~/.config/zsh/zshrc"
alias eh="\$EDITOR ~/.config/helix/config.toml"

# Git aliases
alias gis="git status"
alias aac="git add . && git commit"
alias gic="git clone"

unalias -m gp 2>/dev/null
gp() {
    for remote in $(git remote); do
        git push $remote
    done
}
