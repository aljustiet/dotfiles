alias -s txt=nvim html=nvim conf=nvim

alias e=\$EDITOR
alias edit=\$EDITOR
alias nano=\$EDITOR
alias cfn="nvim ~/.config/newsboat/config"
alias cfu="nvim ~/.config/newsboat/urls"
alias nlf="nvim ~/.config/lf/lfrc"
alias nka="nvim ~/.config/kitty/kitty.conf"
alias nf="nvim ~/.config/fish/config.fish"
alias nn="nvim ~/.config/nvim/init.lua"
alias nza="nvim ~/.config/zathura/zathurarc"
alias nmpm="nvim ~/.config/mpv/mpv.conf"
alias nmpi="nvim ~/.config/mpv/input.conf"
alias nz="\$EDITOR ~/.config/zsh/zshrc"
alias eh="\$EDITOR ~/.config/helix/config.toml"
alias nk="\$EDITOR ~/.dotfiles/keyboard/kanata/thinkpad.kbd"

alias s=sudo
alias cm=command
alias z=cd
alias pk=pkill
alias grep="grep --color=always"
alias diff="diff --color=always"
alias ip="ip -c=always"
alias tree="tree -C"
alias watch="watch --color --interval 1 --no-title"
alias rz="source ~/.zshrc"
alias ff="fastfetch"
alias mf="microfetch"
alias sl="sl -a -d -e -c -G -5"
alias tokei="tokei --sort code"

alias sc=systemctl
alias jc=journalctl
alias ssp="systemctl suspend"
alias ds="sudo systemctl"
alias dr="sudo systemctl daemon-reload"
alias start="sudo systemctl start"
alias stop="sudo systemctl stop"
alias restart="sudo systemctl restart"
alias stytus="sudo systemctl status"
alias scu="systemctl --user"
alias sturt="systemctl --user start"
alias stup="systemctl --user stop"
alias stutus="systemctl --user status"

alias pm=pulsemixer
alias am=alsamixer
alias rt="radeontop --color"
alias iao="cat /sys/class/power_supply/AC/online"
alias cpaif="cat /proc/acpi/ibm/fan"
alias sps="swapon --show"
alias dl="echo 0 | sudo tee /sys/class/leds/*/brightness"
alias lda="sudo udevadm info --attribute-walk"

alias btrfs="sudo btrfs"
alias dbfu="sudo btrfs filesystem usage /"
alias mount="sudo mount"
alias umount="sudo umount"
alias ma="sudo mount -a"
alias uma="sudo umount /mnt/hdd /mnt/usb"
alias ars="command sudo mount -t tmpfs -o size=4G -m tmpfs"
alias lpbd="expac --timefmt='%Y-%m-%d %T' '%l %n' | sort"
alias csap="makepkg -do --skippgpcheck"
alias pacgraph="pacgraph --svg --top=blue --dep=red"
alias dd1="dust -d1"

alias pkw="pkill wshowkeys"
alias rsn="pkill swaync && hde swaync"
alias kg="killall gammastep"
alias kee="pkill -f easyeffects"
alias kl="pkill -f /usr/lib/librewolf/librewolf"
alias kf="pkill -f /usr/lib/firefox/firefox"
alias kt="pkill -f telegram-desktop"
alias kw="pkill waybar"
alias kq="pkill -f qbittorrent"
alias ks="pkill -f '/usr/lib/signal-desktop/signal-desktop --enable-features=UseOzonePlatform --ozone-platform=wayland'"
alias kv="pkill -f 'vesktop.bin --enable-speech-dispatcher --ozone-platform-hint=auto'"
alias klb="pkill -f '/opt/LBRY/lbry --enable-crashpad'"
alias kb="pkill -f '/usr/lib/electron30/electron --enable-features=UseOzonePlatform --ozone-platform=wayland --enable-features=UseOzonePlatform --ozone-platform=wayland /usr/lib/obsidian/app.asar'"

alias gis="git status"
alias gic="git clone"
alias gliol="git log --oneline"
alias aac="git add . && git commit"

alias nethogs="nethogs -v 3 -b"
alias ndwl="nmcli device wifi list"
alias ndwc="nmcli device wifi connect"
alias ndwr="nmcli device wifi rescan"
alias nwe="nmcli radio wifi on"
alias nwd="nmcli radio wifi off"
alias ts="tailscale"
alias ms="mullvad status"
alias mc="mullvad connect"
alias md="mullvad disconnect"

alias nb=newsboat
alias lc=leetcode
alias td="termdown"
alias cu=currencyConverter
alias nt="notify-send 'Text' 'This is a text' "
alias zathura="zathura -l error"
alias za="zathura -l error"
alias timg="timg -C -U --threads=16"
alias lkp="dbus-run-session startplasma-wayland"
alias rfs="flatpak run --command=sh"
alias shk="wshowkeys -F \"GoMono Nerd Font 32\" -t 1 -a bottom"
alias wl="wl-screenrec --codec avc --low-power=off"
alias ssoa="adb shell /data/app/~~EOh7a9xbXguULq9tbHCr3A==/moe.shizuku.privileged.api-7CGqOIF4ejSauvhdJTP_Bw==/lib/arm64/libshizuku.so"
alias hree="niri msg action spawn -- 'sh' '-c' 'easyeffects --gapplication-service'"
alias shst="nohup swayimg ~/Documents/School/Timetable.png >/dev/null 2>&1 &"
alias op="rib zathura"
alias oi="rib swayimg"
alias rs="rib scrcpy --render-driver=opengl --video-encoder=c2.qti.avc.encoder --keyboard=uhid --stay-awake --window-title Honor --no-mouse-hover --no-audio --fullscreen"
alias lofi="rmib 'https://www.youtube.com/watch?v=jfKfPfyJRdk'"

ub() {
  unbuffer "$@" | bat
}

rib() {
  nohup "$@" >/dev/null 2>&1 &
}

pib() {
  nohup mpv "$@" >/dev/null 2>&1 &
}

rmib() {
 nohup mpv --no-video --audio-display=no --input-ipc-server=/tmp/mpv-socket "$@" >/dev/null 2>&1 &
}

sr() {
  wl-screenrec -f "$@" --codec avc --dri-device /dev/dri/renderD128
}

lla() {
  tar -tf "$@" --use-compress-program=lz4
}

rcu() {
  current_dir=$(pwd)
  cd ..
  rm -rf "$current_dir"
}

clean() {
  sudo nh clean all
}

cap() {
  case $1 in
    aur)
      git clone ssh://aur@aur.archlinux.org/"$2".git
      ;;
    arch)
      git clone https://gitlab.archlinux.org/archlinux/packaging/packages/"$2".git
      ;;
    *)
      echo "Unknown argument: $1"
      ;;
  esac
}

ed() {
    nvim ~/Documents/notes/"$(date +%Y-%m-%d.md)"
}

tdmk() {
    niri msg action spawn -- "AyuGram"
    niri msg action spawn -- "vesktop"
    niri msg action spawn -- "keepassxc"
}

ktdmk() {
    pkill "AyuGram"
    kill $(pgrep -o -f Vesktop)
    pkill "keepassxc"
}

alias cpo="wl-paste | oi -"
cv () {
    mpv $(wl-paste)
}
alias nvc="niri msg action spawn -- 'zathura' '/home/aljustiet/Documents/books/social/emotional-intellect/nonviolent-communication/Nonviolent Communication 2015.pdf'"
alias ct="wl-paste | nvim"
cfs () {
    echo level $1 | sudo tee /proc/acpi/ibm/fan
}
