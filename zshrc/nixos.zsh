alias rebuild="nixos-rebuild switch --flake ~/nix --sudo"
alias en="nvim ~/nix/configuration.nix"
alias rh="home-manager switch --flake ~/nix/home --max-jobs 16"
alias r="nixos-rebuild switch --flake ~/nix --sudo --max-jobs 16"
alias rb="nixos-rebuild boot --flake ~/nix --sudo --max-jobs 16"
alias eh="nvim ~/nix/home/home.nix"
alias ef="nvim ~/nix/flake.nix"
alias ns="nix shell"
uf() {
    nix flake update --flake ~/nix
    nix flake update --flake ~/nix/home
}
cg() {
    sudo nix-collect-garbage -d
    nix-collect-garbage -d
}
