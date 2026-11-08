{
  description = "Taste light and dark color themes for Rex";

  inputs.nixpkgs.url = "github:nix-ocaml/nix-overlays";

  outputs =
    { nixpkgs, ... }:
    let
      forAllSystems = nixpkgs.lib.genAttrs nixpkgs.lib.systems.flakeExposed;
    in
    {
      packages = forAllSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default =
            pkgs.runCommand "rex-taste"
              {
                meta = {
                  description = "Taste light and dark color themes for Rex";
                  license = nixpkgs.lib.licenses.mit;
                  platforms = nixpkgs.lib.platforms.all;
                };
              }
              ''
                mkdir -p "$out/share/rex/themes"
                cp ${./themes}/*.ghostty "$out/share/rex/themes/"
              '';
        }
      );

      devShells = forAllSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = pkgs.mkShell {
            packages = [
              pkgs.git
              pkgs.python3
              pkgs.nixfmt
            ];
          };
        }
      );

      formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.nixfmt);
    };
}
