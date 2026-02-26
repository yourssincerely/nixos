{ ... }:

{
  home.stateVersion = "25.11";

  programs = {
#programs.git.settings.user.email'
    git = {
      enable = true;
      settings = {
        user = {
          email = "rubengoesfreelance@gmail.com";
	  name = "yourssincerely";
	};
	core.editor = "nvim";
	init.defaultBranch = "main";
      };
    };

    ghostty = {
      enable = true;
      enableZshIntegration = true;
    };

    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion = {
        enable = true;
        highlight = "fg=#ff00ff,bg=cyan,bold";
      };
      syntaxHighlighting.enable = true;
      history = {
        size = 10000;
        ignoreAllDups = true;
        ignorePatterns = [
          "rm *"
          "git clone *"
          "ls *"
        ];
      };
      initContent = ''
        amixer -c 0 set Headphone unmute > /dev/null 2>&1
      '';
      oh-my-zsh = {
        enable = true;
        plugins = [
          "git"
          "sudo"
        ];
        theme = "ys";
      };
    };

    ssh = {
      enable = true;
      enableDefaultConfig = false;
      matchBlocks = {
        github = {
          host = "github.com";
          identityFile = "~/.ssh/github";
        };
      };
    };

    fuzzel = {
      enable = true;
    };

    waybar = {
      enable = true;
      systemd.enable = true;
    };
  };

  services = {
    ssh-agent = {
      enable = true;
      enableZshIntegration = true;
    };
  };

  xdg = {
    configFile = {
      "niri/config.kdl".source = ./dotfiles/niri.kdl;
      "ghostty/config".source = ./dotfiles/ghostty;
    };
  };
}
