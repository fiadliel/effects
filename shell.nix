{ pkgs ? import ./nixpkgs {} }:

let
  hsPkgs = import ./default.nix { inherit pkgs; };
in

hsPkgs.shellFor {
  buildInputs = [ pkgs.git ];

  tools = {
    cabal = "3.2.0.0";
  };

  exactDeps = true;
}
