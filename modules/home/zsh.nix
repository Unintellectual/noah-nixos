{profile, ...}: {
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    initExtra = ''
      bindkey "\eh" backward-word
      bindkey "\ej" down-line-or-history
      bindkey "\ek" up-line-or-history
      bindkey "\el" forward-word
       if [ -f $HOME/.zshrc-personal ]; then
          source $HOME/.zshrc-personal
        fi
    '';

    shellAliases = {
      sv = "sudo nvim";
      v = "nvim";
      fr = "nh os switch --hostname ${profile}";
      fu = "nh os switch --hostname ${profile} --update";
      ncg = "nix-collect-garbage --delete-old && sudo nix-collect-garbage -d && sudo /run/current-system/bin/switch-to-configuration boot";
      cat = "bat";
      man = "batman";
      l = "eza --icons --group-directories-first -1";
      ll = "eza --icons -a --group-directories-first -1 --no-user --long";
      tree = "eza --icons --tree --group-directories-first";
    };
  };
}
