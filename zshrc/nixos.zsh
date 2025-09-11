alias rebuild="doas nixos-rebuild switch --flake /etc/nixos"
alias en="doas nvim /etc/nixos/thinkpad-nixos-configuration.nix"
alias rh="home-manager switch"
alias r="doas nixos-rebuild switch"
alias eh="nvim ~/.config/home-manager/home.nix"
alias uf="doas nix flake update --flake /etc/nixos"
cg() {
    doas nix-collect-garbage -d
    nix-collect-garbage -d
}
