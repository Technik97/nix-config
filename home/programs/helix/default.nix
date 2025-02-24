{ pkgs,  ... }:

{
    programs.helix = {
	enable = true;
	package = pkgs.helix;
    };

    home.file.".config/helix/config.toml".source = ./config.toml;
    home.file.".config/helix/languages.toml".source = ./languages.toml;
}
