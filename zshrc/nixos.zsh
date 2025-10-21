alias rebuild="nixos-rebuild switch --flake ~/nix --sudo"
alias en="nvim ~/nix/configuration.nix"
alias rh="home-manager switch --flake ~/nix/home/"
alias r="nixos-rebuild switch --flake ~/nix --sudo"
alias eh="nvim ~/nix/home/home.nix"
alias ef="nvim ~/nix/flake.nix"
uf() {
    nix flake update --flake ~/nix
    nix flake update --flake ~/nix/home
}
cg() {
    sudo nix-collect-garbage -d
    nix-collect-garbage -d
}
