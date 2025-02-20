{
    description = "NixOS flake";

    inputs = {
        nixpkgs.url = "nixpkgs/nixos-24.11";
    };

    outputs = { self, nixpkgs,  ...}:
        let 
          lib = nixpkgs.lib;
          system = "x86_64-linux";
    in {
        nixosConfigurations = {
	    nixos = lib.nixosSystem {
                inherit system;
                modules = [./configuration.nix];
            };
        };
    };
}
