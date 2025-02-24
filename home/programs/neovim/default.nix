{pkgs, config, lib, ... }:
{
    home.file."./.config/nvim" = {
        source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}.config/nvim"; 
	    recursive = true;
    };	

    home.packages = with pkgs; [
	neovim
        gcc
        cmake
        gnumake
        pkg-config
    ];
}
