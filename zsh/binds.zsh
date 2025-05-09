# Keybinds
# Vim mode
bindkey -v
bindkey -M vicmd a down-line-or-history
bindkey -M vicmd e up-line-or-history
bindkey -M vicmd i vi-forward-char
bindkey -M vicmd 'a' history-substring-search-up
bindkey -M vicmd 'e' history-substring-search-down
bindkey -M visual i vi-forward-char
bindkey -M visual m vi-delete
bindkey -M vicmd t vi-insert
bindkey -M vicmd T vi-insertbol
bindkey -M vicmd s vi-add-next
bindkey -M vicmd S vi-add-eol
bindkey -M vicmd m vi-delete-char
bindkey -M vicmd c vi-set-mark
bindkey -M vicmd l vi-forward-word-end
bindkey -M vicmd L vi-forward-blank-word-end
# bindkey
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^H' backward-kill-word
