alias rebuild="nixos-rebuild switch --flake ~/nix --sudo"
alias en="nvim ~/nix/configuration.nix"
alias rh='script -q -c "home-manager switch --flake ~/nix/home --max-jobs 16" ~/nix/home/logs/home-manager-$(date +%Y-%m-%d_%H-%M-%S).log'
alias r='script -q -c "nixos-rebuild switch --flake ~/nix --sudo --max-jobs 16" ~/nix/logs/nixos-rebuild-$(date +%Y-%m-%d_%H-%M-%S).log'
alias rb='script -q -c "nixos-rebuild boot --flake ~/nix --sudo --max-jobs 16" ~/nix/logs/nixos-rebuild-$(date +%Y-%m-%d_%H-%M-%S).log'
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
