{ pkgs ? import ./nixpkgs {} }:
pkgs.haskell-nix.project {
  src = pkgs.haskell-nix.haskellLib.cleanGit { name = "effects"; src = ./.; };
  compiler-nix-name = "ghc884";
  index-state = "2020-07-28T00:00:00Z";
}
