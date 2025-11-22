alias oe="niri msg action power-off-monitors"
nmas() {
    niri msg action spawn -- "dash" "-c" "$*"
}
alias nv="niri validate"
alias nsr="niri-screen-time"
alias nw="niri msg windows"
alias na='niri msg windows | grep "App ID:"'
alias mm="niri msg action move-workspace-to-monitor"
alias mi="niri msg action move-workspace-to-index"
alias eb="nvim ~/.config/niri/binds.kdl"
alias enc="nvim ~/.config/niri/config.kdl"
alias rw="pkill waybar && niri msg action spawn -- 'waybar'"
#alias eo='niri msg output eDP-1 on
