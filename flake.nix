{
  description = "Mój Flak";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    home-manager.url = "github:nix-community/home-manager/release-25.11";
  };
  outputs = { self, nixpkgs, home-manager, ... }:{
    nixosConfigurations."KEMS" = nixpkgs.lib.nixosSystem{
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
        home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.krecikowa = {
            home.username = "krecikowa";
            home.homeDirectory = "/home/krecikowa";
            imports = [ 
              ./home.nix
            ];
          };
        }
      ];
    };
  };
}
