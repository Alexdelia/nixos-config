{pkgs, ...}: {
  imports = [
    ./git

    ## shell essentials
    ./eza.nix
    ./zoxide.nix
  ];

  home.packages = with pkgs; [
    # neofetch

    ## shell essentials
    ripgrep
    typos

    ## nix
    nh
    nil
    nix-output-monitor
    alejandra
  ];
}
