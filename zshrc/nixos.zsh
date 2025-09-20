alias rebuild="nixos-rebuild switch --flake ~/nix --sudo"
alias en="nvim ~/nix/configuration.nix"
alias rh="home-manager switch --flake ~/nix/home-manager/"
alias r="nixos-rebuild switch --flake ~/nix --sudo"
alias eh="nvim ~/nix/home-manager/home.nix"
alias ef="nvim ~/nix/flake.nix"
uf() {
    nix flake update --flake ~/nix
    nix flake update --flake ~/nix/home-manager
}
cg() {
    sudo nix-collect-garbage -d
    nix-collect-garbage -d
}
