source "/home/aljustiet/.local/share/zinit/zinit.git/zinit.zsh"
zinit snippet OMZP::git
unalias gp
gp() {
    git push -u origin
    git push -u github
}
