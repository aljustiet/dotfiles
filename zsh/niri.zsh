alias oe="niri msg action power-off-monitors"
nmas() {
    niri msg action spawn -- "dash" "-c" "$*"
}
alias nv="niri validate"
alias rw="niri msg action spawn -- 'waybar'"
#alias eo='niri msg output eDP-1 on
