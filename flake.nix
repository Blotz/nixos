{
  description = "NixOS configuration with flakes";
  inputs.nixos-hardware.url = "github:NixOS/nixos-hardware/master";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";

  outputs = { self, nixpkgs, nixos-hardware }: {
    # replace <your-hostname> with your actual hostname
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      # ...
      modules = [
        # ...
        # add your model from this list: https://github.com/NixOS/nixos-hardware/blob/master/flake.nix
        nixos-hardware.nixosModules.framework
	./configuration.nix
      ];
    };
  };
}
