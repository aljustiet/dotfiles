{ config, pkgs, ... }:

{
  imports = [ <nixpkgs/nixos/modules/installer/cd-dvd/installation-cd-graphical-calamares-gnome.nix> ];
  environment.systemPackages = with pkgs; [
    vim
    neovim
  ];
  services.kanata = {
  enable = true;
  package = (pkgs.kanata-with-cmd.override (old: {
    rustPlatform = old.rustPlatform // {
      buildRustPackage = args: old.rustPlatform.buildRustPackage (args // {
        version = "1.7.0-next";

        src = pkgs.fetchFromGitHub {
          owner = "jtroo";
          repo = "kanata";
          rev = "81c8a322d4cb13a8033bcd0a3ee5b60c676f87df";
          sha256 = "sha256-oQ4FPCuG0A5Mnh8t9Fnn32kTmMuedwr/Lk4K8ocKBYQ=";
        };

        cargoHash = "sha256-ktfWPyNdCsmFESte0shtYPxCQ8VILeTHX6H/VVSZDdg=";
      });
    };
  }));
  keyboards = {
    default.configFile = ./kanata.kbd;
  };
};
}
