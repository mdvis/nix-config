{ config, pkgs, ... }:

{
  home.username = "mdvis";
  home.homeDirectory = "/Users/mdvis";

  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    zsh
    vim
    git
  ];

  home.file = {
    ".zshrc".source = builtins.fetchGit {
      url = "https://github.com/mdvis/myprofile.git";
      rev = "refs/heads/main";
    };
  };

  home.sessionVariables = {
    EDITOR = "vim";
  };

  programs.home-manager.enable = true;
  programs.zsh.enable = true;
  programs.zsh.ohMyZsh.enable = true;
  programs.vim.enable = true;
}
