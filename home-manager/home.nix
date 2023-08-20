# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)

{ inputs, lib, config, pkgs, font, ... }: 
{
  # You can import other home-manager modules here
  imports = [
    # If you want to use home-manager modules from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModule

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
    ./hyprland.nix
    ./waybar.nix
    ./rofi.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
    (self: super: {
      waybar = super.waybar.overrideAttrs (oldAttrs: {
        mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
      });
    })
      # If you want to use overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = (_: true);
    };
  };

  home = {
    username = "simon";
    homeDirectory = "/home/simon";
  };

  home.file.".config/wallpapers".source = ./wallpapers;

  # Add stuff for your user as you see fit:
  # programs.neovim.enable = true;
  home.packages = with pkgs; [ 
  discord
	pavucontrol
	htop
	rofi-wayland
	waybar
	bat
	mako
	starship
	nodejs_20
	nerdfonts
  font-awesome
  material-icons
	gcc
	gnumake
	python311
	cargo
	unzip
	tree-sitter
	python311Packages.pynvim
	fd
	ripgrep
  swww
  cliphist
  wl-clipboard
  swaylock
  # Language servers
	gopls
	nodePackages.bash-language-server
	marksman
	python311Packages.python-lsp-server
	nodePackages.yaml-language-server
	nil
  nodePackages.javascript-typescript-langserver
  taplo
  ccls
  docker-compose-language-service
  nodePackages.dockerfile-language-server-nodejs
  nodePackages.vscode-json-languageserver
  vimPlugins.nvim-jdtls
  texlab
  lua-language-server
  rust-analyzer
  sqls
  nodePackages.vls
  ];

  programs.alacritty.enable = true;
  programs.alacritty.settings = {
    font = {
      normal = {
        family = "${font} Mono";
        style = "Regular";
      };
      bold = {
        family = "${font} Mono";
        style = "Bold";
      };
      italic = {
        family = "${font} Mono";
        style = "Italic";
      };
      bold_italic = {
        family = "${font} Mono";
        style = "Bold Italic";
      };
      size = 11;
    };
    shell.program = "fish";
    window.opacity = 0.85;
  };

  # Helix (hx) editor
  programs.helix.enable = true;
  programs.helix.themes = {
    custom = {
      "inherits" = "autumn";
      "ui.background" = {};
    };
  };
  programs.helix.settings = {
        theme = "custom";
        editor = {
          true-color = true;
          # bufferline = "multiple";
          cursorline = true;
          whitespace.render = "none";
          indent-guides.render = true;
          indent-guides.character = "|";
          file-picker.hidden = false;
          file-picker.git-ignore = false;
          cursor-shape = {
            insert = "bar";
            normal = "block";
            select = "underline";
          };
          # It's quite helpful, but the placement is a bit annoying
          # editor.lsp.auto-signature-help = false;
          lsp.display-messages = true;
        };
      };

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git = {
    enable = true;
    userName  = "Simon-Boyer";
    userEmail = "si.boyer@hotmail.ca";
  };
  home.file.".config/fish/config.fish".text = ''
fish_add_path ~/.local/bin
'';

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.05";
}
