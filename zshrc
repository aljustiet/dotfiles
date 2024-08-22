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
alias tokei="tokei --sort code"
alias pacman="doas pacman"
sr() {
  wf-recorder -f "$@" -c h264_vaapi -d /dev/dri/by-path/pci-0000:33:00.0-render
}

# Pacman
alias fu="doas pacman -Syu"

# Reloading
alias rz="source ~/.zshrc"

# Editing
alias nh="nvim ~/.dotfiles/hypr/hyprland.conf"
alias nz="nvim ~/.zshrc"

# Git aliases
alias gis="git status"
alias aac="git add . && git commit"
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
