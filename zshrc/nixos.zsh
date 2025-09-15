alias rebuild="nixos-rebuild switch --flake ~/nix --sudo"
alias en="nvim ~/nix/thinkpad-nixos-configuration.nix"
alias rh="home-manager switch"
alias r="nixos-rebuild switch --flake ~/nix --sudo"
alias eh="nvim ~/.config/home-manager/home.nix"
alias uf="nix flake update --flake ~/nix"
alias ef="nvim ~/nix/flake.nix"
cg() {
    doas nix-collect-garbage -d
    nix-collect-garbage -d
}
