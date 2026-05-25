# nix/modules/nixos.nix — auto-generated from bevy_hanabi.caixa.lisp
# description: "Hanabi GPU particle system for the Bevy game engine"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.bevy_hanabi;
in {
  options.services.bevy_hanabi = {
    enable = lib.mkEnableOption "bevy_hanabi";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.bevy_hanabi or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
