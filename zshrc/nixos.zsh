alias rebuild="nixos-rebuild switch --flake ~/nix --sudo"
alias en="nvim ~/nix/configuration.nix"
alias rh="home-manager switch --flake ~/nix/home/ --verbose"
alias r="nixos-rebuild switch --flake ~/nix --sudo --verbose |& tee ~/nix/logs/nixos-rebuild-$(date +%Y-%m-%d_%H-%M-%S).log"
alias rb="nixos-rebuild boot --flake ~/nix --sudo --verbose |& tee ~/nix/logs/nixos-rebuild-$(date +%Y-%m-%d_%H-%M-%S).log"
alias eh="nvim ~/nix/home/home.nix"
alias ef="nvim ~/nix/flake.nix"
uf() {
    nix flake update --flake ~/nix --verbose
    nix flake update --flake ~/nix/home --verbose
}
cg() {
    sudo nix-collect-garbage -d
    nix-collect-garbage -d
}
