{
  description = "A Nix-flake-based Azure Functions development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs = { self, nixpkgs }:
    let
      allSystems = [
        "aarch64-darwin"
        "aarch64-linux"
      ];

      forAllSystems = f: nixpkgs.lib.genAttrs allSystems (system: f {
        pkgs = import nixpkgs { inherit system; };
      });
    in
    {
      devShells = forAllSystems ({ pkgs }: {
        default = pkgs.mkShell {
          packages = with pkgs; [
            nodejs-18_x
            azure-functions-core-tools
          ];
        };
      });
    };
}
