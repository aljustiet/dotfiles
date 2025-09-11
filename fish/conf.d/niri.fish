alias oe="niri msg action power-off-monitors"
function nmas
    niri msg action spawn -- "dash" "-c" "$argv"
end
alias nv="niri validate"
alias rw="niri msg action spawn -- 'waybar'"
alias nsr="niri-screen-time"
alias nw="niri msg windows"
alias na='niri msg windows | grep "App ID:"'
#alias eo='niri msg output eDP-1 on
