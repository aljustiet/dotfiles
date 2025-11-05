alias oe="niri msg action power-off-monitors"
nmas() {
    niri msg action spawn -- "dash" "-c" "$*"
}
alias nv="niri validate"
alias rw="niri msg action spawn -- 'waybar'"
alias nsr="niri-screen-time"
alias nw="niri msg windows"
alias na='niri msg windows | grep "App ID:"'
alias mm="niri msg action move-workspace-to-monitor"
alias mi="niri msg action move-workspace-to-index"
#alias eo='niri msg output eDP-1 on
