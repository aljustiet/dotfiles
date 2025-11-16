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
alias lpbd="expac --timefmt='%Y-%m-%d %T' '%l %n' | sort"
alias nlf="nvim ~/.config/lf/lfrc"
alias e=\$EDITOR
alias edit=\$EDITOR
alias nano=\$EDITOR
alias wl="wl-screenrec --codec avc --low-power=off"
alias pm=pulsemixer
alias am=alsamixer
alias rsn="pkill swaync && hde swaync"
alias sc=systemctl
alias jc=journalctl
alias iao="cat /sys/class/power_supply/AC/online"
alias ars="command sudo mount -t tmpfs -o size=4G -m tmpfs"
# alias am=appman
alias ip="ip -c=always"
alias shst="nohup swayimg ~/Documents/School/Timetable.png 2>/dev/null 1>/dev/null &"
alias rs="rib scrcpy --render-driver=opengl --video-encoder=c2.qti.avc.encoder --keyboard=uhid --stay-awake --window-title Honor --no-mouse-hover --no-audio --fullscreen"
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
alias umount="sudo umount"
alias btrfs="sudo btrfs"
alias lofi="rmib 'https://www.youtube.com/watch?v=jfKfPfyJRdk'"

alias z=cd
alias grep="grep --color=always"
alias diff="diff --color=always"
alias timg="timg -C -U --threads=16"

alias tree="tree -C"

alias stutus="systemctl --user status"
alias nka="nvim ~/.config/kitty/kitty.conf"
alias nt="notify-send 'Text' 'This is a text' "
alias pk=pkill

alias dbfu="sudo btrfs filesystem usage /"
alias sl="sl -a -d -e -c -G -5"

alias nethogs="nethogs -v 3 -b"
alias csap="makepkg -do --skippgpcheck" # clone source of AUR package
alias dd1="dust -d1"

alias pacgraph="pacgraph --svg --top=blue --dep=red"
alias gliol="git log --oneline"
alias cpaif="cat /proc/acpi/ibm/fan"
alias nk="\$EDITOR ~/.dotfiles/keyboard/kanata/config.kbd"

alias kg="killall gammastep"
alias nf="nvim ~/.config/fish/config.fish"
alias kee="pkill -f easyeffects"

alias rt="radeontop --color"

alias dl="echo 0 | sudo tee /sys/class/leds/*/brightness"
alias cm="command"

alias watch="watch --color --interval 1 --no-title"
alias kl="pkill -f /usr/lib/librewolf/librewolf"
alias kf="pkill -f /usr/lib/firefox/firefox"
alias hree="niri msg action spawn -- 'sh' '-c' 'easyeffects --gapplication-service'"

#alias ssoa="adb shell sh /storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh"
alias ssoa="adb shell /data/app/~~EOh7a9xbXguULq9tbHCr3A==/moe.shizuku.privileged.api-7CGqOIF4ejSauvhdJTP_Bw==/lib/arm64/libshizuku.so"
alias tokei="tokei --sort code"
alias ma="sudo mount -a"
alias uma="sudo umount /mnt/hdd /mnt/usb"

ub() {
  unbuffer $@ | bat
}

# alias ub="unbuffer"
alias zathura="zathura -l error"
alias za="zathura -l error"
alias mount="sudo mount"
alias kt="pkill -f telegram-desktop"

alias ff="fastfetch"
alias kw="pkill waybar"

alias kv="pkill -f 'vesktop.bin --enable-speech-dispatcher --ozone-platform-hint=auto'"
alias kq="pkill -f qbittorrent"
alias klb="pkill -f '/opt/LBRY/lbry --enable-crashpad'"

# alias ts="tailscale"
alias nza="nvim ~/.config/zathura/zathurarc"
alias ks="pkill -f '/usr/lib/signal-desktop/signal-desktop --enable-features=UseOzonePlatform --ozone-platform=wayland'"

alias lda="sudo udevadm info --attribute-walk"
alias nn="nvim ~/.config/nvim/init.lua"



# vnstat() {
#   /usr/bin/vnstat -i enp51s0f4u2
# }

rib() {
  nohup $@ 2>/dev/null >/dev/null &
}

# unalias gss

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

clean() {
  sudo nh clean all
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
alias stytus="sudo systemctl status"
alias start="sudo systemctl start"
alias sturt="systemctl --user start"
alias stop="sudo systemctl stop"
alias stup="systemctl --user stop"
alias restart="sudo systemctl restart"
alias scu="systemctl --user"
alias ds="sudo systemctl"
alias dr="sudo systemctl daemon-reload"

# Reloading
alias rz="source ~/.zshrc"

# Editing
alias nz="\$EDITOR ~/.config/zsh/zshrc"
alias eh="\$EDITOR ~/.config/helix/config.toml"

# Git aliases
alias gis="git status"
alias aac="git add . && git commit"
alias gic="git clone"
ed() {
    nvim ~/Documents/notes/$(date +%Y-%m-%d.md)
}

alias s=sudo
tdmk() {
    niri msg action spawn -- "AyuGram"
    niri msg action spawn -- "vesktop"
    niri msg action spawn -- "tutanota-desktop" "--no-sandbox"
    niri msg action spawn -- "keepassxc"
}
ktdmk() {
    pkill "AyuGram"
    pkill "electron"
    pkill "tutanota-desktop"
    pkill "keepassxc"
}
